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
                        <a href="${profile}"> <i class="fa fa-user"></i>
                            Profile</a>
                        <a href="${cart1}"> <i class="fa fa-shopping-cart"></i>Cart 
                        </a>
                        <div class="border-2"></div>

                        <a href="${wishlist}"> <i class="fa fa-heart"></i>Wishlist </a>

                        <div class="border-2"></div>

                        <a href="admin"> <i class="fa fa-shopping-bag"></i>Admin
                        </a>
                        <div class="border-2"></div>

                        <a href="#"><p onclick="logout()">Signout</p></a>
                        <div class="border-2"></div>

                    </div>
                </ul>
            </div>
                          
    </nav>
    
    <div class="sections">
        <ul>
        <a href="${logo_path}"><li>Home</li></a>
        <a href="${men}"><li>Men</li></a>
        <a href="${women}"><li>Women</li></a>
        <a href="${kids}"><li>Kids</li></a>
        </ul>
    </div>
</body>
</html>