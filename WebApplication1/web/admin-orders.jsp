<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Collapsible sidebar using Bootstrap 4</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/admin/admin_style.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
</head>

<body>
        <%@ include file="admin-sidebar.jsp" %>

          <h2 class="text-center">Orders Table</h2>

            <div class="table-responsive ">
                        <table id="mytable" class="table table-bordred table-striped table-hover">
                           <thead>
                              <th>id</th>
                              <th>Name</th>
                              <th>address</th>
                              <th>phone</th>
                              <th>Total price</th>
                              <th>date</th>
                              
                              <th>State</th>
                              
                              <th>Delete</th>
                           </thead>
                           <tbody>
                             

                              <tr>
                                 <td>{{$info->id}}</td>
                                 <td>{{$info->name}}</td>
                                 <td>{{$info->email}}</td>
                                 <td>{{returnCity($info->id)}}</td>
                                 
                                 <td>{{returnPhone($info->id)}}</td>
                                 <th>Sdsdfddate</th>
                                 <th>Statdsdfcde</th>

                               

                                
                               
                                 <td>
                                    <p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><i class="fas fa-trash-alt"></i></button></p>
                                 </td>
                              </tr>
                             

                           </tbody>
                        </table>
                        <div class="clearfix"></div>
                     </div>


        <%@ include file="admin-footer.jsp" %>

</body>

</html>