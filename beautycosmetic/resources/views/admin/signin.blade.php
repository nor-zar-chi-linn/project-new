@extends ('layouts.plane')

<!DOCTYPE html>
<html>
<head>
  <base href="http://local.laravelcosmetic.com/public/" >
</head>
<body>


@section('content')

<div class="row">
  <div class="col-md-4 col-md-offset-4">


@if(count($error)>0)
      <div class="alert alert-danger">
    @foreach($error as $message)
        <p>{{$message}}</p>
      @endforeach
      </div>
    @endif

<h1>Sign In</h1>

    <form action="index.php/admin" method="post">
    {{ csrf_field() }}
      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" class="form-control">
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" class="form-control">
      </div>
      <button type="submit" class="btn btn-primary">Sign In</button>
      
      
    </form>
  </div>
</div>


</body>
</html>