# Aaha

## Database Design

- [ ] Create an ER diagram of the database
- [ ] Write Create table scripts [script](path/to/sql/file)

![ER Diagram](https://iili.io/HDJIYmJ.png)

## Project Setup

- [ ] Create a new Java project
- [ ] Set up a MySQL database
- [ ] Add necessary libraries
- [ ] 	 JDBC, 
- [ ] MySQL Connector, 
- [ ] JUnit, 
- [ ] Dotenv

## Module: Price

### Feature 1: Create Price
> Create price in price table
#### Pre-requisites:
- [ ] Complete product module
- [ ] create price table 
- [ ] price model
- [ ] price DAO(Create Price)
- [ ] price service (Create Price)

#### validations:
- [ ] form validation
    - price (empty)
    - price > 0 &&  price < 5000
- [ ] Business validation:
-  check whether the Product id exists
    
#### Messages:
  *  Price cannot be null
  * Price should be 0 to 5000
  * Product not found 
   
#### Flow:

```mermaid
graph TD;
  A[Product Service: Create Product] --> B[Form Validation]
  B -- Valid --> C[Product DAO : Create Product]
  C --> D[Price Service : Create Price]
  D --> E("business Validation<br/>(Product_id (exists )")
  E-- Valid --> F[Price DAO : Create Price]
  E-- invalid --> G[Price Service :Product Price already exists]
  B -- invalid --> g[Product Service : Invalid Product Details]
  ```


## Module: 2 product
   
### Feature 1: Create product

#### Pre-requisites:
 - [ ] create products table
 - [ ] product model
 - [ ] product service  (create)
 - [ ] product DAO  (create)
 - [ ] price model
 - [ ] price service (create)
 - [ ] price DAO(create) 
 
#### validations:
- [ ] form validation
    - product null
    - name (null,empty)
    - description (null,empty)
    - description ( length, >= 10 && <= 1000)
    - price (empty)
    - price > 0 &&  price < 5000


#### Messages:

  * Product cannot be null   
  * Product name cannot be null or empty
  * Product description cannot be null or empty
  * Price cannot be empty
  * Price does not match the pattern


#### Flow:

```mermaid
graph TD;
  A[Product Service: Create Product] --> B[Form Validation]
  B --Valid --> C[Product DAO : Create Product]
  C --> D[Price Service : Create Price]
  D --> E("business Validation<br/>(Product_id (exists )")
  E-- Valid --> F[Price DAO : Create Price]
  E-- Invalid --> G[Price Service :Product Price already exists]
  F --> H[Price Service : Product created]
  B -- Invalid--> g[Product Service : Invalid Product Details]
  ```


### Feature 2: List all products

#### Pre-requisites:
 - [ ] Complete the category module.
 - [ ] Complete the price module.
 - [ ] Create the products table.
 - [ ] product model
 - [ ] Product service ( ListAllproducts )
 - [ ] Product DAO ( ListAllproducts )

#### Flow:

```mermaid  

graph TD;  
A(Product Service : listAll) --> B( Product DAO: listAll)  
B --> C(Product Service : List of Products)  
```


### Feature 3: Update product details

>Update product details in product table

#### Pre-requisites:
 - [ ] complete product(create) module
 - [ ] complete category module
 - [ ] product model
 - [ ] product service (Update product details)
 - [ ] product DAO (Update product details)

#### Validations:
 - [ ] Form validation
    - Product input validation(product_id,name,description)
 - [ ] business validation
   -  check whether the Product id exists

#### Messages:

  * Product id should be above 0
  * Product name cannot be null or empty
  * Product description cannot be null or empty
  * Product doesn't exist.

### Flow:

```mermaid

graph TD;

  A[product Service: Update product Details] --> B[Form Validation]
  B -- Valid --> C(business validaton)
  C --- Valid --> D["product Dao : Update product Details"]
  D --> E["product Service: Product Details Updated"]
  C --- Invalid --> F["Product Service : Product does not exist"]
  B -- Invalid --> G["Product Service : Invalid input"]
  ```

### Feature 3 : Delete Product:
​	Product successfully deleted.

### Pre-requisites:
- [ ] Product DAO(delete Product )  
- [ ] complete Product module
- [ ] Product DAO( delete )
- [ ] Product service ( delete )

#### Validations:  

- [ ]  Form Validation 
    * product_id <= 0
	* name(null, empty, pattern)
- [ ] Business Validation  
	* Product_id (exist)

#### Messages:  

* Invalid productId
* productId is  not found  

#### Flow:  

```mermaid  

graph TD;  
A(ProductService - Dlelete product) --> B(Form Validation) -- Valid --> C(Business Validation)  
B -- Invalid --> H(Validation Ecxeption)
C -- Valid --> D(ProductDAO)  
D --> F(Set is_active=false in Database)  
C -- Invalid --> G(Validation Exception)
```

### Feature 5: Update product price
  >Update product price in prices table in Database

#### Pre-requisites:
 - [ ] complete price module
 - [ ] complete products module.
 - [ ] price model
 - [ ] price service (update End_date ) 
 - [ ] price DAO(update End_date ) 
 - [ ] price service (create price) 
 - [ ] price DAO(create price) 

#### Validations:

 - [ ] Form validation
    - Product price input validation(product_id,price)
     - price (empty)
    - price > 0 &&  price < 5000
 - [ ] business validation
     - Product already exist (if product id )
     - Product price already exist (if the end date exists)

#### Messages:
  * Product id should be above 0
  * Product name cannot be null or empty
  * Product description cannot be null or empty
  * Product_id does not exists
  * Product price already exists

#### Flow:
```mermaid
graph TD;
  A[price Service: Update product price] --> B[Form Validation]
  B -- yes --> C("business validaton( Product_id already Exist)")
  C --- Yes --> F(Business validation : price id exist)
  F---yes --> Z["Price Service: Update end price"]
Z --> G["Price Service: create price"]
  G--> H["Price DAO: create price"]
  H--> I["Price Service: Product Price Created"]
F---No--> J["Price Service: price id not exist"]
  C -- No --> K["Price Service : Product does not exist"]
  B -- No --> L["Price Service : Invalid input"]
  ```

### Feature 6: list all products by category_id

>Find all products by category_id from  Database

#### Pre-requisites:
 - [ ] complete category module
 - [ ] complete price module
 - [ ] create product model
 - [ ] category model
 - [ ] price table
 - [ ] product model
 - [ ] product service (find all products by category_id)
 - [ ] product DAO (find all products by category_id)

#### Validations:
 - [ ] Form validation
    - Category id<=0
 - [ ] business validation
     - Check whether the CategoryId is available in the category table.
    
#### Messages:
  * category id should be above 0
  * Category_id does not exists

#### Flow:
```mermaid

graph TD;

  A[Product Service: Find all products by category_id] --> B[Form Validation]

  B---yes--> C("business validaton(Category_id already Exist)")

  C -- Yes --> D["Product Dao : Find all products by category_id"]

  D --> E["Product Service: Found all products by category_id"]

  C -- No --> F["Product Service : Category does not exist"]

  B --- no --> G["Product Service : Invalid category_id"]

  ```
