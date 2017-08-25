@extends('layouts.master')

@section('title')
	Beauty Cosemtic 
@endsection


<!DOCTYPE html>
<html>
<head>
  <base href="http://local.laravelcosmetic.com/public/" />

</head>
<body>


@section('content')
	<div class="row">
		<div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3 ">
			<h1>Checkout</h1>
			<h4>Your Order Total: {{ $total }} Ks</h4>
			<form action="index.php/checkout" method="post" id="checkout-form">
				<div class="row">

					

					<div class="col-xs-12">
						<div class="form-group">
							<label for="phone">Phone</label>
							<input type="text" id="phone" class="form-control" name="phone" required>
						</div>
					</div>

					<div class="col-xs-12">
						<div class="form-group">
							<label for="address">Address</label>
							<textarea id="address" rows="5" class="form-control" name="address" required></textarea>
						</div>
					</div>


					<div class="col-xs-12">
						<div class="form-group">
							<label for="address">Delievery Address</label>
							<textarea id="delivery_address" rows="5" class="form-control" name="delivery_address" required></textarea>
						</div>
					</div>


					<div class="col-xs-12">
						
							<div class="form-group">
                                <label>Date</label>
                            
								  <div  class="input-group date" data-date="today" data-date-autoclose="true" data-provide="datepicker" data-date-format="dd-mm-yyyy" >
										<input type="text"  name="date" class="form-control">
										<div class="input-group-addon">
											<span class="glyphicon glyphicon-th"></span>
										</div>
								</div>
							</div>
					</div>


				</div>
				{{ csrf_field() }}
				<button type="submit" class="btn btn-success">Order</button>
			</form>
		</div>
	</div>
@endsection

</body>
</html>

@section('scripts')

@endsection