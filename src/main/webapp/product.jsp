<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Product</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.png" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/MagnificPopup/magnific-popup.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
    <!--===============================================================================================-->
  </head>
  <body class="animsition">
    <!-- Header -->
    <header class="header-v4">
      <!-- Header desktop -->
      <c:import url="Header.jsp" />
    </header>
    <!-- Cart -->
    <c:import url="Cart.jsp" />

    <!-- Product -->
    <div class="bg0 m-t-23 p-b-140">
      <div class="container">
        <div class="flex-w flex-sb-m p-b-52">
          <div class="flex-w flex-l-m filter-tope-group m-tb-10">
            <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
              All Products
            </button>

            <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".Nike">Nike</button>

            <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".Adidas ">Adidas </button>

            <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".Bitis">Biti's</button>

            <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".Vans">Vans</button>

            <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".Converse ">Converse </button>
          </div>

          <div class="flex-w flex-c-m m-tb-10">
            <div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
              <i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
              <i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
              Filter
            </div>

            <div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
              <i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
              <i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
              Search
            </div>
          </div>

          <!-- Search product -->
          <div class="dis-none panel-search w-full p-t-10 p-b-15">
            <div class="bor8 dis-flex p-l-15">
              <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
                <i class="zmdi zmdi-search"></i>
              </button>

              <input
                class="mtext-107 cl2 size-114 plh2 p-r-15"
                type="text"
                name="search-product"
                placeholder="Search"
              />
            </div>
          </div>

          <!-- Filter -->
          <div class="dis-none panel-filter w-full p-t-10">
            <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
              <div class="filter-col1 p-r-15 p-b-27">
                <div class="mtext-102 cl2 p-b-15">Sort By</div>

                <ul>
                  <li class="p-b-6">
                    <a href="#" class="filter-link stext-106 trans-04"> Default </a>
                  </li>

                  <li class="p-b-6">
                    <a href="#" class="filter-link stext-106 trans-04"> Popularity </a>
                  </li>

                  <li class="p-b-6">
                    <a href="#" class="filter-link stext-106 trans-04"> Average rating </a>
                  </li>

                  <li class="p-b-6">
                    <a href="#" class="filter-link stext-106 trans-04 filter-link-active"> Newness </a>
                  </li>

                  <li class="p-b-6">
                    <a href="#" class="filter-link stext-106 trans-04"> Price: Low to High </a>
                  </li>

                  <li class="p-b-6">
                    <a href="#" class="filter-link stext-106 trans-04"> Price: High to Low </a>
                  </li>
                </ul>
              </div>

              <div class="filter-col2 p-r-15 p-b-27">
                <div class="mtext-102 cl2 p-b-15">Price</div>

                <ul>
                  <li class="p-b-6">
                    <a href="#" class="filter-link stext-106 trans-04 filter-link-active"> All </a>
                  </li>

                  <li class="p-b-6">
                    <a href="#" class="filter-link stext-106 trans-04"> $0.00 - $50.00 </a>
                  </li>

                  <li class="p-b-6">
                    <a href="#" class="filter-link stext-106 trans-04"> $50.00 - $100.00 </a>
                  </li>

                  <li class="p-b-6">
                    <a href="#" class="filter-link stext-106 trans-04"> $100.00 - $150.00 </a>
                  </li>

                  <li class="p-b-6">
                    <a href="#" class="filter-link stext-106 trans-04"> $150.00 - $200.00 </a>
                  </li>

                  <li class="p-b-6">
                    <a href="#" class="filter-link stext-106 trans-04"> $200.00+ </a>
                  </li>
                </ul>
              </div>

              <div class="filter-col4 p-b-27">
                <div class="mtext-102 cl2 p-b-15">Tags</div>

                <div class="flex-w p-t-4 m-r--5">
                  <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                    Fashion
                  </a>

                  <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                    Lifestyle
                  </a>

                  <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                    Denim
                  </a>

                  <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                    Streetstyle
                  </a>

                  <a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                    Crafts
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row isotope-grid">

          <c:forEach items="${listProduct}"  var="product">
            <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${product.brand}">
              <!-- Block2 -->
              <div class="block2">
                <div class="productid d-none">${product.product_id}</div>
                <div class="block2-pic hov-img0">
                  <img src="${product.img}" alt="IMG-PRODUCT" />
  
                  <a
                    href="#"
                    class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"
                  >
                    Quick View
                  </a>
                </div>
  
                <div class="block2-txt flex-w flex-t p-t-14">
                  <div class="block2-txt-child1 flex-col-l">
<<<<<<< HEAD
                    <a href="product-detail.jsp" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                      ${product.product_name}
                    </a>
  
                    <span class="stext-105 cl3"> ${product.profit_price} </span>
=======
                    <a href="detailProduct?product_id=${product.product_id}&profit_price=${product.profit_price}&product_description=${product.prouduct_description}&img=${product.img}&product_name=${product.product_name}&brand=${product.brand}&color=${product.color}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                      ${product.product_name}
                    </a>
  
                    <span class="stext-105 cl3"> ${product.profit_price} $ </span>
>>>>>>> main
                    <span class="description_product d-none">${product.prouduct_description}</span>
                  </div>
  
                  <div class="block2-txt-child2 flex-r p-t-3">
                    <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
                      <img class="icon-heart1 dis-block trans-04" src="images/icons/icon-heart-01.png" alt="ICON" />
                      <img
                        class="icon-heart2 dis-block trans-04 ab-t-l"
                        src="images/icons/icon-heart-02.png"
                        alt="ICON"
                      />
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </c:forEach>

          
        </div>

        <!-- Load more -->
        <div class="flex-c-m flex-w w-full p-t-45">
          <a href="#" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04"> Load More </a>
        </div>
      </div>
    </div>

    <!-- Footer -->
    <footer class="bg3 p-t-75 p-b-32">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-lg-3 p-b-50">
            <h4 class="stext-301 cl0 p-b-30">Categories</h4>

            <ul>
              <li class="p-b-10">
                <a href="#" class="stext-107 cl7 hov-cl1 trans-04">Nike </a>
              </li>

              <li class="p-b-10">
                <a href="#" class="stext-107 cl7 hov-cl1 trans-04"> Adidas </a>
              </li>

              <li class="p-b-10">
                <a href="#" class="stext-107 cl7 hov-cl1 trans-04"> Converse </a>
              </li>

              <li class="p-b-10">
                <a href="#" class="stext-107 cl7 hov-cl1 trans-04"> Ananas</a>
              </li>
              <li class="p-b-10">
                <a href="#" class="stext-107 cl7 hov-cl1 trans-04"> Biti's </a>
              </li>
            </ul>
          </div>

          <div class="col-sm-6 col-lg-3 p-b-50">
            <h4 class="stext-301 cl0 p-b-30">Help</h4>

            <ul>
              <li class="p-b-10">
                <a href="#" class="stext-107 cl7 hov-cl1 trans-04"> Track Order </a>
              </li>

              <li class="p-b-10">
                <a href="#" class="stext-107 cl7 hov-cl1 trans-04"> Shipping </a>
              </li>

              <li class="p-b-10">
                <a href="#" class="stext-107 cl7 hov-cl1 trans-04"> FAQs </a>
              </li>
            </ul>
          </div>

          <div class="col-sm-6 col-lg-3 p-b-50">
            <h4 class="stext-301 cl0 p-b-30">GET IN TOUCH</h4>

            <p class="stext-107 cl7 size-201">
              Any questions? Let us know in store at 8th floor, 379 Ngu Hanh Son Da Nang or call us on
            </p>
            <p>012931233</p>
          </div>
          <div class="col-sm-6 col-lg-3 p-b-50">
            <h4 class="stext-301 cl0 p-b-30">Subscribe</h4>
            <div class="p-t-27">
              <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                <i class="fa-brands fa-facebook"></i>
              </a>

              <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                <i class="fa-brands fa-instagram"></i>
              </a>

              <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                <i class="fa-brands fa-tiktok"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </footer>

    <!-- Back to top -->
    <div class="btn-back-to-top" id="myBtn">
      <span class="symbol-btn-back-to-top">
        <i class="zmdi zmdi-chevron-up"></i>
      </span>
    </div>

    <!-- Modal1 -->
<<<<<<< HEAD
    <div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
      <div class="overlay-modal1 js-hide-modal1"></div>
      <div class="container">
        <div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
          <button class="how-pos3 hov3 trans-04 js-hide-modal1">
            <img src="images/icons/icon-close.png" alt="CLOSE" />
          </button>

          <div class="row">
            <div class="col-md-6 col-lg-7 p-b-30">
              <div class="p-l-25 p-r-30 p-lr-0-lg">
                <div class="wrap-slick3 flex-sb flex-w">
                  <div class="item-slick3" data-thumb="">
                    <div class="wrap-pic-w pos-relative">
                      <img class="prouct_img" src="" alt="IMG-PRODUCT" />
                      <a
                        class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04 expand_img"
                        href=""
                      >
                        <i class="fa fa-expand"></i>
                      </a>
                    </div>
                  </div>

                </div>
              </div>
            </div>

            <div class="col-md-6 col-lg-5 p-b-30">
              <div class="p-r-50 p-t-5 p-lr-0-lg">
                <h4 class="mtext-105 cl2 js-name-detail p-b-14"></h4>

                <span class="mtext-106 cl2"></span>

                <p class="stext-102 cl3 p-t-23">
                 
                </p>

                <!--  -->
                <div class="p-t-33">
                  <div class="flex-w flex-r-m p-b-10">
                    <div class="size-203 flex-c-m respon6">Size</div>

                    <div class="size-204 respon6-next">
                      <div class="rs1-select2 bor8 bg0">
                        <select class="js-select2" name="time" required>
                          <option value="38">Size 38</option>
                          <option value="39">Size 39</option>
                          <option value="40">Size 40</option>
                          <option value="41">Size 41</option>
                          <option value="42">Size 42</option>
                          <option value="43">Size 43</option>
                          <option value="44">Size 44</option>
                          <option value="45">Size 45</option>
                        </select>
                        <div class="dropDownSelect2"></div>
                      </div>
                    </div>
                  </div>

                  <div class="flex-w flex-r-m p-b-10">
                    <div class="size-204 flex-w flex-m respon6-next">
                      <div class="wrap-num-product flex-w m-r-20 m-tb-10">
                        <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                          <i class="fs-16 zmdi zmdi-minus"></i>
                        </div>

                        <input
                          class="mtext-104 cl3 txt-center num-product"
                          type="number"
                          name="num-product"
                          value="1"
                        />

                        <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                          <i class="fs-16 zmdi zmdi-plus"></i>
                        </div>
                      </div>
                      
                      <a href="" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">Add to cart</a>
                      
                      
                    </div>
                  </div>
                </div>

                <!--  -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
=======
    <c:import url="Modal.jsp" />
>>>>>>> main
    <script src="script/product.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <script>
      $(".js-select2").each(function () {
        $(this).select2({
          minimumResultsForSearch: 20,
          dropdownParent: $(this).next(".dropDownSelect2"),
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/slick/slick.min.js"></script>
    <script src="js/slick-custom.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/parallax100/parallax100.js"></script>
    <script>
      $(".parallax100").parallax100();
    </script>
    <!--===============================================================================================-->
    <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
    <script>
      $(".gallery-lb").each(function () {
        // the containers for all your galleries
        $(this).magnificPopup({
          delegate: "a", // the selector for gallery item
          type: "image",
          gallery: {
            enabled: true,
          },
          mainClass: "mfp-fade",
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="vendor/isotope/isotope.pkgd.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/sweetalert/sweetalert.min.js"></script>
    <script>
      $(".js-addwish-b2, .js-addwish-detail").on("click", function (e) {
        e.preventDefault();
      });

      $(".js-addwish-b2").each(function () {
        var nameProduct = $(this).parent().parent().find(".js-name-b2").html();
        $(this).on("click", function () {
          swal(nameProduct, "is added to wishlist !", "success");

          $(this).addClass("js-addedwish-b2");
          $(this).off("click");
        });
      });

      $(".js-addwish-detail").each(function () {
        var nameProduct = $(this).parent().parent().parent().find(".js-name-detail").html();

        $(this).on("click", function () {
          swal(nameProduct, "is added to wishlist !", "success");

          $(this).addClass("js-addedwish-detail");
          $(this).off("click");
        });
      });

      /*---------------------------------------------*/

      $(".js-addcart-detail").each(function () {
        var nameProduct = $(this).parent().parent().parent().parent().find(".js-name-detail").html();
        $(this).on("click", function (event) {
          event.preventDefault();
          swal(nameProduct, "is added to cart !", "success");
          var addToCartLink = $(this).attr("href");
          var quantity = document.querySelector('.num-product').value;
          var size = document.querySelector('.js-select2').value;
          var updateCartLink = addToCartLink + "&quantity="+ quantity +"&size=" + size;
          window.location.href=updateCartLink;
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script>
      $(".js-pscroll").each(function () {
        $(this).css("position", "relative");
        $(this).css("overflow", "hidden");
        var ps = new PerfectScrollbar(this, {
          wheelSpeed: 1,
          scrollingThreshold: 1000,
          wheelPropagation: false,
        });

        $(window).on("resize", function () {
          ps.update();
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>
  </body>
</html>
