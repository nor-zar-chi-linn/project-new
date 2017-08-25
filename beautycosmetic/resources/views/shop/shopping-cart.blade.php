@extends('layouts.master')

@section('title')
	Beauty Cosemtic 
@endsection
<!DOCTYPE html>
<html>
<head>
  <base href="http://local.laravelcosmetic.com/public/">
</head>
<body>


@section('content')
	@if(Session::has('cart'))
		<div class="row">
			<div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3 ">
				<ul class="list-group">
					@foreach($items as $item)
						<li class="list-group-item">
							<span class="badge">{{ $item['qty'] }}</span>
							<strong>{{ $item['item']['name']}}</strong>
							<span class="label label-success">{{ $item['price'] }} Ks</span>
							<div class="btn-group">
								<button type="button" class="btn btn-primary btn-xs dropdown-toogle" data-toggle="dropdown">Action <span class="caret"></span></button>
								<ul class="dropdown-menu">
									<li>
										<a href="{{ route('product.reduceByOne', ['id' => $item['item']['id']]) }}">Reduce by 1</a>
									</li>
									<li>
										<a href="{{ route('product.remove', ['id' => $item['item']['id']]) }}">Reduce All</a>
									</li>
									
								</ul>
							</div>
						</li>
					@endforeach
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3 ">
				<strong>Total: {{ $totalPrice }} Ks</strong>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3 ">
				<a href="index.php/checkout" type="button" class="btn btn-success">Checkout</a>
			</div>
		</div>
	@else
		<div class="row">
			<div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3 ">
				<h2>No Items in Cart!</h2>
			</div>
		</div>
	@endif
@endsection
</body>
</html>