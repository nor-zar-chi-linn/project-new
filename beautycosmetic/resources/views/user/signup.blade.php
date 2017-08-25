@extends('layouts.master')

<!DOCTYPE html>
<html>
<head>
	<base href="http://local.laravelcosmetic.com/public/" />
</head>
<body>


@section('content')
<div class="row">
	<div class="col-md-4 col-md-offset-4">
		
		@if(count($errors)>0)
			<div class="alert alert-danger">
			@foreach($errors->all() as $error)
				<p>{{$error}}</p>
			@endforeach
			</div>
		@endif
		<h1>Sign Up</h1>
		<form action="index.php/user/signup" method="post">
		{{ csrf_field() }}
		
			<div class="form-group">
				<label for="name">Name</label>
				<input type="text" id="name" name="name" class="form-control">
			</div>
			<div class="form-group">
				<label for="email">E-mail</label>
				<input type="email" id="email" name="email" class="form-control">
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<input type="password" id="password" name="password" class="form-control">
			</div>
			<button type="submit" class="btn btn-primary">Sign Up</button>
			
			
		</form>
	</div>
</div>
@endsection

</body>
</html>