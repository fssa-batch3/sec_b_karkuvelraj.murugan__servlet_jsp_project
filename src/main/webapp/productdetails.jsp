<%@page import="in.fssa.aaha.model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="icon" type="image/x-icon" href="https://iili.io/J9HTxWb.png">
<title>Product Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 80%;
        margin: 20px auto;
        background-color: #fff;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        padding-botton:50px;
        height:100%;
    }
    .header {
        background-color: green;
        color: #fff;
        padding: 10px;
        text-align: center;
    }
    .product-details {
        display: flex;

        align-items: flex-start;
        padding: 50px 20px;
        width:80%;
        
    }
    img {
        width: 450px;
        height: 400px;
        margin-right: 20px;
    }
    .product-info {
        margin-left:6vw;
        
    }
    .product-name {
        font-size: 35px;
        font-weight: bold;
        color:#5e6f22;
            margin-top: 100px;
    }
    .description {
        margin-top: 20px;
         font-size: 25px;
         width:500px;
    }
    .buy-button {
        margin-top: 20px;
        
    }
    .description {
        margin-top: 5vh;
           margin-left:6vw;
           width:80%;
    }
  
</style>
</head>
<body>
<% Product product = (Product) request.getAttribute("productDetails"); %>
  
    <table border="1">
        <tr>
            <th>Product Name</th>
            <th>Price</th>
            <th>Description</th>
        </tr>
        <tr>
            <td><%= product.getName() %></td>
            <td><%= product.getPrice() %></td>
            <td><%= product.getDescription() %></td>
        </tr>
    </table> 
      <div class="button-container">
			<a href=""><button class="button edit" type="submit" value="Submit">BUY NOW</button></a>
        </div>
</body>
</html>