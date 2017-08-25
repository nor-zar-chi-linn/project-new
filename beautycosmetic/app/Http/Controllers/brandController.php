<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Brand;
use Validator;

use DB;

class brandController extends Controller
{
    public function init_setup(Request $request){
		$brand=Brand::get();

			$data=array(

				"brand"=>$brand,
				"error"=>[]
				);

		return view('admin.brand')->with($data);	
	}
	public function setup(Request $request){

		$row_data=$request->all();
		
		
		$rule = 			[
				"name" => "required"
			];

		$custom_message=[
			"name.required" => "Please insert name"
		];

		$v=Validator::make($row_data,$rule,$custom_message);
		if($v->fails())
		{
			
			$brand=Brand::get();
		
			$data=array(
				"brand"=>$brand,
				"error"=>$v->errors()->all()
				);
			return view('admin.brand')->with($data);	

		}

		else
		{

			$brand = new Brand();
			$brand->name = $request->get('name');

			$brand->save();


			return $this->init_setup($request);
		}


	}

	public function delete(Request $request,$id)
	{
		DB::table('brand')->where("id","=",$id)->delete();
		$brand=Brand::get();

			$data=array(

				"brand"=>$brand,
				"error"=>[]
				);

		return view('admin.brand')->with($data);
	}


	public function update(Request $request,$id)
	{

		$id=$request->input('id');
		$name = $request->input('name');

		DB::table('brand')->where("id",$id)->update(array("name"=>$name ));

		$brand=Brand::get();

			$data=array(

				"brand"=>$brand,
				"error"=>[]
				);
		return view('admin.brand')->with($data);
		
	}

}
