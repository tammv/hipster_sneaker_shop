<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Add Product</title>
    <meta name="description" content />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="admin/img/favicon.png" />
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet" />
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/bootstrap.min.css" />
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/font-awesome.min.css" />
    <!-- nalika Icon CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/nalika-icon.css" />
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/owl.carousel.css" />
    <link rel="stylesheet" href="admin/css/owl.theme.css" />
    <link rel="stylesheet" href="admin/css/owl.transitions.css" />
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/animate.css" />
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/normalize.css" />
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/meanmenu.min.css" />
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/main.css" />
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/morrisjs/morris.css" />
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/scrollbar/jquery.mCustomScrollbar.min.css" />
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/metisMenu/metisMenu.min.css" />
    <link rel="stylesheet" href="admin/css/metisMenu/metisMenu-vertical.css" />
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/calendar/fullcalendar.min.css" />
    <link rel="stylesheet" href="admin/css/calendar/fullcalendar.print.min.css" />
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="admin/style-add-product.css" />
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/responsive.css" />
    <!-- modernizr JS
		============================================ -->
    <script src="admin/js/vendor/modernizr-2.8.3.min.js"></script>
  </head>

  <body>
 <form action="" method="post">
    <div class="container center-block w-75">
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
                            <th scope="row"><label for="name">Name</label></th>
                            <!--<td></td>-->
                            <td> <input type="text" id="name" name="nameParam" placeholder="Product's name" class="input-group" required></td>
                        </tr>
                        <tr>
                            <th scope="row"><label for="name">Brand</label></th>
                            <!--<td></td>-->
                            <td> <input type="text" id="name" name="nameParam" placeholder="Brand name" class="input-group" required></td>
                        </tr>
<!--                        ---------------------------------------------------------------->
                        
<!--                        ---------------------------------------------------------------->
 <tr>
                            <th scope="row"><label for="description">Description</label></th>
                            <!--<td></td>-->
                            <td> 
                                <div class="md-form mb-2 pink-textarea active-pink-textarea">
                                    <textarea id="description" name="descriptionParam" class="md-textarea form-control" rows="3"  required></textarea>
                                </div>
                            </td>
                        </tr>
                      
<!--                        ---------------------------------------------------------------->
                        <tr>
                            <th scope="row"><label for="formFile" class="form-label">Image</label></th>
                            <!--<td></td>-->
                            <td>
                                <input class="form-control form-control-sm" id="formFile"  name="formFileParam" type="file" required />
                            </td>
                        </tr>
                          <tr>
                            <th scope="row"><label for="price">Price ($)</label></th>
                            <!--<td></td>-->
                            <td>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                            
                             <input type="number" id="price" name="priceParam" class="form-control inline-group" aria-label="Amount (to the nearest dollar)" required>

                            </div>
                            <div class="input-group-append">
                                <span class="input-group-text"></span>
                            </div>
                        </div>
                            </td>
                        </tr>
                       
                        <!--                        ---------------------------------------------------------------->
                        <tr>
                            <th scope="row"><label for="size">Size</label></th>
                            <!--<td></td>-->
                            <td> 
                             <table class="justify-content-center">
 
  <tbody>
    <tr>
     <td>38<input type="checkbox" /></td>   
      <td><input type="number" id="quantity" name="quantityParam" class="input-group"  required></td>
    </tr>
      <tr>
      <td>39<input type="checkbox" /></td>
     
      <td><input type="number" id="quantity" name="quantityParam" class="input-group"  required></td>
    </tr>
     <tr>
      <td>40<input type="checkbox" /></td>
      
      <td><input type="number" id="quantity" name="quantityParam" class="input-group"  required></td>
    </tr>
      <tr>
      <td>41<input type="checkbox" /></td>
      
      <td><input type="number" id="quantity" name="quantityParam" class="input-group"  required></td>
    </tr>
      <tr>
      <td>42<input type="checkbox" /></td>
      
      <td><input type="number" id="quantity" name="quantityParam" class="input-group"  required></td>
    </tr>
      <tr>
      <td>43<input type="checkbox" /></td>
      
      <td><input type="number" id="quantity" name="quantityParam" class="input-group"  required></td>
    </tr>
     <tr>
      <td>44<input type="checkbox" /></td>
      
      <td><input type="number" id="quantity" name="quantityParam" class="input-group"  required></td>
    </tr>
      <tr>
      <td>45<input type="checkbox" /></td>
      
      <td><input type="number" id="quantity" name="quantityParam" class="input-group"  required></td>
    </tr>
  </tbody>
</table>
                            
                            </td>      
                        </tr>
                        <tr>
                            <th></th>
                            <!--<td></td>-->
                            <td> <button style="background: #1A2945; color: #fff" type="submit" class="btn  rounded-2">Add NEW</button>
</td>
                        </tr>
                        
                        </tbody>
                    </table>

                                    
                      

                
                
            </div>
         </div>
        </div>

    </div>
</form>
  <!-- jquery
		============================================ -->
    <script src="admin/js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="admin/js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="admin/js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="admin/js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="admin/js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="admin/js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="admin/js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="admin/js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="admin/js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="admin/js/metisMenu/metisMenu.min.js"></script>
    <script src="admin/js/metisMenu/metisMenu-active.js"></script>
    <!-- morrisjs JS
		============================================ -->
    <script src="admin/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="admin/js/sparkline/jquery.charts-sparkline.js"></script>
    <!-- calendar JS
		============================================ -->
    <script src="admin/js/calendar/moment.min.js"></script>
    <script src="admin/js/calendar/fullcalendar.min.js"></script>
    <script src="admin/js/calendar/fullcalendar-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="admin/js/tab.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="admin/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="admin/js/main.js"></script>
  </body>
</html>
