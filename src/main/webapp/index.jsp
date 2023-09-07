<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.hero {
  display: flex;
  justify-content: space-evenly;
  align-content: center;
  align-items: center;
  border-radius: 20px;
  width: 1300px;
  margin-top: 50px;
  margin-left: 90px;
  height: 500px;
  box-shadow: 0px 4px 8px 4px rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  background-color: rgba(211, 211, 211, 0.331);
  
}

</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

        <div class="hero">
            <div class="left-col-hero">
                <div>Lowest price</div>
                <h1>Best Quality</h1>
                <p>
                    Welcome to  <strong>AAHA</strong> Shopping 
                </p>
                <button class="btn">Welcome....!</button>
            </div>
            <div class="right-col-hero">
                <img src="./assets/images/Ecommerce campaign-amico.png" width="500px" alt="" srcset="">
            </div>
        </div>

</body>
</html>