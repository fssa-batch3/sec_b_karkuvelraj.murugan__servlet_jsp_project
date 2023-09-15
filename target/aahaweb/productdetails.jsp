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
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        header {
            background-color: goldenrod;
            color: white;
            text-align: center;
            padding: 10px;
        }

        .product-container {
            max-width: 300px;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .product-image {
            max-width: 100%;
            height: auto;
        }

        .product-title {
            font-size: 24px;
            margin: 10px 0;
        }

        .product-description {
            margin: 10px 0;
        }

        .product-price {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }

        .product-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border: none;
            cursor: pointer;
        }

        .product-button:hover {
            background-color: #555;
        }
      .btn{
    background-color: goldenrod;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    color:black;
    
    
  }
  .btn:hover{
      
     background-color: darkgoldenrod;
  }
    </style>
</head>
<body>
    <header>
        <h1>PRODUCT DETAIL PAGE</h1>
    </header>
    <% Product products = (Product) request.getAttribute("productDetails"); %>

    <div class="product-container">
        <img class="product-image" src="product-image.jpg" alt="Product Image">
        <h2><%= products.getName() %></h2>
        <h4><span style="font-size: 15px;">&#8377;</span><%= products.getPrice().getPrice() %></h4>
        <h4 ><%= products.getDescription() %></h4>
         <a href="/product/edit?id=<%=products.getId()%>"><button class="btn" type="submit">Edit</button></a>
	    <a href="/product/delete?id=<%=products.getId()%>"><button class="btn" type="submit">Delete</button></a>
        
    </div>
</body>
</html>