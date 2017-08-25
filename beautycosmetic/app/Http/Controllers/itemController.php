<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Item;
use App\Category;
use App\Brand;
use Validator;
use DB;

class itemController extends Controller
{
    //
	public function init_setup(Request $request){
		$category=Category::get();
		$brand=Brand::get();
		$item=Item::get();
	
			$data=array(
				"category"=>$category,
				"brand"=>$brand,
				"item"=>$item,
				"error"=>[]
			
				);
		return view('admin.item')->with($data);	
	}

public function setup(Request $request){

		$row_data=$request->all();
	
		
		$rule = 			[
				"name" => "required",
				"price" => "required",
				"image" => "required",
				"description" => "required"
			];

		$custom_message=[
			"name.required" => "please insert name",
			"price.required" => "please insert price",
			"image.required" => "please insert image",
			"description.required" => "please insert description"
		];

		$v=Validator::make($row_data,$rule,$custom_message);
		if($v->fails())
		{
			
			$category=Category::get();
			$brand=Brand::get();
			$item=Item::get();
			
			$data=array(
				"category"=>$category,
				"brand"=>$brand,
				"item"=>$item,
				
				"error"=>$v->errors()->all()
				);
			return view('admin.item')->with($data);

		}
		else
		{

			$item = new Item();
			$item->name = $request->get('name');
			
			//$item->brand_id = 1;
			$item->category_id = $request->get('category_id');
			$item->brand_id = $request->get('brand_id');

			$item->price = $request->get('price');
			$item->description = $request->get('description');

			$destination = 'images/'; // your upload folder
			$image       = $request->file('image');
			//dd($image);
			$filename    = $image->getClientOriginalName(); // get the filename
			//dd($filename);

			$image->move($destination, $filename); 
			
			$item->image = $filename;
			$item->save();

			
			return $this->init_setup($request);
		}

	}

	public function delete(Request $request,$id)
	{
		DB::table('item')->where("id","=",$id)->delete();
		$item=Item::get();
		$category=Category::get();
		$brand=Brand::get();

			$data=array(

				"item"=>$item,
				"category"=>$category,
				"brand"=>$brand,
				"error"=>[]
			
				);

		return view('admin.item')->with($data);
	}

	public function update(Request $request,$id)
	{


		$id=$request->input('id');
		$name = $request->input('name');
		$category_id = $request->input('category_id');
		$brand_id = $request->input('brand_id');
		$price = $request->input('price');
		$description = $request->input('description');



		$destination = 'images/';
		$edit_images= $request->file('image');

		if($edit_images!=null)
		{


		$filename= $edit_images->getClientOriginalName(); 
		$edit_images->move($destination, $filename); 
			DB::table('item')->where("id",$id)->update(array("name"=>$name,"category_id"=>$category_id,"brand_id"=>$brand_id,'image'=>$filename,"price"=>$price,"description"=>$description ));
		}

		else{

			DB::table('item')->where("id",$id)->update(array("name"=>$name,"category_id"=>$category_id,"brand_id"=>$brand_id,"price"=>$price,"description"=>$description ));
		}
		
		
		
		$item=Item::get();
		$brand=Brand::get();
		$category=Category::get();

			$data=array(

				"item"=>$item,
				"category"=>$category,
				"brand"=>$brand,
		
				"error"=>[]
				);
		return view('admin.item')->with($data);
		
	}

	
}
