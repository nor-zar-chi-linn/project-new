<?php
namespace App;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;_
use Illuminate\Database\Eloquent\Model;

class User extends Authenticatable
{
   

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
protected $table="users";
    protected $fillable=["email","password"];
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

   
}
