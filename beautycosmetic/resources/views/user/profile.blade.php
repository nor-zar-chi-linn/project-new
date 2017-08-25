@extends('layouts.master')

<!DOCTYPE html>
<html>
<head>
	<base href="http://local.laravelcosmetic.com/public/" />
</head>
<body>

	@section('content')
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<h1>User Profile</h1>
			<hr>
			<h2>My Orders</h2>
			@foreach($orders as $order)
				<div class="panel panel-default">
					<div class="panel-body">
					@if($order->status==0)
					<ul class="list-group">
					@endif
					@if($order->status==1)
						<ul class="list-group" style="text-decoration: line-through;">
					@endif 

 
							@foreach($order->cart->items as $item)
								<li class="list-group-item">
									<span class="badge">{{ $item['price'] }} Ks</span>
									{{ $item['item'] ['name'] }} | {{ $item['qty']  }} Qty | {{ $order['date']  }}
								</li>
							@endforeach
						</ul>
					</div>
					<div class="panel-footer">
						<strong>Total Price: {{ $order->cart->totalPrice }} Ks</strong>
					</div>
				</div>

			@endforeach
		</div>
	</div>
	@endsection

</body>
</html>