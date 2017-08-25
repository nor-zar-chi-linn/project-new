@extends ('layouts.dashboard')
@section('page_heading','ManageOrder')

@section('content')
<html>
<head>
    <base href="http://local.laravelcosmetic.com/public/" />
</head>
<body>


<div class="row">
    <table class="table table-bordered">
        <thead>
            <th>No</th>
            <th>Name</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Delievey Address</th>
            <th>Date</th>
            <th>Item</th>
            <th>Qty</th>
            <th>Price</th>
            <th colspan="2">Action</th>
            
        </thead>

        <tbody>
    
           @foreach($orders as $order)
            @if($order->status==0)
            <tr>
            @endif
        @if($order->status==1)
           <tr style="text-decoration: line-through;">
          @endif 
            <td>{{$order->id}}</td>





        <?php
        $order_usersid=$order->users_id;
        foreach($users as $user)
        {
            if($user->id==$order_usersid)
            {
                $users_name=$user->name;
            }
        }
        ?>
        <td>{{ $users_name }}</td>

        
            
            <td>{{$order->phone}}</td>
            
            <td>{{$order->address}}</td>
            <td>{{$order->delivery_address}}</td>
            <td>{{$order->date}}</td>
                                
            <td>
                @foreach($order->cart->items as $item)
                    {{ $item['item']['name'] }} <br/>
                 @endforeach
            </td>

             <td>
                @foreach($order->cart->items as $item)
                    {{ $item['qty'] }} <br/>
                @endforeach
             </td>

            <td>
                @foreach($order->cart->items as $item)
                    {{ $item['price'] }} Ks <br/>
                @endforeach
            </td>

            
            <td><a href="/index.php/admin/notDelivered/{{$order->id}}" class="btn btn-danger">Undo</a></td>
            <td><a href="/index.php/admin/delivered/{{$order->id}}" class="btn btn-success">Delievered</a></td>
           
        </tr>

        @endforeach

    </tbody>

</table>
</div>
@endsection

</body>
</html>