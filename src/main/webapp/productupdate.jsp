<%@page import="in.fssa.aaha.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<style>
   * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color: #ffffff;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    width: 400px;
}

h1 {
    font-size: 24px;
    text-align: center;
    margin-bottom: 20px;
}

.form-group {
    margin-bottom: 20px;
}

label {
    font-weight: bold;
    display: block;
    margin-bottom: 5px;
}

input[type="text"],
input[type="number"],
input[type="number"],
textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
}

input[type="text"]:focus,
input[type="number"]:focus,
textarea:focus {
    outline: none;
    border-color: #007bff;
}

button[type="submit"] {
    background-color: goldenrod;
    color: black;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    width: 100%;
    transition: background-color 0.3s ease;
     position: relative;
    border: 1px solid white;
    font-weight: bold;
}

button[type="submit"]:hover {
  background-color: black;
    color: goldenrod;
    transition: 0.3s;
    transform: scale(1.1);}
   
</style>
</head>
<body>

<%  Product product = (Product) request.getAttribute("product");  %>


	<div class="container">
		<h1>Update Product</h1>  
		
			<form action="update" method="post"> 
		<div class="form-group">
		  <label for="name">Product Name:</label>
		<input type="text"  name="name" value="<%=  product.getName() %>">
		</div>
		
		<div class="form-group">
		     	<label for="description">Description:</label><br>
		<textarea  name="description"  required><%=  product.getDescription() %></textarea>
		</div>
		
		<div class="form-group">
		    <label for="price">Price:</label><br>
		<input name="price" type="number"  required value = "<%=  product.getPrice().getPrice()%>"> 
		</div>
	

	<div class="form-group">
		    		<input type="hidden" name="id" value="<%= product.getId() %>" />

		</div>
    		<button type="submit">Submit</button>
    
       
	
		
		
		
	<%-- 	href="product?id==<%=product.getId()%>  --%>
	</form>
	
	</div>

</body>
</html>
>