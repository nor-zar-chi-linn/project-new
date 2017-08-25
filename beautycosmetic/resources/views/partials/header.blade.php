<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
      <br/>
      
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

    <h1 id="title">Beauty Cosmetics</h1>
      <ul class="nav navbar-nav nav">
      <li><a class="menu" href="index.php/home">Home</a></li>
     @yield('menu')
     
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      
         <li>
          <a href="index.php/product/shopping-cart">
            <i class="fa fa-shopping-cart" aria-hidden="true"></i> Shopping Cart
            <span class="badge">{{ Session::has('cart') ? Session::get('cart')->totalQty : '' }}</span>
          </a>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i> User Management <span class="caret"></span></a>
          <ul class="dropdown-menu">
          @if(Auth::check())
            <li><a href="index.php/user/profile">User Profile</a></li>
            
            <li role="separator" class="divider"></li>
            <li><a href="index.php/user/logout">Logout</a></li>
          @else
             <li><a href="index.php/user/signup">Signup</a></li>
            <li><a href="index.php/user/signin">Signin</a></li> 
          @endif

            
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>






