<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en" class="">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin-Manage Order</title>

  <!-- Tailwind is included -->
  <link rel="stylesheet" href="css/main1.css?v=1628755089081">
  <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css" />
  <link rel="stylesheet" 
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">


  <!-- Global site tag (gtag.js) - Google Analytics -->
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-130795909-1"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'UA-130795909-1');
  </script>

  <style>
    .filterDiv {
  display: none; /* Hidden by default */
}

/* The "show" class is added to the filtered elements */
.show {
  display: table-row;
}
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: #f1f1f1;
  cursor: pointer;
}

/* Add a light grey background on mouse-over */
.btn:hover {
  background-color: #ddd;
}

/* Add a dark background to the active button */
.btn.active {
  background-color: #666;
  color: white;
}



  </style>

</head>
<body>

<div id="app">

  <nav id="navbar-main" class="navbar is-fixed-top">
    <div class="navbar-brand">
    </div>
    <div class="navbar-brand is-right">
      <a class="navbar-item --jb-navbar-menu-toggle" data-target="navbar-menu">
        <span class="icon"><i class="mdi mdi-dots-vertical mdi-24px"></i></span>
      </a>
    </div>
    <div class="navbar-menu" id="navbar-menu">
      <div class="navbar-end">
        
        <div class="navbar-item dropdown has-divider has-user-avatar">
          <a class="navbar-link">
            <div class="user-avatar">
              <img src="${admin.img}" alt="" class="rounded-full">
            </div>
            <div class="is-user-name"><span>${admin.username}</span></div>
            <span class="icon"><i class="mdi mdi-chevron-down"></i></span>
          </a>
          <div class="navbar-dropdown">
            <a href="profile" class="navbar-item">
              <span class="icon"><i class="mdi mdi-account"></i></span>
              <span>My Profile</span>
            </a>
            
            <hr class="navbar-divider">
            <a class="navbar-item" href="logout">
              <span class="icon"><i class="mdi mdi-logout"></i></span>
              <span>Log Out</span>
            </a>
          </div>
        </div>
        
        
        
      </div>
    </div>
  </nav>

  <c:import url="navMenu.html" />

<section class="is-title-bar">
  <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
    <ul>
      <li>Admin</li>
      <li>Manage Order</li>
    </ul>
    
  </div>
</section>

<section class="is-hero-bar">
  <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
    <h1 class="title">
      Manage Order
    </h1>
    <!-- <button class="button light">Button</button> -->
  </div>
</section>

  <section class="section main-section">
    <div class="card mb-6">
      <header class="card-header">
        <p class="card-header-title">
          <span class="icon"><i class="mdi mdi-finance"></i></span>
          Percent
        </p>
        <a href="#" class="card-header-icon">
          <span class="icon"><i class="mdi mdi-reload"></i></span>
        </a>
      </header>
      <div class="card-content">
        <div class="chart-area">
          <div class="h-full">
            <div class="chartjs-size-monitor">
              <div class="chartjs-size-monitor-expand">
                <div></div>
              </div>
              <div class="chartjs-size-monitor-shrink">
                <div></div>
              </div>
            </div>
            <canvas id="circleChart" width="500" height="500" class="chartjs-render-monitor block"></canvas>
          </div>
        </div>
      </div>
    </div>
    

    
    <div class="card has-table m-t-10">
      <header class="card-header">
        <p class="card-header-title">
          <span class="icon"><i class="mdi mdi-account-multiple"></i></span>
          Latest orders
        </p>
        <div id="myBtnContainer">
          <button class="btn active" onclick="filterSelection('all')"> Show all</button>
          <button class="btn" onclick="filterSelection('success')"> History Sales</button>
        </div>
        
        <button class="card-header-icon" onclick="reloadPage()">
            <span class="icon"><i class="mdi mdi-reload"></i></span>
        </button>
      </header>
      <div class="card-content">
        <table>
          <thead>
          <tr>
            <th>Order Id</th>
            <th>Username</th>
            <th>Status Order</th>
            <th>Delivery Address</th>
            <th>Total_Price</th>
            <th>Created At</th>
            <th>Status Payment</th>
            <th></th>
          </tr>
          </thead>
          <tbody>
            <c:forEach items="${listOrders}" var="order" >
                
                <tr class="filterDiv ${order.orderDetail.status_order} ">
                  <td>
                    ${order.orderDetail.order_id}
                  </td>
                  <td>${order.orderDetail.username}</td>
                  <td>${order.orderDetail.status_order}</td>
                  <td>${order.orderDetail.delivery_address}</td>
                  <td>${order.orderDetail.total_price}</td>
                  <td>${order.orderDetail.created_at}</td>
                  <td>${order.orderDetail.status_Payment}</td>
                  <td>
                      <div class="buttons right nowrap">
                          <button class="button small green --jb-modal" data-target="sample-modal-${order.orderDetail.order_id}" type="button">
                            <span class="icon"><i class="mdi mdi-eye"></i></span>
                          </button>
                          <!-- <button class="button small red --jb-modal" data-target="sample-modal-delete${order.orderDetail.order_id}" type="button">
                            <span class="icon"><i class="mdi mdi-trash-can"></i></span>
                          </button> -->
                      </div>
                  </td>
                </tr>
                
              
            </c:forEach>
          </tbody>
        </table>
        <!-- <div class="table-pagination">
          <div class="flex items-center justify-between">
            <div class="buttons">
              <button type="button" class="button active">1</button>
              <button type="button" class="button">2</button>
              <button type="button" class="button">3</button>
            </div>
            <small>Page 1 of 3</small>
          </div>
        </div> -->
      </div>
    </div>



  </section>

<footer class="footer">
  <div class="flex flex-col md:flex-row items-center justify-between space-y-3 md:space-y-0">
    <div class="flex items-center justify-start space-x-3">
      <div>
        Hipster Store
      </div>

      
    </div>


    
  </div>
</footer>
<c:forEach items="${listOrders}" var="order">
    <div id="sample-modal-${order.orderDetail.order_id}" class="modal">
      <div class="modal-background --jb-modal-close"></div>
        <div class="modal-card" style="width: 70%;">
          <header class="modal-card-head">
            <p class="modal-card-title">Order :  ${order.orderDetail.order_id}</p>
          </header>
          <section class="modal-card-body">
            <table>
                <tr>
                    <th>Order Id</th>
                    <th>Username</th>
                    <th>Status Order</th>
                    <th>Delivery Address</th>
                    <th>Total_Price</th>
                    <th>Created At</th>
                    <th>Status Payment</th>
                    <th></th>
                </tr>
                <tr>

                    <td>
                        ${order.orderDetail.order_id}
                      </td>
                    <td>${order.orderDetail.username}</td>
                    <td>${order.orderDetail.status_order}</td>
                    <td>${order.orderDetail.delivery_address}</td>
                    <td>${order.orderDetail.total_price}</td>
                    <td>${order.orderDetail.created_at}</td>
                    <td>${order.orderDetail.status_Payment}</td>
                </tr>
            </table>

            <div class="detail_product row justify-content-around">
              <c:forEach items="${order.list_item}" var="item">
                  <div class="card mb-5 col-md-6 col-lg-4 col-xl-3">
                      <div class="row g-0">
                          <div class="col-md-5">
                              <img src="${item.product.img}" class="img-fluid rounded-start" alt="...">
                          </div>
                          <div class="col-md-7">
                              <div class="card-body">
                                  <h5 class="card-title">${item.product.product_name}</h5>
                                  <p class="card-text">Color: ${item.product.color}</p>
                                  <p class="card-text">Size: ${item.size} x ${item.quantity}</p>
                                  <p class="card-text">Price: ${item.product.profit_price} $</p>
                                  <p class="card-text">Total: ${item.product.profit_price * item.quantity} $</p>
                              </div>
                          </div>
                      </div>
                  </div>
              </c:forEach>
          </div>
          

          </section>
          <footer class="modal-card-foot">
            <button class="button --jb-modal-close">Cancel</button>
            <c:if test = "${order.orderDetail.status_order == 'Processing'}">
                <a href="receiveOrder?order_id=${order.orderDetail.order_id}&username=${order.orderDetail.username}" class="button green " type="submit">Receive orders</a>
                <c:if test ="${order.orderDetail.status_Payment == 'COD'}">
                <a href="cancelOrder?order_id=${order.orderDetail.order_id}&username=${order.orderDetail.username}" class="button red " type="submit">Cancel orders</a>
              </c:if>
              </c:if>
              
          </footer>
        </div>
    </div>
  </c:forEach>


  

</div>

<!-- Scripts below are for demo only -->
<script src="js/main1.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
  var ctx = document.getElementById('circleChart').getContext('2d');
  <c:set var="jsonLabels" value="${list_status}" />
  var labelSql = [
    <c:forEach items="${list_status}" var="status" varStatus="loop">
        "${status}"<c:if test="${!loop.last}">,</c:if>
    </c:forEach>
];
  var data = {
      datasets: [{
          data: <c:out value="${list_percent}" />, // Dữ liệu cho các phần tử trong biểu đồ
          backgroundColor: ['#FF6384', '#36A2EB','#FF0000', '#0000FF', '#FFA500', '#FFC0CB'], // Màu sắc cho các phần tử
      }],
      labels: labelSql,
  };

  var options = {
      responsive: true
  };

  var circleChart = new Chart(ctx, {
      type: 'doughnut', // Loại biểu đồ là hình tròn
      data: data,
      options: options
  });
</script>




<script type="text/javascript" src="js/chart.sample.min.js"></script>
<script src="script/adminPage.js"></script>
<script>
  filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("filterDiv");
  if (c == "all") c = "";
  // Add the "show" class (display:block) to the filtered elements, and remove the "show" class from the elements that are not selected
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

// Show filtered elements
function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {
      element.className += " " + arr2[i];
    }
  }
}

// Hide elements that are not selected
function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);
    }
  }
  element.className = arr1.join(" ");
}

var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}

</script>

<script>
    function reloadPage() {
  location.reload(); // Phương thức reload sẽ tải lại trang web hiện tại
}
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
    n.callMethod.apply(n,arguments):n.queue.push(arguments)};
    if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
    n.queue=[];t=b.createElement(e);t.async=!0;
    t.src=v;s=b.getElementsByTagName(e)[0];
    s.parentNode.insertBefore(t,s)}(window, document,'script',
    'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '658339141622648');
  fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=658339141622648&ev=PageView&noscript=1"/></noscript>

<!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->
<link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.9.95/css/materialdesignicons.min.css">

</body>
</html>
