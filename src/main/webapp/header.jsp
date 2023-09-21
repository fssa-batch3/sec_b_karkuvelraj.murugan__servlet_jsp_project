<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
           <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/navbar.css">
  
</head>
<body>
   <%  String id = (String) session.getAttribute("userId");
   
	if (id != null) {
	%>
          <nav class="nav-container">
        <div>
        <a href="./assets/images/logo1.png"><img class="logo" src="./assets/images/logo1.png"  alt="logo"></a>
        
        </div>
            <div class="nav_right">

                <input type="text" class="search" name="searchbar" id="search_bar">

                <ul class="dropdown">
                    <li>
                        <img src="./assets/images/avatar6.png" alt="Avatar" class="avatar"> 
                    </li>
                     <div class="dropdown-content">
                       
                        <a href="<%=request.getContextPath()%>/Profile"> <i class="fa fa-shopping-cart"></i>Profile</a>
                        <a href=""><p>Cart</p></a>
                        <a href=""> <i class="fa fa-shopping-bag"></i>Wishlist</a>
                        <a href=""> <i class="fa fa-shopping-bag"></i>My Orders</a>
                        <a href="<%=request.getContextPath()%>/logout"> <i class="fa fa-shopping-bag"></i>LogOut</a>
                        
                        

                    </div>
                 
                </ul>
            </div>
                          
    </nav>
<%  }
	else{
    	%> 
    
    <nav class="nav-container">
        <div>
        <a href="./assets/images/logo1.png"><img class="logo" src="./assets/images/logo1.png"  alt="logo"></a>
        
        </div>
            <div class="nav_right">

                <input type="text" class="search" name="searchbar" id="search_bar">

                <ul class="dropdown">
                    <li>
                        <img src="./assets/images/avatar6.png" alt="Avatar" class="avatar"> 
                    </li>
                     <div class="dropdown-content">
                       
                        <a href="login.jsp"> <i class="fa fa-shopping-cart"></i>Login</a>
                        <a href="User/new?id="><p>Signup</p></a>
                        <a href="admin"> <i class="fa fa-shopping-bag"></i>Admin
                        </a>

                    </div>
                 
                </ul>
            </div>
                          
    </nav>
    
    <div class="sections">
        <ul>
        <a href="${logo_path}"><li>Home</li></a>
        <a  href="product?category=1"><li>Men</li></a>
        <a href="product?category=2"><li>Women</li></a>
        <a href="product?category=3"><li>Kids</li></a>
        <a href="product"><li>All</li></a>
        
        </ul>
    </div>

<% } %> 
</body>
</html>