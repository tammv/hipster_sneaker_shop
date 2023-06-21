<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous">

        <title>Add Product</title>
        <link rel="stylesheet" href="styleCrud.css" />
    </head>
    <body>

        <form method="post" action="addProduct">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="card mt-5">
                            <div class="card-header">
                                <h3 style="text-align: center;">Add Products</h3>
                            </div>
                            <div class="card-body">
                                <table class="table">
                                    <tbody>
                                        
                                        <tr>
                                            <th scope="row"><label for="productId"></label></th>
                                            <td></td>
                                            <td>
                                                <input type="hidden" id="productId"
                                                    name="productId"
                                                   
                                                    class="form-control"
                                                    required>
                                            </td>
                                        </tr>
                                        <!-- Product name -->
                                        <tr>
                                            <th scope="row"><label for="name">Name</label></th>
                                            <td></td>
                                            <td>
                                                <input type="text" id="name"
                                                    name="nameParam"
                                                    placeholder="Product's name"
                                                    class="form-control"
                                                    required>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th scope="row"><label for="brand">Brand</label></th>
                                            <td></td>
                                            <td>
                                                <input type="text" id="brand"
                                                    name="brandParam"
                                                    class="form-control"
                                                    required>
                                            </td>
                                        </tr>

                                        <!-- Image upload -->
                                        <tr>
                                            <th scope="row"><label
                                                    for="formFile"
                                                    class="form-label">Image</label></th>
                                            <td></td>
                                            <td>
                                                <input
                                                    class="form-control form-control-sm"
                                                    id="formFile"
                                                    name="formFileParam"
                                                    type="file" required />
                                            </td>
                                        </tr>

                                        <!-- Price -->
                                        <tr>
                                            <th scope="row"><label for="price">Price</label></th>
                                            <td></td>
                                            <td>
                                                <div class="input-group mb-3">
                                                    <span
                                                        class="input-group-text">$</span>
                                                    <input type="text"
                                                        id="price"
                                                        step="0.01"
                                                        name="priceParam"
                                                        class="form-control"
                                                        aria-label="Amount (to the nearest dollar)"
                                                        required>
                                                    <span
                                                        class="input-group-text">.00</span>
                                                </div>
                                            </td>
                                        </tr>

                                        <!-- Description -->
                                        <tr>
                                            <th scope="row"><label
                                                    for="description">Description</label></th>
                                            <td></td>
                                            <td>
                                                <div
                                                    class="md-form mb-4 pink-textarea active-pink-textarea">
                                                    <textarea id="description"
                                                        name="descriptionParam"
                                                        class="md-textarea form-control"
                                                        rows="3" required></textarea>
                                                </div>
                                            </td>
                                        </tr>

                                        <!-- Size -->
                                        <tr>
                                            <th scope="row"><label for="size">Size</label></th>
                                            <td></td>
                                            <td>
                                                <div class="size-select" >
                                                    <label for="size34">
                                                        <span>34</span>
                                                        <input type="number"
                                                            name="34"
                                                            id="size34" min="0"
                                                            required>
                                                    </label>
                                                    <label for="size35">
                                                        <span>35</span>
                                                        <input type="number"
                                                            name="35"
                                                            id="size35" min="0"
                                                            required>
                                                    </label>
                                                    <label for="size36">
                                                        <span>36</span>
                                                        <input type="number"
                                                            name="36"
                                                            id="size36" min="0"
                                                            required>
                                                    </label>
                                                    <label for="size37">
                                                        <span>37</span>
                                                        <input type="number"
                                                            name="37"
                                                            id="size37" min="0"
                                                            required>
                                                    </label>
                                                    <label for="size38">
                                                        <span>38</span>
                                                        <input type="number"
                                                            name="38"
                                                            id="size38" min="0"
                                                            required>
                                                    </label>
                                                    <label for="size39">
                                                        <span>39</span>
                                                        <input type="number"
                                                            name="39"
                                                            id="size39" min="0"
                                                            required>
                                                    </label>
                                                    <label for="size40">
                                                        <span>40</span>
                                                        <input type="number"
                                                            name="40"
                                                            id="size40" min="0"
                                                            required>
                                                    </label>
                                                    <label for="size41">
                                                        <span>41</span>
                                                        <input type="number"
                                                            name="41"
                                                            id="size41" min="0"
                                                            required>
                                                    </label>
                                                    <label for="size42">
                                                        <span>42</span>
                                                        <input type="number"
                                                            name="42"
                                                            id="size42" min="0"
                                                            required>
                                                    </label>
                                                    <label for="size43">
                                                        <span>43</span>
                                                        <input type="number"
                                                            name="43"
                                                            id="size43" min="0"
                                                            required>
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>

                                        <!-- Color -->
                                        <tr>
                                            <th scope="row"><label for="color">Color</label></th>
                                            <td></td>
                                            <td>
                                                <input type="text" id="color"
                                                    name="colorParam"
                                                    class="form-control"
                                                    required>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>

                                <div class="d-flex justify-content-center">
                                    <button
                                        style="background: #1A2945; color: #fff"
                                        type="submit"
                                        class="btn btn-primary rounded-2">Insert
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>Help
            </div>
        </form>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    </body>
</html>
