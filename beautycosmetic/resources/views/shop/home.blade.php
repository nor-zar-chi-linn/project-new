

@section("title",$title)

<base href="http://local.laravelcosmetic.com/public/" />
@section("menu")

<!-- <li><a class="menu" href="index.php/home">Home</a></li> -->
@foreach($category as $row)
<li><a class="menu" href="index.php/category/{{$row->id}}">{{$row->name}}</a></li>
@endforeach

@stop

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
	<script src="{{ asset('assets/scripts/frontend.js') }}" type="text/javascript"></script>


</head>
<body id="body">

	@include('partials.header')

	<div class="container-fluid" >
	<div id="spacediv"></div>
		<div id="myCarousel" class="carousel slide " data-ride="carousel">
   		 <!-- Indicators -->
	    <ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	      	<li data-target="#myCarousel" data-slide-to="1"></li>
	      	<li data-target="#myCarousel" data-slide-to="2"></li>
	      	<li data-target="#myCarousel" data-slide-to="3"></li>
	    </ol>

    	<!-- Wrapper for slides -->
    	<div class="carousel-inner" role="listbox">
     		 <div class="item active">
        		<!-- <img src="images/slider/4.gif" style="width:1200px;max-height:387px;"> -->
        		 <img src="images/slider/4.gif" style="width:1600px;max-height:448px;"> 
      		</div>

		     <div class="item">
		       <img src="images/slider/2.jpg">
		    </div>
    
    		<div class="item">
       		 	<img src="images/slider/3.jpg">
      		</div>

      		<div class="item">
       		 <img src="images/slider/1.jpg"  >
      		</div>

   		</div>

	    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	    
	    </a>
	    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">

	    </a>
  </div>


<br/><br/>
       
   <!-- Foundation -->
  <div class="row ">
		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/foundation/maybelline1.jpg" alt="maybelline1">
			<br/>
			<h6>Loreal Studio Screts Magic Smooth Souffle Makeup</h6>
			<hr/>
		</div>


		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/foundation/revlon.jpg" alt="revlon">
			<br/>
			<h6>Revlon New Complexion Oil Control Makeup</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/foundation/maybelline.jpg" alt="maybelline">
			<br/>
			<h6>Maybelline Instant Age Rewind The Lifter Makeup</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/foundation/loreal.jpg" alt="loreal">
			<br/>
			<h6>Maybelline Dream Liquid Mousse Foundation</h6>
			<hr/>
		</div>
		
</div>

<br/>

<!-- EyeShadow -->
<div class="row ">
		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/eyeshadow/loreal.jpg" alt="loreal">
			<br/>
			<h6>Loreal Infallible 24Hr Eye Shadow</h6>
			<hr/>
		</div>


		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/eyeshadow/maybelline.jpg" alt="maybelline">
			<br/>
			<h6>Maybelline Eye Shadow 8 Shades Twilight Rays</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/eyeshadow/revlon.jpg" alt="revlon">
			<br/>
			<h6>Revlon colorStay Smoky Shadow Stick</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/eyeshadow/revlon2.jpg" alt="revlon2">
			<br/>
			<h6>Revlon Luxurious Color Perle Eye Shadow</h6>
			<hr/>
		</div>
		
</div>
<br/>

<!-- EyeLiner -->
<div class="row ">
		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/eyeliner/revlon.jpg" alt="revlon">
			<br/>
			<h6>Revlon ColorStay Creme Gel Eye Liner</h6>
			<hr/>
		</div>


		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/eyeliner/maybelline.jpg" alt="maybelline">
			<br/>
			<h6>Maybelline Define-A-Line Eye Liner</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/eyeliner/revlon2.jpg" alt="revlon2">
			<br/>
			<h6>Revlon Bedroom Eyes Powder Liner</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/eyeliner/loreal.jpg" alt="loreal">
			<br/>
			<h6>Loreal HIP Color Truth Cream Eyeliner</h6>
			<hr/>
		</div>
		
</div>
    
<br/>



<!-- Eyebrow -->
<div class="row ">
		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/eyebrow/loreal.jpg" alt="loreal">
			<br/>
			<h6>Loreal Brow Stylist Brow Shaping Duet</h6>
			<hr/>
		</div>


		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/eyebrow/revlon1.jpg" alt="revlon1">
			<br/>
			<h6>Revlon Marble-ous Match Liner/Shadow Duo</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/eyebrow/revlon.jpg" alt="revlon">
			<br/>
			<h6>Revlon Brow Fantasy Pencil & Gel</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/eyebrow/maybelline.jpg" alt="maybelline">
			<br/>
			<h6>Maybelline Eye Studio Brow Pencil</h6>
			<hr/>
		</div>
		
</div>
    
<br/>



<!-- Mascara -->
<div class="row ">
		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/mascara/maybelline.jpg" alt="maybelline">
			<br/>
			<h6>Maybelline Express Mascara</h6>
			<hr/>
		</div>


		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/mascara/revlon.jpg" alt="revlon">
			<br/>
			<h6>Revlon Grow Luscious by Fabulash Mascara</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/mascara/loreal.jpg" alt="loreal">
			<br/>
			<h6>Loreal Waterproof Mascara</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/mascara/maybelline2.jpg" alt="maybelline2">
			<br/>
			<h6>Maybelline Effect Volume Mascara</h6>
			<hr/>
		</div>
		
</div>
    
<br/>


<!-- lipstick -->
<div class="row ">
		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/lipstick/revlon.jpg" alt="revlon">
			<br/>
			<h6>Revlon Colorburst Lacquer Balm</h6>
			<hr/>
		</div>


		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/lipstick/maybelline.jpg" alt="maybelline">
			<br/>
			<h6>Maybelline Color Sensational Lipcolor</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/lipstick/nyx.jpg" alt="nyx">
			<br/>
			<h6>NYX High Voltage Lipstick</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/lipstick/loreal.jpg" alt="loreal">
			<br/>
			<h6>Loreal Colour Riche Lipstick</h6>
			<hr/>
		</div>
		
</div>
    
<br/>



<!-- Nail -->
<div class="row ">
		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/nail/revlon.jpg" alt="revlon">
			<br/>
			<h6>Revlon Brilliant Strength Nail Enamel</h6>
			<hr/>
		</div>


		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/nail/loreal.jpg" alt="loreal">
			<br/>
			<h6>Loreal Extraordinaire Gel-Lacque</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/nail/revlon2.jpg" alt="revlon2">
			<br/>
			<h6>Revlon Nail Art French Mix Duo</h6>
			<hr/>
		</div>

		<div class="col-lg-3 col-md-4 col-xs-6 thumb " >
			<img class="img-responsive" src="images/home/nail/maybelline.jpg" alt="maybelline">
			<br/>
			<h6>Maybelline Salon Expert Nail Color</h6>
			<hr/>
		</div>
		
</div>
    


	</div>



	<footer>
        <div class="container-fluid">
            <div class="row footer" >
                <div class="col-md-12">
                	
                		<h3>Beauty Cosmetics</h3>
                		<h4>Contact Us :</h4>

                		
                			
                			<h5> Nor Zar Chi Linn &nbsp; - +959 421001525 </h5>
                		
                	
                    <h6>Copyright &copy; Your Website 2017</h6>
                </div>
            </div>
        </div>
    </footer>
	

</body>
</html>