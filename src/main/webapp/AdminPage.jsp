<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en" class="">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin Page Hispter Store</title>

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
      <li>Dashboard</li>
    </ul>
    
  </div>
</section>

<section class="is-hero-bar">
  <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
    <h1 class="title">
      Dashboard
    </h1>
    <!-- <button class="button light">Button</button> -->
  </div>
</section>

  <section class="section main-section">
    <div class="grid gap-6 grid-cols-1 md:grid-cols-3 mb-6">
      <div class="card">
        <div class="card-content">
          <div class="flex items-center justify-between">
            <div class="widget-label">
              <h3>
                Accounts
              </h3>
              <h1>
                ${list_user.size()  }
              </h1>
            </div>
            <span class="icon widget-icon text-green-500"><i class="mdi mdi-account-multiple mdi-48px"></i></span>
          </div>
        </div>
      </div>
      <div class="card">
        <div class="card-content">
          <div class="flex items-center justify-between">
            <div class="widget-label">
              <h3>
                Sales
              </h3>
              <h1>
                ${Sales}
              </h1>
            </div>
            <span class="icon widget-icon text-blue-500"><i class="mdi mdi-cart-outline mdi-48px"></i></span>
          </div>
        </div>
      </div>

      
    </div>

    <div class="card mb-6">
      <header class="card-header">
        <p class="card-header-title">
          <span class="icon"><i class="mdi mdi-finance"></i></span>
          Performance
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
            <canvas id="revenueChart" width="2992" height="1000" class="chartjs-render-monitor block" style="height: 400px; width: 1197px;"></canvas>
          </div>
        </div>
      </div>
    </div>

    <!-- <div class="notification blue">
      <div class="flex flex-col md:flex-row items-center justify-between space-y-3 md:space-y-0">
        <div>
          <span class="icon"><i class="mdi mdi-buffer"></i></span>
          <b>Responsive table</b>
        </div>
        <button type="button" class="button small textual --jb-notification-dismiss">Dismiss</button>
      </div>
    </div> -->

    <div class="card has-table">
      <header class="card-header">
        <p class="card-header-title">
          <span class="icon"><i class="mdi mdi-account-multiple"></i></span>
          Users
        </p>
        
      </header>
      <div class="card-content">
        <table>
          <thead>
          <tr>
            <th></th>
            <th>Name</th>
            <th>Gmail</th>
            <th>Phone</th>
            <th>Role</th>
            <th></th>
          </tr>
          </thead>
          <tbody>
            <c:forEach items="${list_user}" var="user">
              <tr class="user_row">
                <td class="image-cell">
                  <div class="image">
                    <img src="${user.img}" class="rounded-full userImg ">
                  </div>
                </td>
                <td data-label="Name" class="username">${user.username}</td>
                <td data-label="Company" class="email">${user.email}</td>
                <td data-label="City" class="phone" >${user.phone}</td>
                <td data-label="role" class="role" >${user.role}</td>
                
                <td class="actions-cell">
                  <div class="buttons right nowrap">
                    <button class="button small green --jb-modal show"  data-target="sample-modal-${user.username}" type="button">
                      <span class="icon"><i class="mdi mdi-eye"></i></span>
                    </button>
                    <button class="button small red --jb-modal" data-target="sample-modal-delete${user.username}" type="button">
                      <span class="icon"><i class="mdi mdi-trash-can"></i></span>
                    </button>
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



    <div class="card has-table m-t-10">
      <header class="card-header">
        <p class="card-header-title">
          <span class="icon"><i class="mdi mdi-account-multiple"></i></span>
          Latest orders
        </p>
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
            
          </tr>
          </thead>
          <tbody>
            <c:forEach items="${listOrders}" var="order" begin="0" end="10">
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

<c:import url="RemoveUser.jsp"/>

<c:import url="ViewDetailUser.jsp"/>


</div>

<!-- Scripts below are for demo only -->
<script src="js/main1.js"></script>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="script/adminPage.js"></script>

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

<script>
  var revenueData = <c:out value="${revenue}" />;

  var ctx = document.getElementById('revenueChart').getContext('2d');
  var chart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: ['Month 1', 'Month 2', 'Month 3', 'Month 4','Month 5','Month 6','Month 7','Month 8','Month 9','Month 10','Month 11','Month 12',], // Cung cấp các nhãn cho các tháng
      datasets: [{
        label: 'Revenue',
        data: revenueData,
        backgroundColor: 'rgba(75, 192, 192, 0.2)',
        borderColor: 'rgba(75, 192, 192, 1)',
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=658339141622648&ev=PageView&noscript=1"/></noscript>

<!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->
<link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.9.95/css/materialdesignicons.min.css">

</body>
</html>
