<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\SoftDeletes;

class Item extends Model
{
    use SoftDeletes;
	protected $table="item";
	protected $fillable=["name","category_id","brand_id","image","price","description"];
}
