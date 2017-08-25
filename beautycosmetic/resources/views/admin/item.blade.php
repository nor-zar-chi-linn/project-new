@extends ('layouts.dashboard')
@section('page_heading','Item List')

@section('content')

<html>
<head>
    <base href="http://local.laravelcosmetic.com/public/" />
</head>

<body>

    @foreach($error as $message)
    <div class="row">
        <div class="col-lg-6">
            <div  class="alert alert-danger">

                <p> {{$message}}</p>
                
            </div>
        </div>
    </div>

    @endforeach 




    <div class="row">
        <div class="col-lg-6">

            <form role="form" action="index.php/item_setup" method="post" enctype="multipart/form-data">
                {{ csrf_field() }}

                <div class="form-group">
                    <label>Item Name:</label>
                    <input class="form-control" type="text" name="name">
                </div>



                <div class="form-group">
                  <label for="category_id">Category:</label>
                  <select class="form-control" name="category_id">
                    @foreach($category as $row)
                    <option value="{{ $row->id }}">{{ $row->name }}</option>
                    @endforeach
                </select>

            </div>


            <div class="form-group">
              <label for="brand_id">Brand:</label>
              <select class="form-control" name="brand_id">
                @foreach($brand as $row)
                <option value="{{ $row->id }}">{{ $row->name }}</option>
                @endforeach
            </select>

        </div>

        <div class="form-group">
            <label for="image">Image:</label>
            <input class="form-control" type="file" name="image">
        </div>

        <div class="form-group">
            <label for="price">Price:</label>
            <input class="form-control" type="number" name="price">
        </div>


        <div class="form-group">
          <label for="description">Description:</label>
          <textarea class="form-control" rows="5" name="description"></textarea>
      </div>


      <div class="form-group">

        <input type="submit" class="btn btn-success" value="Save">
    </div>

</form>
</div>
</div>

<br/><br/>

@if(count($item)>0)

<div class="row">
    <table class="table table-bordered">
        <thead>
            <th>No</th>
            <th>Name</th>
            <th>Category</th>
            <th>Brand</th>
            <th>Image</th>
            <th>Price</th>
            <th>Description</th>
            <th>Edit</th>
            <th>Delete</th>
        </thead>

        <tbody>
            <?php $i=1; ?>
            @foreach($item as $row)
            <tr>
                <td>{{ $i }}</td>
                <td>{{ $row->name }}</td>

                <?php
                $item_categoryid=$row->category_id;
                foreach($category as $categoryrow)
                {
                    if($categoryrow->id==$item_categoryid)
                    {
                        $category_categoryname=$categoryrow->name;
                    }
                }
                ?>
                <td>{{$category_categoryname}}</td>

                <?php
                $item_brandid=$row->brand_id;
                foreach($brand as $brandrow)
                {
                    if($brandrow->id==$item_brandid)
                    {
                        $brand_brandname=$brandrow->name;
                    }
                }
                ?>

                <td>{{$brand_brandname}}</td>

                <td><img src="images/{{$row['image']}}" width="150px" height="150px" ></td>
                <td>{{$row->price}}</td>
                <td>{{$row->description}}</td>




                <td><a class="btn btn-primary announce" data-toggle="modal"
                    data-id="{{ $row->id }}"
                    data-name="{{ $row->name }}"

                    data-category_id="{{ $row->category_id }}"
                    data-brand_id="{{ $row->brand_id }}"

                    data-image="{{$row['image']}}"

                    data-price="{{ $row->price }}"
                    data-description="{{ $row->description }}"

                    >Edit</a></td>
                    <td>
                        <a href="index.php/item/delete/{{$row->id}}" class="btn btn-danger" onclick="return confirm('Are you sure to delete?');">Delete
                        </a>
                    </td> 
                </tr>

                <?php $i++; ?>
                @endforeach
            </tbody>


        </table>
    </div>


    <script>

        $(document).ready(function(){
       $(".announce").click(function(){ // Click to only happen on announce links

         $("#id").val($(this).data("id"));
         $("#name").val($(this).data("name"));
         $("#category_id").val($(this).data("category_id"));
         $("#brand_id").val($(this).data("brand_id"));

         var imagepath=$(this).data("image");
         var realpath="/images/" + imagepath;
         $("#showimage").attr("src",realpath);
         $("#price").val($(this).data("price"));
         $("#description").val($(this).data("description"));



    //alert (realpath + " AND Image  : " +imagepath);
    $("#my_modal").modal("show");
});
   });

</script>

<div class="modal" id="my_modal">
  <div class="modal-dialog">
        <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title">Edit Item </h4>
         </div>
            <div class="modal-body">

                <form role="form" action="index.php/item/update/{{$row->id}}" method="post" enctype="multipart/form-data">
                    {{ csrf_field() }}

                    <input type="hidden" id="id" name="id">


                    <div class="form-group">
                        <label>Item Name:</label>
                        <input class="form-control" type="text" name="name" id="name">
                    </div>



                    <div class="form-group">
                      <label for="category_id">Category:</label>
                      <select class="form-control" name="category_id" id="category_id">
                        @foreach($category as $row)
                        <option value="{{ $row->id }}">{{ $row->name }}</option>
                        @endforeach
                    </select>

                    </div>


                        <div class="form-group">
                          <label for="brand_id">Brand:</label>
                          <select class="form-control" name="brand_id" id="brand_id">
                            @foreach($brand as $row)
                            <option value="{{ $row->id }}">{{ $row->name }}</option>
                            @endforeach
                        </select>

                    </div>


                    <div class="form-group">



                        <label for="image" >Image:<img src="" id="showimage"></label>

                        <input class="form-control" type="file" name="image"  >



                    </div>


                    <div class="form-group">
                        <label for="price">Price:</label>
                        <input class="form-control" type="number" name="price" id="price">
                    </div>


                    <div class="form-group">
                      <label for="description">Description:</label>
                      <textarea class="form-control" rows="5" name="description" id="description"></textarea>
                  </div>


                  <div class="form-group">

                    <input type="submit" class="btn btn-success" value="Update">
                </div>

            </form>

            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>

        </div>
    </div>
</div>

@endif
@endsection

</body>
</html>