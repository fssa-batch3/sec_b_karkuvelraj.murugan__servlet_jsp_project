<%@page import="in.fssa.aaha.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%User user =(User) request.getAttribute("user"); %>
 <form action="update?id=<%=user.getId() %>"method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required value="<%=user.getUserName() %>"><br><br>

        <label for="useremail">Email:</label>
        <input type="email" id="useremail" name="useremail" required  value="<%=user.getEmail() %>"><br><br>

        <label for="userphone">Phone Number:</label>
        <input type="tel" id="userphone" name="userphone" required value="<%=user.getPhoneNumber() %>"><br><br>

        <input  type="submit" value="Submit">
    </form>
</body>
</html>