<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/styleLogin.css" />
    <title>Login</title>
    <link rel="icon" href="images/logoHipsterStore.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  </head>

  <body>
    <c:choose>
      <c:when test="${check != null }">
        <div id="nofitication" class="nofi-check">
          <p>${check}</p>
          <button id="btn-cancel">
            <i class="fa-solid fa-xmark"></i>
          </button>
        </div>
      </c:when>
    </c:choose>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form action="login" method="post" class="sign-in-form">
            <h2 class="title">Sign in</h2>
            <p id="nofiSignIn">${nofication_in}</p>


            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="username" id="input" autocomplete="off" placeholder="Username" required />
            </div>

            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="password" placeholder="Password" required />
            </div>

            <div>
              <input type="checkbox" name="rem">
              <span>Remember me?</span>
              <span><a href="Forgot_Password.jsp">Forgot password</a></span>
            </div>



            <button type="submit" onclick="validateUserName()" class="btn solid">Login</button>
            <!-- <input type="submit" value="Login" class="btn solid"/> -->

            <p class="social-text">Or Sign in with social platforms</p>
            <div class="social-media">
              <a href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile&redirect_uri=http://localhost:8080/final_project/GoogleLogin&response_type=code
                &client_id=409937989406-54a75mp56int83lqtd4r0g3njb10j726.apps.googleusercontent.com&approval_prompt=force"
                class="social-icon">
                <i class="fa-brands fa-google"></i>
              </a>

            </div>
          </form>

          <form action="signUp" method="post" name="myform" class="sign-up-form" onsubmit="return validateform()">

            <h2 class="title">Sign up</h2>
            <p id="nofiSignUp">${nofication_up}</p>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" name="name" id="username" autocomplete="off" placeholder="Username" required />
            </div>

            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" name="email" placeholder="Email" required />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="password" autocomplete="off" required />
            </div>
            <!-- <input type="submit" class="btn" value="Sign up" /> -->
            <button type="submit" class="btn solid" value="register">Sign up</button>
            <p class="social-text">Or Sign up with social platforms</p>
            <div class="social-media">

              <a href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile&redirect_uri=http://localhost:8080/final_project/GoogleLogin&response_type=code
              &client_id=409937989406-54a75mp56int83lqtd4r0g3njb10j726.apps.googleusercontent.com&approval_prompt=force"
                class="social-icon">
                <i class="fa-brands fa-google"></i>
              </a>

            </div>
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>New here ?</h3>
            <p>
              To give real service you must add something which cannot be bought
              or measured with money, and that is sincerity and integrity.
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="images/9.png" class="image" alt />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>One of us ?</h3>
            <p>
              To give real service you must add something which cannot be bought
              or measured with money, and that is sincerity and integrity.
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="images/9.png" class="image" alt />
        </div>
      </div>

    </div>

    <script src="script/login-script.js"></script>


  </body>

  </html>