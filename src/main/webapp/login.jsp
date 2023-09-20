<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <section class="login-content">
            <div class="login-page">
                <h1 class="site-name">AAHA</h1>
                <form action ="login" method="get" role="form" onsubmit="signIn(event)">
                    <input id="email" class="mail" name="email" type="email" placeholder="Email address">
                    <input id="password" class="password" name="password" type="password" placeholder="Password">
                    <div>
                 
                    <button  type="submit" class="login">LOG IN</button>
                    </div>
                </form>
             
                <div class="border-4"></div>
                <div class="border-5"></div>
                <p class="or">OR</p>
                <img class="g-logo" src="../../assets/images/google-logo.webp" alt="googlelogo" width="30px">
                <a href="">
                    <p class="google">Continue With Google</p>
                </a> 
                <a href="">
                    <h5>Forget Your Password?</h5>
                </a>
                <div class="border-6"></div>

            </div>
        </section> 
</body>
</html>