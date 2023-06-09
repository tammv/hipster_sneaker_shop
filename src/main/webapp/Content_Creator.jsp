<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ page session="true" %>
    <!DOCTYPE html>
    <html class="no-js" lang="en">

    <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>Content Creator</title>
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
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
      <link rel="stylesheet" href="admin/style.css" />
      <!-- responsive CSS
		============================================ -->
      <link rel="stylesheet" href="admin/css/responsive.css" />
      <!-- modernizr JS
		============================================ -->
      <script src="admin/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>
      <div class="left-sidebar-pro">
        <nav id="sidebar" class>
          <div class="sidebar-header">
            <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt /></a>
            <strong><img src="img/logo/logosn.png" alt /></strong>
          </div>
          <div class="nalika-profile">
            <div class="profile-dtl">
              <a href="#"><img src="img/notification/4.jpg" alt /></a>
              <h2>HIPTERS STORE</h2>
            </div>
            <!-- <div class="profile-social-dtl">
              <ul class="dtl-social">
                <li>
                  <a href="#"><i class="icon nalika-facebook"></i></a>
                </li>
              
                <li>
                  <a href="#"><i class="icon nalika-linkedin"></i></a>
                </li>
              </ul>
            </div> -->
          </div>
          <div class="left-custom-menu-adp-wrap comment-scrollbar">
            <nav class="sidebar-nav left-sidebar-menu-pro">
              <!-- sidebar menu -->
              <ul class="metismenu" id="menu1">

                <li>
                  <a class="has-arrow" href="#">
                    <i class="icon nalika-forms icon-wrap"></i>
                    <span class="mini-click-non">Manage Content</span>
                  </a>
                  <ul class="submenu-angle" aria-expanded="true">
                    <li>
                      <a title="Product List" href="#"><span class="mini-sub-pro">Edit Content Detail</span></a>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </nav>
      </div>
      <!-- Start Welcome area -->
      <div class="all-content-wrapper">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
              <div class="logo-pro">
                <a href="#"><img class="main-logo" src="img/logo/logo.png" alt /></a>
              </div>
            </div>
          </div>
        </div>
        <div class="header-advance-area">
          <div class="header-top-area">
            <div class="container-fluid">
              <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <div class="header-top-wraper">
                    <div class="row">
                      <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                        <div class="menu-switcher-pro">
                          <button type="button" id="sidebarCollapse"
                            class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                            <i class="icon nalika-menu-task"></i>
                          </button>
                        </div>
                      </div>
                      <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12"></div>
                      <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                        <div class="header-right-info">
                          <ul class="nav navbar-nav mai-top-nav header-right-menu">
                            <li class="nav-item">
                              <a href="#" data-toggle="dropdown" role="button" aria-expanded="false"
                                class="nav-link dropdown-toggle">
                                <i class="icon nalika-user nalika-user-rounded header-riht-inf" aria-hidden="true"></i>
                                <span class="admin-name">Content Creator</span>
                                <i class="icon nalika-down-arrow nalika-angle-dw nalika-icon"></i>
                              </a>
                              <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                <!-- <li>
                                  <a href="register.html"
                                    ><span class="icon nalika-home author-log-ic"></span> Register</a
                                  >
                                </li> -->
                                <li>
                                  <a href="#"><span class="icon nalika-user author-log-ic"></span> My Profile</a>
                                </li>

                                <!-- <li>
                                  <a href="#"><span class="icon nalika-settings author-log-ic"></span> Settings</a>
                                </li> -->
                                <li>
                                  <a href="login.html"><span class="icon nalika-unlocked author-log-ic"></span> Log
                                    Out</a>
                                </li>
                              </ul>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Mobile Menu start -->
          <div class="mobile-menu-area">
            <div class="container">
              <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <!-- menu mobile-menu -->
                  <div class="mobile-menu">
                    <nav id="dropdown">
                      <ul class="mobile-menu-nav">
                        <li>
                          <a data-toggle="collapse" data-target="#Charts" href="#">Manage Content <span
                              class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                          <ul class="collapse dropdown-header-top">
                            <li><a href="#">shipping list</a></li>
                            <li><a href="#">delivery list</a></li>
                          </ul>
                        </li>

                      </ul>
                    </nav>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Mobile Menu end -->
          <div class="breadcome-area">
            <div class="container-fluid">
              <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <div class="breadcome-list">
                    <div class="row">
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="breadcomb-wp">
                          <div class="breadcomb-icon">
                            <i class="icon nalika-forms icon-wrap"></i>
                          </div>
                          <div class="breadcomb-ctn">
                            <h2>Content Creator</h2>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="product-status mg-b-30">
            <div class="container-fluid">
              <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <div class="product-status-wrap">
                    <h4>Contents List</h4>
                    <div class="add-product">
                      <a href="add-content.jsp">Add Content</a>
                    </div>
                    <table>
                      <tr>
                        <th>Id</th>
                        <th>Img</th>
                        <th>Content Title</th>
                        <th>Date</th>

                      </tr>
                      <c:forEach items="${listContent}" var="content">
                        <tr>
                          <td style="border: 1px solid">${content.id}</td>
                          <td style="border: 1px solid"><img src="${content.img}" alt="" /></td>
                          <td style="border: 1px solid">${content.title}</td>
                          <td style="border: 1px solid">${content.created_at}</td>
                          <td style="border: 1px solid">
                            <button data-toggle="tooltip" title="Edit" class="pd-setting-ed"><i
                                class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                            <button data-toggle="tooltip" title="Trash" class="pd-setting-ed"
                              data-content-id="${content.id}">
                              <i class="fa fa-trash-o" aria-hidden="true"></i>
                            </button>

                          </td>
                        </tr>
                      </c:forEach>

                    </table>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Single pro tab start-->
        <div class="single-product-tab-area mg-b-30">
          <!-- Single pro tab review Start-->
          <div class="single-pro-review-area">
            <div class="container-fluid">
              <div class="row">
                <!-- Content  -->
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="footer-copyright-area">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-12">
                <div class="footer-copy-right">
                  <p>
                    Copyright© 2023 <a href="https://www.facebook.com/hipsterstore">Hipsterstore</a> All rights
                    reserved.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- jquery
		============================================ -->
      <script src="js/vendor/jquery-1.12.4.min.js"></script>
      <!-- bootstrap JS
		============================================ -->
      <script src="js/bootstrap.min.js"></script>
      <!-- wow JS
		============================================ -->
      <script src="js/wow.min.js"></script>
      <!-- price-slider JS
		============================================ -->
      <script src="js/jquery-price-slider.js"></script>
      <!-- meanmenu JS
		============================================ -->
      <script src="js/jquery.meanmenu.js"></script>
      <!-- owl.carousel JS
		============================================ -->
      <script src="js/owl.carousel.min.js"></script>
      <!-- sticky JS
		============================================ -->
      <script src="js/jquery.sticky.js"></script>
      <!-- scrollUp JS
		============================================ -->
      <script src="js/jquery.scrollUp.min.js"></script>
      <!-- mCustomScrollbar JS
		============================================ -->
      <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
      <!-- metisMenu JS
		============================================ -->
      <script src="js/metisMenu/metisMenu.min.js"></script>
      <script src="js/metisMenu/metisMenu-active.js"></script>
      <!-- morrisjs JS
		============================================ -->
      <script src="js/sparkline/jquery.sparkline.min.js"></script>
      <script src="js/sparkline/jquery.charts-sparkline.js"></script>
      <!-- calendar JS
		============================================ -->
      <script src="js/calendar/moment.min.js"></script>
      <script src="js/calendar/fullcalendar.min.js"></script>
      <script src="js/calendar/fullcalendar-active.js"></script>
      <!-- tab JS
		============================================ -->
      <script src="js/tab.js"></script>
      <!-- plugins JS
		============================================ -->
      <script src="js/plugins.js"></script>
      <!-- main JS
		============================================ -->
      <script src="js/main.js"></script>
      <!-- delete button
		============================================ -->
      <script>
        // Lấy danh sách tất cả các nút xóa trong trang
        var deleteButtons = document.querySelectorAll('.pd-setting-ed');

        // Duyệt qua danh sách các nút xóa và gắn sự kiện nhấp vào mỗi nút
        deleteButtons.forEach(function (button) {
          button.addEventListener('click', function () {
            // Lấy contentId từ thuộc tính data-content-id của nút xóa
            var contentId = button.getAttribute('data-content-id');

            // Gửi yêu cầu HTTP GET đến servlet DeleteContentServlet với contentId
            var xhr = new XMLHttpRequest();
            xhr.open('GET', 'deleteContent?contentId=' + contentId);
            xhr.send();

            // Sau khi xóa thành công, làm gì đó (chẳng hạn là cập nhật lại trang)
            xhr.onload = function () {
              if (xhr.status === 200) {
                // Xóa thành công, thực hiện cập nhật lại trang
                location.reload();
              } else {
                // Xảy ra lỗi, hiển thị thông báo lỗi hoặc xử lý theo ý muốn
                console.error('Error deleting content: ' + xhr.status);
              }
            };
          });
        });
      </script>

    </body>

    </html>