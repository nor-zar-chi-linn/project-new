@extends ('layouts.dashboard')
@section('page_heading','OrderList')

@section('content')

<html>
<head>
    <base href="http://local.laravelcosmetic.com/public/" />
</head>
<body>

<div class="row">
    <div class="col-md-12">


     <form role="form" action="index.php/admin/report" method="post">

         {{ csrf_field() }} 


         <div class="form-group col-md-4">
            <label>Start Date</label>

            <div  class="input-group date" data-date="today" data-date-autoclose="true" data-provide="datepicker" data-date-format="yyyy-mm-dd" >
                <input type="text"  name="startdate" class="form-control">
                <div class="input-group-addon">
                    <span class="glyphicon glyphicon-th"></span>
                </div>
            </div>
        </div>

        <div class="form-group col-md-4">
            <label>End Date</label>

            <div  class="input-group date" data-date="today" data-date-autoclose="true" data-provide="datepicker" data-date-format="yyyy-mm-dd" >
                <input type="text"  name="enddate" class="form-control">
                <div class="input-group-addon">
                    <span class="glyphicon glyphicon-th"></span>
                </div>
            </div>
        </div>


        <div class="form-group col-md-4"><br/>
            <input  type="submit" class="btn btn-success" value="Search">

        </div>
    </form>

</div>
</div>

<br/>



@if(Request::isMethod('post'))

<div class="row">
    
        View Report From {{$startdate}} To {{$enddate}}

    <table class="table table-bordered">
        <thead>
            <th>No</th>
            <th>Item</th>
            <th>Qty</th>
            <th>Price</th>
            <th>TotalPrice</th>
        </thead>

        <tbody>

<?php $i=1; ?>
            @for($id=1;$id<=$length;$id++)                 
                @if($itemlists[$id]['qty'] != 0) 
                    <tr>

                            <td>{{$i}}</td>
                            <td>{{ $itemlists[$id]['name'] }}</td>
                            <td>{{ $itemlists[$id]['qty'] }}</td>
                            <td>{{ $itemlists[$id]['price']/$itemlists[$id]['qty'] }}</td>
                            <td>{{ $itemlists[$id]['price'] }}</td>
                    </tr>

                    <?php $i++; ?>
                @endif

            @endfor

                <tr>
                        <td colspan="4" align="right"><strong>Total: </strong></td>
                        <td>{{ $totalPrice }}</td>
                </tr>


        </tbody>

    </table>
</div>

@endif


</body>
</html>

@stop