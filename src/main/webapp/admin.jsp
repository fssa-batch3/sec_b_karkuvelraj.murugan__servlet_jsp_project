<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.login-content {
	width: 400px;
	height: 470px;
	border: 2px solid rgb(231, 224, 224);
	position: relative;
	left: 550px;
	top: 160px;
	border-radius: 12px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	background-color: rgb(249, 249, 249);
}

.login {
	display: block;
	height: 35px;
	width: 280px;
	position: relative;
	top: 140px;
	right: 75px;
	background-color: goldenrod;
	color: black;
	font-weight: bold;
	font-size: 17px;
	border: 0.5px solid rgb(161, 159, 159);
	border-radius: 6px;
}

.mail {
	display: block;
	position: relative;
	top: 110px;
	height: 10px;
	width: 250px;
	right: 75px;
	border-radius: 6px;
	border: 1px solid rgb(121, 120, 120);
	outline: none;
	padding: 14px;
	font-size: 12px;
}

.password {
	display: block;
	height: 10px;
	width: 250px;
	position: relative;
	right: 75px;
	top: 120px;
	border-radius: 6px;
	border: 1px solid rgb(121, 120, 120);
	outline: none;
	padding: 14px;
	font-size: 12px;
}

.site-name {
	position: relative;
	top: 70px;
}

.login-page {
	position: relative;
	left: 140px;
}

.or {
	position: relative;
	top: 145px;
	left: 45px;
}

.g-logo {
	position: relative;
	top: 160px;
	right: 50px;
}

.google {
	position: relative;
	top: 130px;
	right: 18px;
	color: black;
}

.login-page h5 {
	position: relative;
	top: 140px;
	right: 18px;
	color: black;
}

.sign-up {
	position: relative;
	top: 100px;
	right: 50px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section class="login-content">
		<div class="login-page">
			<h1 class="site-name">ADMIN</h1>
			<form role="form">
				<input id="email" class="mail" type="text" placeholder="Admin name">
				<input id="password" class="password" type="password"
					placeholder="Admin Password">
				<button  class="login" type="button" onclick="login()">Login</button>
			</form>

		</div>
	</section>
</body>
<script>
const objadmin = [
  {
    admin_name: "Akiraj",
    admin_password: "Aki141118",
  }
];

function login() {
	event.preventDefault();
  const admin_name1 = document.getElementById("email").value;
  const admin_password1 = document.getElementById("password").value;

  if (
    admin_name1 === objadmin[0].admin_name &&
    admin_password1 === objadmin[0].admin_password
  ) {
    alert("Login successful");
    // Redirect to the productlist.jsp page
    window.location.href = "products";
  } else {
    alert("Your details are incorrect");
  }
}
</script>
</html>