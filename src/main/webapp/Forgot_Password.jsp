<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="css/styleForgot.css">
</head>
<body>
    <div class="container">
        <c:choose>
            <c:when test="${check == 1  }">
                <form action="UpdatePassWord" method="post" name="myform" onsubmit="return validatePassWord()">
                    <div class="card card-reset">
                        <div class="card-header">
                            <div class="img">
                                <img src="images/logoHipsterStore.png" alt="" class="logo">
                            </div>
                            <p>hipster Store</p>
                        </div>
                        <div class="card-input">
                            <p>Enter new password</p>
                            <input type="password" name="new_pass" required>
                            <p>Enter again password</p>
                            <input type="password" name="new_pass_check" required id="">
                        </div>
                        <button type="submit">Reset</button>
                    </div>
                </form>
            </c:when>
        
            <c:otherwise>
                <form action="forgot" method="post">
                    <div class="card">
                        <div class="card-header">
                            <div class="img">
                                <img src="images/logoHipsterStore.png" alt="" class="logo">
                            </div>
                            <p>hipster Store</p>
                        </div>
                        <div class="card-content">
                            <h4>forgot password</h4>
                            <ul>
                                <li>Enter your username or email</li>
                                <li>Visit your email account, open the email sent by Hipster Store.</li>
                                <li>Click to the link to reset password</li>
                            </ul>
                        </div>
                        <div class="card-footer">
                            <p>User name or email</p>
                            <input type="text" name="forgot" placeholder="username or password" required> <button type="submit">Reset password</button>
                            
                        </div>
                    </div>
                </form>
            </c:otherwise>
        </c:choose>

        
    </div>

    <script>
        function validatePassWord(){
            var password = document.myform.new_pass.value;
            var password_check = document.myform.new_pass_check.value;
            if (password.length < 6) {
                alert("Password must be at least 6 characters long.");
            return false;
            }
            else if (password != password_check){
                alert("Check input password, password is not match");
            return false;
            }
            return true;
        }
    </script>
</body>
</html>