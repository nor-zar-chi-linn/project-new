@extends('layouts.plane')

@section('body')
 <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php/category/setup">Beauty Cosmetic Admin</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                  
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        
                        <li><a href="index.php/admin/logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        
                        
                         <li>
                            <a href="/index.php/category_setup"><i class="fa fa-table fa-fw"></i> Category</a>
                        </li>
                        <li>
                            <a href="/index.php/brand_setup"><i class="fa fa-table fa-fw"></i> Brand</a>
                        </li>

                        <li>
                            <a href="/index.php/item_setup"><i class="fa fa-table fa-fw"></i> Item</a>
                        </li>

                        <li>
                            <a href="/index.php/admin/manageorder"><i class="fa fa-table fa-fw"></i> Manage Order</a>
                        </li>
                        <li>
                            <a href="/index.php/admin/report"><i class="fa fa-table fa-fw"></i>Order Report</a>
                        </li>

                        
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
			 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">@yield('page_heading')</h1>
                </div>
                <!-- /.col-lg-12 -->
           </div>
			<div class="row">  
				@yield('content')

            </div>
            <!-- /#page-wrapper -->
        </div>
    </div>
@stop

