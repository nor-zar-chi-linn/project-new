<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Category;
use Validator;

use DB;
use App\Users;

class categoryController extends Controller
{

    
	public function init_setup(Request $request){
		$category=Category::get();

			$data=array(

				"category"=>$category,
				"error"=>[]
				);

		return view('admin.category')->with($data);	
	}
	
	public function setup(Request $request){

		$row_data=$request->all();
		
		
		$rule = 			[
				"name" => "required"
			];

		$custom_message=[
			"name.required" => "Please Insert Name"
		];

		$v=Validator::make($row_data,$rule,$custom_message);
		if($v->fails())
		{
			
			$category=Category::get();
	
			$data=array(
				"category"=>$category,
				"error"=>$v->errors()->all()
				);
			return view('admin.category')->with($data);	

		}

		else
		{

			$category = new Category();
			$category->name = $request->get('name');

			$category->save();


			return $this->init_setup($request);
		}


	}

	public function delete(Request $request,$id)
	{
		DB::table('category')->where("id","=",$id)->delete();
		$category=Category::get();

			$data=array(

				"category"=>$category,
				"error"=>[]
				);

		return view('admin.category')->with($data);
	}

	public function update(Request $request,$id)
	{
		
		$id=$request->input('id');
		$name = $request->input('name');

		DB::table('category')->where("id",$id)->update(array("name"=>$name ));

		$category=Category::get();

			$data=array(

				"category"=>$category,
				"error"=>[]
				);
		return view('admin.category')->with($data);
		
	}



	public function getSignin() {


$data=array(
				
				"error"=>[]
			
				);
			return view('admin.signin')->with($data);	

      
    }

    public function postSignin(Request $request) {
     
			$row_data=$request->all();


		$rule = 			[
				"name" => "required",
				"password" => "required",
			];

		$custom_message=[
			"name.required" => "Please Insert Name",
			"password.required" => "Please Insert Password",
		];

		$v=Validator::make($row_data,$rule,$custom_message);
		if($v->fails())
		{
			
			
	
			$data=array(

				"error"=>$v->errors()->all()
				);
			return view('admin.signin')->with($data);	

		}

			else{
				
			$name=$row_data['name'];
			$password=$row_data['password'];

			if($name == "admin" && $password=="1234" )
        		{
        $category=Category::get();

			$data=array(

				"category"=>$category,
				//"signinerror"=>[],
				"error"=>[]
				
				);
        	//return redirect('category/setup')->with($data);
				return view('admin.category')->with($data);
       		 }

       		 elseif($name !="admin" && $password !="1234"){
       		 	?>
       		 		<br/>
					<div class="row">
  						<div class="col-md-4 col-md-offset-4">
  							<div class="alert alert-danger">
  								<p>Please check your name and password</p>
  							</div>
  						</div>
  					</div>
       		 	<?php
       		 	
       		 	$data=array(
		
				"error"=>[]
			
				);
			return view('admin.signin')->with($data);
       		 }



       		 elseif($name !="admin"){
       		 	?>
       		 		<br/>
					<div class="row">
  						<div class="col-md-4 col-md-offset-4">
  							<div class="alert alert-danger">
  								<p>Please check your name</p>
  							</div>
  						</div>
  					</div>
       		 	<?php
       		 	
       		 	$data=array(
			
				"error"=>[]
			
				);
			return view('admin.signin')->with($data);
       		 }
       		 elseif($password != "1234"){
       		 	?>
       		 		<br/>
					<div class="row">
  						<div class="col-md-4 col-md-offset-4">
  							<div class="alert alert-danger">
  								<p>Please check your password</p>
  							</div>
  						</div>
  					</div>
       		 	<?php
       		 	
       		 	$data=array(
				
				"error"=>[]
			
				);
			return view('admin.signin')->with($data);
       		 } 

       		}
		
		    
    }

    public function getLogout()
    {
    	return redirect('admin');
    }

    
}




