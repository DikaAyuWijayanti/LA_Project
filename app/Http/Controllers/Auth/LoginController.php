<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Auth;

class LoginController extends Controller
{
    use AuthenticatesUsers;
    
    public function postLogin(Request $request){
        if(Auth::guard('pengguna')->attempt(['email'=> $request->email, 'password' =>$request->password])){
            return redirect('/admin');
        }elseif(Auth::guard('user')->attempt(['email'=> $request->email, 'password' =>$request->password])){
            return redirect('/home');
        }elseif(Auth::guard('pengrajin')->attempt(['email'=> $request->email, 'password' =>$request->password])){
            return redirect('/pengrajin');
        }elseif(Auth::guard('ketua')->attempt(['email'=> $request->email, 'password' =>$request->password])){
            return redirect('/ketua');
        }
        return redirect('/');
    }

    public function logout(){
       if(Auth::guard('pengguna')->check()){
           Auth::guard('pengguna')->logout();
       }elseif(Auth::guard('user')->check()){
           Auth::guard('user')->logout();
       }elseif(Auth::guard('pengrajin')->check()){
        Auth::guard('pengrajin')->logout();
       }elseif(Auth::guard('ketua')->check()){
        Auth::guard('ketua')->logout(); 
       }
        return redirect ('/');
    }
}