<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/navbar.css">

<meta charset="ISO-8859-1">
<title>Aaha</title>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="hero">
		<div class="left-col-hero">
			<div>Lowest price</div>
			<h1>Best Quality</h1>
			<p>
				Welcome to <strong>AAHA</strong> Shopping
			</p>
			<button class="btn">Welcome....!</button>
		</div>
		<div class="right-col-hero">
			<img src="./assets/images/Ecommerce campaign-amico.png" width="500px"
				alt="" srcset="">
		</div>
	</div>

	<section class="offers">
		<div>
			<a href=""> <i class="fas fa-shipping-fast"
				style="font-size: 48px; color: white"></i>
			</a>
			<h2 class="free">Free</h2>
			<h2>Delivery</h2>
		</div>
		<div>
			<a href=""> <i class="fa fa-exchange"
				style="font-size: 48px; color: white"></i>
			</a>
			<h2>Exchange &</h2>
			<h2>Returns</h2>
		</div>
		<div>
			<a href=""> <i class="fas fa-vote-yea"
				style="font-size: 48px; color: white"></i>
			</a>
			<h2>Authentic</h2>
			<h2>Products</h2>
		</div>
	</section>
	<footer class="footer_container">
		<div class="f-1">
			<h4>About</h4>
			<h4>Policy</h4>
			<h4>Terms</h4>
			<p>
				Trusted by more than 1 Crore Indians <br> Cash on Delivery |
				Free Delivery
			</p>
		</div>
		<div class="middle">
			<img class="footer_logo"
				src="./assets/images/logo-transparent-png.png" alt="" width="90px">
			<h4>
				Be sure to take a look at <br> our terms of Use and Privacy
				Policy
			</h4>
		</div>
		<div class="f-2">
			<h4>Contact</h4>

			<i class="fa fa-envelope"> <label for="">karkuvelraj60@gmail.com</label>
			</i> <br> <i class="fa fa-phone"></i>+91 9092381410<br> <i
				class="fa fa-facebook-f"></i> <i class="fa fa-youtube-play"></i> <i
				class="fa fa-twitter"></i> <i class="fa fa-instagram"></i>
		</div>

	</footer>
</body>
</html>