<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Records With ORM</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.8/css/dataTables.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.8/css/dataTables.bootstrap5.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Records</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" id="add">Add</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">##</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="m-3 border p-2">
        <button class="btn btn-success btn-sm" id="get_rows">Get Rows</button>
        <button class="btn btn-success btn-sm" id="rows_sorted">Rows Sorted</button>
        <button class="btn btn-success btn-sm" id="rows_like">Rows where in Like </button>
        <button class="btn btn-success btn-sm" id="distinct_row">Distinct Row </button>
        <button class="btn btn-success btn-sm" id="single_row">Single Row </button>
        <button class="btn btn-success btn-sm" id="total_row">Total Count </button>
        <button type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">Insert Row</button>
        <button class="btn btn-success btn-sm" id="find_by_id"> Find By Id </button>
        <button class="btn btn-success btn-sm" id="check_avaibility">Check Avaibility </button>
        <button class="btn btn-success btn-sm" id="delete_record"> Delete Record </button>
        <button class="btn btn-success btn-sm" id="where_between"> Where Between </button>



        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Register Customer</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form  id="myform" method="post">
                            <input type="hidden" name="id" id="id" value="">
                            <div class="mb-3">
                                <input type="text" name="name" id="name" class="form-control" value=""  placeholder="Name">
                            </div>
                            <div class="mb-3">
                                <input type="email" name="email" id="email" class="form-control" value="" placeholder="Email">
                            </div>
                            <div class="mb-3">
                                <input type="text" name="phone" id="phone" class="form-control" value="" placeholder="Phone">
                            </div>
                            <div class="mb-3">
                                <input type="text" name="address" id="address" class="form-control" value="" placeholder="Address">
                            </div>
                            <div class="d-grid">
                            <input type="submit" id="submit" name="submit" class="btn btn-primary" value="Submit">
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="container">


        <h4 id="heading">Record of Customers</h4>
        <div>
            <table id="mytable" class="table table-striped bordered">
                <thead>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th id="edit_column">Action</th>
                </thead>
                <tbody id="result">

                </tbody>
            </table>
        </div>


    </div>
    <script src="https://cdn.datatables.net/2.1.8/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/2.1.8/js/dataTables.bootstrap5.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="app.js"></script>

</body>

</html>