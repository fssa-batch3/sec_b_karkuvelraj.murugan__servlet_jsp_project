<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.aaha.service.ProductService"%>
<%@page import="in.fssa.aaha.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="ISO-8859-1">
<title>List Of Products</title>
<style>
  table {
    border-collapse: collapse;
    width: 100%;
  }

  th, td {
    border: 1px solid #dddddd;
    text-align: center;
    padding: 8px;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  th {
    background-color: #4CAF50;
    color: white;
  }

  td a {
    text-decoration: none;
  }

  button {
    background-color: #008CBA;
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
  }

  button:hover {
    background-color: #005F7D;
  }
</style>
</head>
<body>

	<%
	ProductService productList = new ProductService();
	%>
	<%
	List<Product> listProducts = productList.ListAllProducts();
	%>

	<table border=1>
	
		<%
		for (Product products : listProducts) {
		%>
		<tr>
			<td><%=products.getId()%></td>
			<td><%=products.getName()%></td>
			<td><%=products.getDescription()%></td>
			<td><%=products.getPrice().getPrice() %></td>
			<td><a href="product/view?id=<%=products.getId()%>"><button type="submit">View</button></a>
			<td><a href="product/edit?id=<%=products.getId()%>"><button type="submit">Update</button></a></td>
			<td><a href="product/delete?id=<%=products.getId()%>"><button type="submit">Delete</button></a></td>
		</tr>
		
		<%
		}
		%>

	</table>
</body>
</html>