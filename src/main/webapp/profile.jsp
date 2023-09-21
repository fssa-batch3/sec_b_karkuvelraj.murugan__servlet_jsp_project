<%@page import="in.fssa.aaha.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/profile.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%User user = (User) request.getAttribute("user");%>
	<!-- This is profile-section -->
	<div class="account-section">
		<div class="side-item">
			<div class="page">
				<img id="profile" alt="error">
				<div>
					<h4 id="customer">name</h4>
				</div>
			</div>
			<div class="side-menu">
				<ul>
					<li><a href="../homepage/profile.html" id="my_profile"
						class="active" autofocus> <span
							class="fa-solid fa-circle-user"></span> <span>My Profile</span>
					</a></li>
					<li><a href="../homepage/cart.html" id="my_events"
						class="active"> <span class="fa-solid fa-bag-shopping"></span>
							<span>Cart</span>
					</a></li>
					<li><a href="../homepage/wish.html" id="my_session"
						class="active"> <span class="fa-solid fa-calendar-check"></span>
							<span>Wishlist</span>
					</a></li>
					<li><a href="#" class="active"> <span
							class="fa-solid fa-circle-user"></span> <span>My Order</span>
					</a></li>

				</ul>
			</div>
		</div>
		<div class="main-item">
			<!-- This is header section -->
			<!-- This is profile update section-->
			<div class="user-condainer">
				<div class="information boxes">
					<form action="editprofile" method="Get" role="form" onsubmit="eprofile_details(event)">
						<div class="first-name" id="align-num">
							<label class="more"> </label> <input class="name"
								id="user_name" type="text" pattern="[A-Za-z]{1,32}"
								name="name" placeholder="First Name" value="<%=  user.getUserName() %>" readonly>
						</div>
						<!-- This is Last name  -->
						<div class="last-name" id="align-num">
							<label class="more"> Address</label> <input class="name"
								id="address" type="text" name="address"
								placeholder="Last Name" value=""
								title="Last name connot contain spaces" readonly>
						</div>
						<!-- This is email input  -->
						<div class="email" id="align-num">
							<label class="more"> Email</label> <input class="name_email"
								id="user_email" type="email" name="email"
								placeholder="name@gmail.com" value="<%=  user.getEmail() %>" required="true" disabled>
						</div>
						<!-- This is city -->
						<div class="fCity-name" id="align-num">
							<label class="more"> City</label> <select name="city"
								class="name" id="district">
								<option value="Tenkasi">Tenkasi</option>
								<option value="Pvoorchatram">Pvoorchatram</option>
								<option value="Surandai">Surandai</option>
								<option value="Madurai">Kdaiyam</option>
								<option value="Ambai">Ambai</option>
								<option value="Alangulam">Alangulam</option>
								<option value="Nellai">Nellai</option>
								<option value="Poolangulam">Poolangulam</option>
							</select>
							<!-- <input class="name" id="user-firstname" type="text" pattern="[A-Za-z]{1,32}" name="user name"
                            title="First name connot contain spaces" placeholder="First Name" value="" required="true"> -->
						</div>
						<!-- This is number -->
						<div class="Number" id="align-num">
							<label id="" class="more"> mobile number</label> <input
								class="name" id="number" type="tel" value="<%=  user.getPhoneNumber() %>" pattern="[0-9]{10,12}"
								name="number" placeholder="mobile number" maxlength="10">
						</div>
						<!-- This is Address input  -->
						<div class="pincode" id="align-num">
							<label class="more"> Pincode</label> <input class="name"
								id="pincode" type="text" pattern="[0-9]{6,6}" maxlength="6"
								name="user address" placeholder="Pincode">
						</div>
						<div class="edit_btns">
						<a href="edit/profile"><button id="edit_button" >Edit</button></a>
      	                <a href="delete/user?id=<%=user.getId()%>"><button id="delete" type="submit">Delete</button></a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<script src="./usercrud.js"></script>
	<script>
		function myfunc() {
			document.getElementById("save").style.display = "inline-block";
			document.getElementById("edit_button").style.display = "none";
		}
	</script>
</body>
</html>