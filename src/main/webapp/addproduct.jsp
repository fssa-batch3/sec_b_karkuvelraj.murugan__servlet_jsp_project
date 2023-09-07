<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AAHA</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
  }
  .container {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
    width: 300px;
  }
  .form-group {
    margin-bottom: 15px;
  }
  label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
  }
  input[type="text"], textarea {
    width: 70%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
   input[type="number"], textarea {
    width: 70%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
   input[type="url"], textarea {
    width: 70%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
  
   select {
      width: 230px;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 16px;
    }

    /* Style the option elements */
    option {
      background-color: #3498db;
      color: #ffffff;
      font-size: 14px;
    }
  textarea {
    height: 100px;
  }
  button {
    background-color: #007bff;
    color: #ffffff;
    border: none;
    border-radius: 4px;
    padding: 10px 20px;
    cursor: pointer;
    margin-top:20px;
  }
  button:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>

  <div class="container">
  
    <h2>Add Product</h2>
    
	<form action="create" method="post">
		<label>Product Name:</label>
		 <input value="Blue" type="text" name="name"
			required="true"> 
			<label>Product Description:</label> 
			<input
			type="text" value="Men Regular Fit Solid Spread Collar Formal Shirt" name="product_Description" required="true">
			 <label for="product_category">Product Category:</label>
<select name="product_category" id="product_category" required="true">
    <option value="1">MEN</option>
    <option value="2">WOMEN</option>
    <option value="3">KIDS</option>
  </select>
 <label>Price:</label> <input value="499" type="number"
			name="price" required> 
			<label>Image URL:</label> <input
			type="url" name="image_url" required>

		<button type="submit">Submit</button>
	</form>
  </div>
</body>
</html>






