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
<style>
      table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        
        th {
            background-color: #f2f2f2;
        }
        
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
  <h1>PRODUCT LIST</h1> <a href="product/new?id="><button class="addproduct" type="submit">Add New Product +</button></a>
      <%
      ProductService matchRequsetService = new ProductService();
      %>
      <%	List<Product> product = (List<Product>) request.getAttribute("product");
       %>
     
        <table>
        
            <tr>
                <th>Product Name</th>
                <th>Product Price</th>
                <th>update</th>
                <th>Remove</th>
                
            </tr>
            <tr>
             <% for(Product products : product){ %>
                <td><%= products.getName() %></td>
                <td><%= products.getPrice().getPrice()%></td>
                <td><a href="product/edit?id=<%=products.getId()%>"><button class="btn" type="submit">Edit</button></a></td>
                <td><a href="product/delete?id=<%=products.getId()%>"><button class="btn" type="submit">Delete</button></a></td>
            </tr>
               <%} %>
    </table>
      
     
  
      
</body>
</html>