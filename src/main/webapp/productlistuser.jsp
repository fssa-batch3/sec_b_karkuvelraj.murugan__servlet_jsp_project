<%@page import="in.fssa.aaha.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="in.fssa.aaha.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>
  * {
    transition: all ease-out;
    font-family: 'Sarabun', sans-serif;
    text-decoration: none;


}


section.product-container {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    width: 1000px;
    flex-direction: row;
    /* align-content: space-around;
    justify-content: space-around; */
    align-items: center;
    /* flex-wrap: wrap; */
}


/* ----------------------product container-------------- */

.card {
    border-radius: 10px;
    width: 260px;
    height: 350px;
    border: 1px solid black;
    box-shadow: 5px 7px 18px rgb(187, 185, 185);
    background-position: center top;
    background-size: cover;
    overflow: hidden;
    position: relative;
    margin-left: 50px;
    margin-top: 50px;
}

.card-details {
    position: absolute;
    bottom: 390px;
    left: 0;
    width: 100%;
    height: 100%;
    border-radius: 10px 10px;
    background: linear-gradient(90deg, rgba(192, 193, 193, 0.7)0%, rgba(162, 162, 162, 0.7)50%, rgba(104, 104, 104, 0.7)100%);
    box-shadow: inset -4px -4px 20px rgba(255, 255, 255, 0.35), inset 4px 4px 20px(255, 255, 255, 0.35);
    /* background: linear-gradient(90deg, rgb(181, 178, 170)0%,rgb(168, 162, 145))50%, rgb(182, 173, 151) 100%; */
    transition: 0.3s ease-in-out;
    text-align: center;
    font-weight: bold;
    color: black;
    font-weight: bold;

}
body > section > section > div > div.card-details > h1{
margin-top: 60px;
}
.detail-container{
  position: relative;
  top: 100px;

}

.card:hover .card-title {
    bottom: -75px;
}

.card:hover .card-details {
    bottom: 0;
}

.card button {
    position: absolute;
    top: 75%;
    cursor: pointer;

}
/* --------------------button----------------- */
.buy{
   
    width: 85px;
    height: 35px;
    border-radius: 20px;
    border: 1px solid white;
    font-weight: bold;
}
.btn-cont{

    position: relative;
    right: 40px;
    top: 110px;
}
.buy:hover{
    background-color: black;
    color: goldenrod;
    transition: 0.3s;
    transform: scale(1.1);
}
  .addproduct{
      width: 185px;
    height: 45px;
    border-radius: 20px;
    border: 1px solid white;
    font-weight: bold;
     background-color: goldenrod;
    
  }
  .addproduct:hover{
     background-color: black;
    color: goldenrod;
    transition: 0.3s;
    transform: scale(1.1);
  }

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
      <%
      ProductService matchRequsetService = new ProductService();
      %>
      <%	List<Product> product = (List<Product>) request.getAttribute("product");
       %>
    <section class="product-container">
      <% for(Product products : product){ %>
        <div class="card">
          <div class="card-content">
            <img src="" alt="shirt" width="260px" height="350px">
            <div class="card-title">
            </div>
          </div>
          <div class="card-details">
            <div class="detail-container">
              <h3 class="prodname"><%= products.getName() %></h3>
              <p class="price"><span style="font-size: 15px;">&#8377;</span><%= products.getPrice().getPrice()%> </p>
            </div>
          <div class="btn-cont">
            <a href="product/details?id=<%=products.getId()%>"><button class="buy"  type="submit">Details</button></a>
          </div>
          </div>
        </div>
        <%} %>
      </section>
</body>
</html>