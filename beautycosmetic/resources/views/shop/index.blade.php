@extends('layouts.master')

@section("title",$title)
<base href="http://local.laravelcosmetic.com/public/" />
@section("menu")


@foreach($category as $row)
<li><a class="menu" href="index.php/category/{{$row->id}}">{{$row->name}}</a></li>
@endforeach

@stop



@section('content')
	@if(Session::has('success'))
	<div class="row">
		<div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
			<div id="charge-message" class="alert alert-success">
				{{ Session::get('success') }}
			</div>
		</div>
	</div>
	@endif
	@foreach($items->chunk(3) as $itemChunk)

	<div class="row">
		@foreach($itemChunk as $item)
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail div">
				<br/>
				<img src="images/{{$item['image']}}"   class="img-responsive">
				<div class="caption">
					<h4>
						<?php
						$item_categoryid=$item->category_id;
						foreach($category as $categoryvalue)
						{
							if($categoryvalue->id==$item_categoryid)
							{
								$category_name=$categoryvalue->name;
							}
						}
						?>
						{{$item->name}} ({{$category_name}})<br/>
					</h4>
					<h5>
						<?php
						$item_brandid=$item->brand_id;
						foreach($brand as $brandvalue)
						{
							if($brandvalue->id==$item_brandid)
							{
								$brand_name=$brandvalue->name;
							}
						}
						?>
						Brand : {{$brand_name}}
					</h5>

					
				
					<p class="description">

						{{$item->description}}
					</p>
					<div class="clearfix">
						<div class="pull-left price">{{ $item->price }} Ks</div>
						<a href="index.php/product/add-to-cart/{{$item->id}}" class="btn btn-success pull-right" role="button">Add to Cart</a>
					</div>
				</div>
			</div>
		</div>
		@endforeach

	</div>

	@endforeach


@endsection
