<%@page import="in.fssa.aaha.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="in.fssa.aaha.service.ProductService"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Product list</h1>
	<%
	ProductService matchRequsetService = new ProductService();
	%>
	<%	List<Product> product = (List<Product>) request.getAttribute("product");
	 %>
	<table border="1">
		<tr>
			<th>Product Name</th>
			<th>Product Price</th>
			<th>Product Description</th>
	     	<th>CategoryId</th>
			
			
		</tr>
		<% for(Product products : product){ %>
		<tr>
			<td><%= products.getName() %></td>
			<td><%= products.getPrice() %> </td>
			<td><%= products.getDescription() %> </td>
			<td><%= products.getCategory_id() %></td>
			<td><a href="product/details?id=<%=products.getId()%>"><button type="submit">Details</button></a></td>
		   <td><a href="product/edit?id=<%=products.getId()%>"><button type="submit">Edit</button></a></td>
			<td><a href="product/delete?id=<%=products.getId()%>"><button type="submit">Delete</button></a></td>
		</tr>
		<%} %>
	
	</table>
  </body>
</html>