<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    *{
    font-family: 'Noto Sans', sans-serif;

}
.nav-container{
  display: flex;
  justify-content: space-around;
  box-shadow: 0 8px 6px -6px rgb(207, 204, 204);
  margin-top: 20px;

}

.nav_right{
  display: grid;
  grid-template-columns: auto auto auto auto;
  column-gap: 60px;
  margin-top: 16px

}

/* ----------------Navigation bar----------------- */
input[type=text] {
  width: 450px;
  border-radius: 10px;
  border: 3px solid #ccc;
  padding: 10px 20px;
  margin: 8px 0;
  outline: none;
}
.logo{
    width: 120px;
    position: relative;
    bottom: 18px;
    left: 20px;
    cursor: pointer;
    top: 1px;
}
.avatar {
    vertical-align: middle;
    width: 50px;
    height: 50px;
    border-radius: 50%;
  }
 /* --------------------drop down--------------------- */
 ul{
  list-style-type: none;
 }
.dropdown {
  position: relative;
  bottom: 10px;
  cursor: pointer;
  /* display: inline-block; */
}
.dropdown-content {
  display: none;
  position: absolute;
  min-width: 200px;
  min-height: 300px;
  box-shadow: rgba(222, 221, 221, 0.928) 0px 4px 18px 4px, rgba(211, 210, 210, 0.794) 0px 3px 0px;  background-color: white;
  top: 40px;
  border-radius: 8px;
  z-index: 1;
}
.dropdown-content a {
  color: black;
  font-weight: bold;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  position: relative;
  top: 40px;
}
.dropdown-content a:hover {
  border-radius: 8px;
  font-size: 17px;
  transform: translateZ(4px);
  transition: 0.2s;
}
.dropdown:hover .dropdown-content {
  display: block;
   margin-top: 13px;
}

.border-1 {
  width: 170px;
  height: 1px;
  background-color: rgba(165, 165, 165, 0.403);
  position: relative;
  left: 16px;
  bottom: 10px;
}
body > nav > div.nav_right > ul > div > a:nth-child(2) > i{
  margin-right: 10px;
}
body > nav > div.nav_right > ul > div > a:nth-child(6) > i{
  margin-right: 10px;
}
body > nav > div.nav_right > ul > div > a:nth-child(4) > i{
  margin-right: 10px;
}
body > nav > div.nav_right > ul > div > a:nth-child(1) > i{
  margin-right: 10px;

}
ul{
  list-style-type: none;
 }
.dropdown-1 {
  position: relative;
  bottom: 10px;
  cursor: pointer;
  /* display: inline-block; */
}
.dropdown-content-1 {
  display: none;
  position: absolute;
  min-width: 200px;
  min-height: 170px;
  box-shadow: rgba(222, 221, 221, 0.928) 0px 4px 18px 4px, rgba(211, 210, 210, 0.794) 0px 3px 0px;  background-color: white;
  top: 40px;
  z-index: 1;
  border-radius: 8px;
}
.dropdown-content-1 a {
  color: black;
  font-weight: bold;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  position: relative;
  top: 20px;
}
.dropdown-content-1 a:hover {
  border-radius: 8px;
  font-size: 17px;
  transform: translateZ(4px);
  transition: 0.2s;
}
.dropdown-1:hover .dropdown-content-1 {
  display: block;
   margin-top: 13px;
}

.border-1 {
  width: 170px;
  height: 1px;
  background-color: rgba(209, 165, 8, 0.814);
  position: relative;
  left: 16px;
  bottom: 30px;
}.border-2 {
  width: 170px;
  height: 1px;
  background-color: rgba(236, 180, 12, 0.819);
  position: relative;
  left: 16px;
  bottom: 10px;
}
.btn{
     background-color: goldenrod;
     border:none;
     font-size:19px;
     font-weight: bold;
     margin-top:5px;
     
  
}


.sections{
  background-color: goldenrod;
  font-size: 20px;
  position: relative;
  bottom: 20px;
  height: 40px;
}
ul{
  display: flex;
  color: black;
  font-weight: bold;
  justify-content: center;
}
body > div > ul > li:nth-child(1),li:nth-child(2),li:nth-child(3),li:nth-child(4){
  padding-right: 68px;
  position: relative;
  top: 5px;

}
</style>
</head>
<body>
     <nav class="nav-container">
        <div>
            <img class="logo" src="./assets/images/logo1.png"  alt="logo">
        </div>
            <div class="nav_right">

                
                <ul class="dropdown-1">
                    <li>
                        <h3 class="Category">Categories</h3>                        

                    </li>

                    <div class="dropdown-content-1">
                        <a href="#"> 
                            Men</a>
                        <a href="#"> Women 
                        </a>
                        <div class="border-1"></div>

                        <a href="#">Kids </a>

                        <div class="border-1"></div>

                    </div>
                </ul>
                <div class="search"><input type="text" name="searchbar" id="search_bar"></div>

                <ul class="dropdown">
                    <li>
                        <img src="./assets/images/avatar6.png" alt="Avatar" class="avatar"> 

                    </li>

                    <div class="dropdown-content">
                        <a href="#"> <i class="fa fa-user"></i>
                            Profile</a>
                        <a href="#"> <i class="fa fa-shopping-cart"></i>Cart 
                        </a>
                        <div class="border-2"></div>

                        <a href="#"> <i class="fa fa-heart"></i>Wishlist </a>

                        <div class="border-2"></div>

                        <a href="#"> <i class="fa fa-shopping-bag"></i>My Orders
                        </a>
                        <div class="border-2"></div>

                        <a href="#">Signout</a>
                        <div class="border-2"></div>

                    </div>
                </ul>
            </div>
        
                          
    </nav>
    <div class="sections">
        <ul>
            <li>Home</li>
            <li>Men</li>
            <li>Women</li>
            <li>Kids</li>
            <a class ="admin" href="admin"><button class="btn" type="submit" value="Submit">Admin</button></a> 
            
        </ul>
    </div>
</body>
</html>