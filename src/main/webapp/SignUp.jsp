<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
           <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/navbar.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

	<section class="signup-container">
		<div class="signup-content">
			<h1>SIGNUP</h1>
			<p class="signup-para">
				Get access to your <br> orders wishlist and <br>
				recomandations
			</p>
			<img src="../../assets/images/signup.png" class="signup-image"
				width="190px" alt="">
		</div>
		<div class="signup-form">
			<h2>Registration</h2>
			<form action = "create" method ="post" class="form-control" role="form" onsubmit="signUp(event)">
				<div class="inputs">
					<input required="true" type="mail" id="name" placeholder="name" name ="username">
					<input type="mail" id="number" placeholder="phone-number" name ="usernumber">
					<input required="true"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name ="useremail" type="mail"
						id="email" placeholder="email"> <input required="true"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" type="password"
						id="password" placeholder="Create password">
				  <input name = "userpassword" required="true" type="password" id="confirm_password"
						placeholder="Confirm_Password">
				</div>
				<div class="otp">

					<p>
						
						<a href=""><button class="btn1" type="submit">Sign Up</button></a>
					</p>


				</div>
						</form>
				
		</div>
		

	</section>
</body>
</html>