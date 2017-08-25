@extends ('layouts.dashboard')
@section('page_heading','Brand List')

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
            <form role="form" action="index.php/brand_setup" method="post">
                {{ csrf_field() }}

                <div class="form-group">
                    <label>Brand Name:</label>
                    <input class="form-control" type="text" name="name">
                </div>


                <div class="form-group">

                    <input type="submit" class="btn btn-success" value="Save">
                </div>

            </form>

        </div>
    </div>

    <br/><br/>


    @if(count($brand)>0)

    <div class="row">
        <table class="table table-bordered">
            <thead>
                <th>No</th>
                <th>Name</th>
                <th>Edit</th>
                <th>Delete</th>
            </thead>

            <tbody>
                <?php $i=1; ?>
                @foreach($brand as $row)
                <tr>
                    <td>{{ $i }}</td>
                    <td>{{ $row->name }}</td>
                    <td><a class="btn btn-primary announce" data-toggle="modal"
                    data-id="{{ $row->id }}"
                     data-name="{{ $row->name }}">Edit</a></td>
                    <td>
                        <a href="index.php/brand/delete/{{$row->id}}" class="btn btn-danger" onclick="return confirm('Are you sure to delete?');">Delete
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

                    <form role="form" action="index.php/brand/update/{{$row->id}}" method="post">
                        {{ csrf_field() }}

                        <input type="hidden" id="id" name="id">

                        <div class="form-group">
                            <label>Brand Name:</label>
                            <input class="form-control" type="text" name="name" id="name">
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