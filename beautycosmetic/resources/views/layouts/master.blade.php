<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>@yield('title')</title>
	

	<link rel="stylesheet" href="{{ URL::to('../src/css/app.css') }}">
	<link rel="stylesheet" href="{{ asset('assets/stylesheets/styles.css') }}" />
	<script src="{{ asset('assets/scripts/jquery.js') }}" type="text/javascript"></script>


	<link rel="stylesheet" href="{{ asset('assets/stylesheets/bootstrap-datepicker.css') }}" />
	<script src="{{ asset('assets/scripts/bootstrap-datepicker.js') }}" type="text/javascript"></script>


</head>
<body id="body">

	@include('partials.header')

	<div class="container-fluid" >
	<div id="spacediv"></div>
		@yield('content')
	</div>


	
	<script src="{{ asset('assets/scripts/frontend.js') }}" type="text/javascript"></script>


	
</body>
</html>