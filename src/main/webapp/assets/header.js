const rootpath = window.location.origin;
const logo = `${rootpath}/assets/images/logo1.png`;
const logo_path = `${rootpath}/index.html`;
const signup = `${rootpath}/pages/homepage/sign-up.html`;
const signin = `${rootpath}/pages/homepage/login.html`;
const cart1= `${rootpath}/pages/homepage/cart.html`;
const wishlist = `${rootpath}/pages/homepage/wish.html`;
const men = `${rootpath}/pages/product categories/men.html`;
const women = `${rootpath}/pages/product categories/women.html`;
const kids = `${rootpath}/pages/product categories/kids.html`;
const admin = `${rootpath}/pages/homepage/seller.html`;
const about = `${rootpath}/pages/homepage/about.html`;
const profile = `${rootpath}/pages/homepage/profile.html`;
const avatar =`${rootpath}/assets/images/avatar6.png`


const after_login = `<nav class="nav-container">
        <div>
        <a href="${logo_path}"><img class="logo" src="${logo}"  alt="logo"></a>
        
        </div>
            <div class="nav_right">
                <ul class="dropdown-1">
                    <li>
                        <h3 class="Category"><a href="${admin}">Admin</a></h3>
                    </li>
                </ul>
                <ul class="dropdown-1">
                <li>
                    <h3 class="Category"><a href="${about}">About</a></h3>
                </li>
            </ul>
                <input type="text" class="search" name="searchbar" id="search_bar">

                <ul class="dropdown">
                    <li>
                        <img src="${avatar}" alt="Avatar" class="avatar"> 
                    </li>
                    <div class="dropdown-content">
                        <a href="${profile}"> <i class="fa fa-user"></i>
                            Profile</a>
                        <a href="${cart1}"> <i class="fa fa-shopping-cart"></i>Cart 
                        </a>
                        <div class="border-2"></div>

                        <a href="${wishlist}"> <i class="fa fa-heart"></i>Wishlist </a>

                        <div class="border-2"></div>

                        <a href="${wishlist}"> <i class="fa fa-shopping-bag"></i>My Orders
                        </a>
                        <div class="border-2"></div>

                        <a href="#"><p onclick="logout()">Signout</p></a>
                        <div class="border-2"></div>

                    </div>
                </ul>
            </div>
                          
    </nav>
    
    <div class="sections">
        <ul>
        <a href="${logo_path}"><li>Home</li></a>
        <a href="${men}"><li>Men</li></a>
        <a href="${women}"><li>Women</li></a>
        <a href="${kids}"><li>Kids</li></a>
        </ul>
    </div>`;

const before_login = ` <nav class="nav-container">
<div>
    <img class="logo" src="${logo}"  alt="logo">
</div>
    <div class="nav_right">

        
    <ul class="dropdown-1">
    <li>
        <h3 class="Category"><a href="${admin}">Admin</a></h3>
    </li>
</ul>
<ul class="dropdown-1">
<li>
    <h3 class="Category"><a href="${about}">About</a></h3>
</li>
</ul>
<div ><input class="search"  name="searchbar" id="search_bar"></div>

<ul class="dropdown">
    <li>
        <img src="${avatar}" alt="Avatar" class="avatar"> 

    </li>

            <div class="dropdown-content">
                <a href="${signup}"> <i class="fa fa-user"></i>
                    Sign up</a>
                    <a href="${signin}"> <i class="fa fa-user"></i>
                    Log in</a>
            </div>
        </ul>
    </div>
                  
</nav> 
<div class="sections">
<ul>

<a href="${logo_path}"><li>Home</li></a>
<a href="${men}"><li>Men</li></a>
<a href="${women}"><li>Women</li></a>
<a href="${kids}"><li>Kids</li></a>
</ul>
</div> `


const userId = JSON.parse(localStorage.getItem("userId"));
if(userId){
    document.body.insertAdjacentHTML("afterbegin", after_login)
}
else{
    document.body.insertAdjacentHTML("afterbegin", before_login)
}


function logout() {
    if (confirm("Are you sure to log out")) {
        localStorage.removeItem("userId");
        window.location.href = `${rootpath}/index.html`;
    }
}
