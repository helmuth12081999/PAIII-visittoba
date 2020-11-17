<?php

namespace Illuminate\Foundation\Auth;

use App\Komunitas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Str;

trait RegistersUsers
{
    use RedirectsUsers;

    /**
     * Show the application registration form.
     *
     * @return \Illuminate\Http\Response
     */
    public function showRegistrationForm($status)
    {
        $komunitas = Komunitas::all();
        return view('auth.register',compact('komunitas','status'));
    }

    /**
     * Handle a registration request for the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        if($request->hasFile('photo')){
            $this->validatorr($request->all())->validate();
            $file = $request->file('photo');
            $filename = time() .'-'. Str::slug($request->name) . '.' . $file->getClientOriginalExtension();

            $file->move('storage/img/member', $filename);
            event(new Registered($user = $this->create($request->all(),$filename)));
        }else{
            $this->validator($request->all())->validate();
            event(new Registered($user = $this->create($request->all())));
        }
        return redirect(route('login'))->withInfo('Silahkan periksa email untuk konfirmasi pendaftaran.');
        return $this->registered($request, $user)
            ?: redirect($this->redirectPath());
    }

    /**
     * Get the guard to be used during registration.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return Auth::guard();
    }

    /**
     * The user has been registered.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  mixed  $user
     * @return mixed
     */
    protected function registered(Request $request, $user)
    {
        //
    }
}
