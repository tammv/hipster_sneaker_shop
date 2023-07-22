<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!DOCTYPE html>
  <html lang="en" class="">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin-Manage Product</title>

    <!-- Tailwind is included -->
    <link rel="stylesheet" href="css/main1.css?v=1628755089081">
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" 
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">


    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-130795909-1"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag() { dataLayer.push(arguments); }
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
            <li>Manage Content</li>
          </ul>
          
        </div>
      </section>
      <section class="is-hero-bar">
        <div class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
          <h1 class="title">
            Manage Content
          </h1>
          <button class="button green  --jb-modal" data-target="sample-modal-add" type="button">Add Content</button>

          
        </div>
      </section>

      

      <section class="section main-section">
        
        <div class="card has-table">
          
          <br>

          <div class="card-content ">
            <div class="row d-flex flex-wrap justify-content-around">
                <c:forEach items="${list_content}" var="content">
                    <div class="card col-md-3" >
                        <img class="card-img-top" src="${content.img}" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">${content.title}</h5>
                            <p class="card-text">${content.detail_title}</p>
                            <button class="button  --jb-modal" data-target="sample-modal-${content.id}" type="button">View Detail</button>
                        </div>
                    </div>
                    

                </c:forEach>
                
            </div>
            
          </div>
        </div>

        



        

        
      </section>

      


      <c:forEach items="${list_content}" var="content">
        <div id="sample-modal-${content.id}" class="modal">
          <div class="modal-background --jb-modal-close"></div>
          <form action="updateContent" method="post" enctype="multipart/form-data" >

            <div class="modal-card" style="width: 80%;">
              <header class="modal-card-head">
                <p class="modal-card-title">View Detail</p>
              </header>
              <section class="modal-card-body">
                <div class="card" style="width: 100%;">
                    <img class="card-img-top" src="${content.img}" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">${content.title}</h5>
                      <p class="card-text">${content.detail_title}</p>
                      <p class="card-text">${content.content}</p>
                    </div>
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item">Created at : ${content.created_at} </li>
                      <li class="list-group-item">Update at :  ${content.update_at} </li>
                    </ul>
                    <div class="card-body">
                    <button class="button  --jb-modal --jb-modal-close" data-target="sample-modal-Update-${content.id}" type="button">Update</button>
                      <a href="deleteBlog?content_id=${content.id}" class="button">Delete</a>
                    </div>
                  </div>

              </section>
              <footer class="modal-card-foot">
                <button class="button --jb-modal-close">Cancel</button>
                
              </footer>
            </div>
          </form>
        </div>
      </c:forEach>

      <c:forEach items="${list_content}" var="content" >
        <div id="sample-modal-Update-${content.id}" class="modal">
            <div class="modal-background --jb-modal-close"></div>
            <div class="modal-card" style="width: 80%;">
                <header class="modal-card-head">
                    <p class="modal-card-title">Update Content</p>
                  </header>
                  <section class="modal-card-body">
                    <form action="updateBlog" method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
                        <div class="form-group">
                            <input type="hidden" name="content_id" value="${content.id}">
                          <label for="linkimg">Image:</label>
                          <input type="file" name="linkimg" class="form-control-file" id="linkimg">
                        </div>
                        <input type="hidden" name="oldimg" value="${content.img}" readonly>
                        <div class="form-group">
                          <label for="content_title">Title:</label>
                          <input type="text" name="content_title" placeholder="${content.title}" value="${content.title}" class="form-control" id="content_title">
                        </div>
                        <div class="form-group">
                          <label for="content-detail_title">Detail Title:</label>
                          <textarea name="content-detail_title" placeholder="${content.detail_title}" class="form-control" id="content-detail_title">${content.detail_title}</textarea>
                        </div>
                        <div class="form-group">
                          <label for="content_content">Content:</label>
                          <textarea name="content_content" placeholder="${content.content}" class="form-control" id="content_content">${content.content}</textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                      </form>
                      
                  </section>
            </div>
        </div>
      </c:forEach>

      <div id="sample-modal-add" class="modal">
        <div class="modal-background --jb-modal-close"></div>
        <div class="modal-card" style="width: 80%;">
            <header class="modal-card-head">
                <p class="modal-card-title">Add content</p>
              </header>
              <section class="modal-card-body">
                <form action="createBlog" method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
                    <div class="form-group">
                      <label for="linkimg">Image:</label>
                      <input type="file" name="linkimg" class="form-control-file" id="linkimg" required>
                    </div>
                    <div class="form-group">
                      <label for="content_title">Title:</label>
                      <input type="text" name="content_title" placeholder="Enter the title" class="form-control" id="content_title" required>
                    </div>
                    <div class="form-group">
                      <label for="content-detail_title">Detail Title:</label>
                      <textarea name="content-detail_title" placeholder="Enter the detail title" class="form-control" id="content-detail_title" required></textarea>
                    </div>
                    <div class="form-group">
                      <label for="content_content">Content:</label>
                      <textarea name="content_content" placeholder="Enter the content" class="form-control" id="content_content" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </form>
                  
                  
              </section>
        </div>
    </div>
      
      

      

    </div>

    <!-- Scripts below are for demo only -->
    <script src="js/main1.js"></script>
    <script>
      var startDate = document.querySelectorAll(".startinput");
      var endDate = document.querySelectorAll(".endinput");
      startDate.forEach(d => {
        d.addEventListener("change", (event) => {
          var changeE = event.target;
          var time = changeE.closest(".timeControl");
          
          var endDate = time.querySelector(".endinput");
          var endBegin = endDate.value;
          if(changeE.value > endBegin){
            changeE.value = endBegin;
            
          }
          endDate.min = changeE.value;
          
        });
      });

      var today = new Date().toISOString().split('T')[0];
      var startinsert = document.getElementById('startinsert');
      startinsert.value = today;
      var endinsert = document.getElementById('endinsert');
      endinsert.min = today;
      


      
    </script>
    
    <script>
      !function (f, b, e, v, n, t, s) {
        if (f.fbq) return; n = f.fbq = function () {
          n.callMethod ?
          n.callMethod.apply(n, arguments) : n.queue.push(arguments)
        };
        if (!f._fbq) f._fbq = n; n.push = n; n.loaded = !0; n.version = '2.0';
        n.queue = []; t = b.createElement(e); t.async = !0;
        t.src = v; s = b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t, s)
      }(window, document, 'script',
        'https://connect.facebook.net/en_US/fbevents.js');
      fbq('init', '658339141622648');
      fbq('track', 'PageView');
    </script>
    <noscript><img height="1" width="1" style="display:none"
        src="https://www.facebook.com/tr?id=658339141622648&ev=PageView&noscript=1" /></noscript>

    <!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->
    <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.9.95/css/materialdesignicons.min.css">

  </body>

  </html>