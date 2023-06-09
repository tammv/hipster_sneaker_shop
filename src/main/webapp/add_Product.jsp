<%-- 
    Document   : add_Product
    Created on : Jun 8, 2023, 5:52:48 PM
    Author     : ASUS
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Add Product</title>
    <link rel="stylesheet" href="css/styleCrud.css"/>
</head>
<body>

<form action="" method="post">
    <div class="container">
        <div class="row ">
            
            <div class="col-7 mx-auto ">
<div class="coverform">
                <div class="card mt-5  ">
                    <div class="card-header ">
                        <h3 style="text-align: center; ">Add Products</h3>
                    </div>
                </div>

                <div class="card-body ">
                    <table class="table" style=>
                        <thead>
                        <tr>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row"><label for="id">ID</label></th>
                            <td></td>
                            <td> <input type="number" id="id" name="idParam" placeholder="Product's ID" class="input-group"></td>
                        </tr>


                        <tr>
                            <th scope="row"><label for="name">Name</label></th>
                            <td></td>
                            <td> <input type="text" id="name" name="nameParam" placeholder="Student's name" class="input-group"></td>
                        </tr>

                        <tr>
                            <th scope="row"><label for="gender">Gender</label></th>
                            <td></td>
                            <td>
                                <select name="selectParam" id="gender" class="form-select">
                                    <option value="0">Female</option>
                                    <option value="1">Male</option>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <th scope="row"><label for="dob">ID</label></th>
                            <td></td>
                            <td> <input name="dobParam" type="date" id="dob" placeholder="Student's ID" class="input-group"></td>
                        </tr>

                        </tbody>
                    </table>

                    <div>
                        <button type="submit" class="btn-primary rounded-2 ">Insert</button>
                    </div>
                </div>
            </div>
         </div>
        </div>

    </div>
</form>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>