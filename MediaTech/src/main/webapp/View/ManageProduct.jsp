<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ page import="java.util.Date" %>
  
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <style>
        /* Table styling */
.product-table {
    width: 100%;
    margin-top: 20px;
}

.product-table th,
.product-table td {
    padding: 12px 15px;
    text-align: left;
    border: 1px solid white;
}

.product-table th {
    background-color: #039164; /* Header background color */
    color: white; /* Header text color */
}

.product-table tr:nth-child(even) {
    background-color: #f2f2f2; /* Even row background color */
}

.product-table tr:hover {
    background-color: #ddd; /* Hover row background color */
}

/* Optional: Style for product images */
.product-table img {
    display: block;
    max-width: 100px;
    max-height: 100px;
    border-radius: 5px;
}

/* Optional: Style for edit/delete links */
.product-table a {
    color: #039164; /* Link color */
    text-decoration: none;
}

.product-table a:hover {
    text-decoration: underline;
}
td div{
	display: inline-block;
}
      </style>
      <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/View/CSS/navbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/View/CSS/AddProduct.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mochiy+Pop+One&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>

    <body>
      <header>
        <span class="logo" onclick="navigateTo('./')">MediaTech</span>
		<script>
			const navigateTo = (path) => {
				window.location.href = path;
			}
		</script>
		
		<div class="center">
      <a href="${pageContext.request.contextPath}/admin-page">Orders</a>
      <a href="${pageContext.request.contextPath}/manageusers">Users</a>
      <a href="${pageContext.request.contextPath}/View/AddProduct.jsp">Add Product</a>
      <a href="${pageContext.request.contextPath}/manageproducts">Products</a>
      <a href="${pageContext.request.contextPath}/view-contacts">Contacts</a>
  </div>
    
        <div class="right">
        <form action="${pageContext.request.contextPath}/search" class="search-bar">
                <input type="text" name = "item-name" class="search-field" placeholder="Search this Website" onclick="searchClicked()">
                <input type="submit" id="search">
                <label for="search"><i class='bx bx-search-alt-2'></i></label>
            </form>
            <script>
            	const searchClicked = ()=>{
            		document.querySelector(".search-result").style.top="70px";
            		document.querySelector(".search-result").style.opacity="1";
            	}
            </script>
            
            <script>
    			const select = document.querySelector(".dropbtn")
    			const option = document.querySelector(".dropdown-content")
		        		
		    	select.addEventListener("mouseenter", ()=>{
    				option.style.display = "block";
    				option.style.top="80px";
    				option.style.opacity = "1";
    			})
    			option.addEventListener("mouseleave", ()=>{
    				option.style.top="-20%";
    				option.style.opacity = "0";
    			})
			</script>
            <div class="icons">
                <div class="cart" onclick="cartClicked()">
                    <img src="${pageContext.request.contextPath}/View/Images/shopping-cart.png" alt="">
                </div>
                <div class="profile" onclick="profileClicked()">
                    <img src="${pageContext.request.contextPath}/View/Images/user.png" alt="">
                </div>
            </div>
        </div>
        <div class="profile-section">
        	<div class="top">
                <h1>User Profile</h1>
                <i class='bx bx-x' onclick="profileClicked()"></i>
            </div>
        	<% String email = null;
        	if(session.getAttribute("loggedInId") == null){ 
        	%>
            	<div class="middle">
	                <a href="${pageContext.request.contextPath}/View/AdminLogin.jsp">Login as Admin</a>
                	<a href="${pageContext.request.contextPath}/View/Login.jsp">Login as User</a>
        	<%} else{
        		email = session.getAttribute("loggedInId").toString();
        	%>
        		<h1 class="intro">You are Logged In as <%= email %></h1>
        		<%if(session.getAttribute("adminEmail") != null){%>
        			<a href="${pageContext.request.contextPath}/admin-page" class="admin-btn">Admin Page</a><br/>
        			<a href="${pageContext.request.contextPath}/index.jsp" class="admin-btn">Return to Home</a><br/>
        		<%}%>
        		
        		<%if(session.getAttribute("adminEmail") == null && session.getAttribute("loggedInId") != null){%>
         			<a href="${pageContext.request.contextPath}/editProfile?email=<%=email%>" class="edit-profile-btn">Edit Profile</a><br/>
 
        		<%}%>
        		
        		<a href="${pageContext.request.contextPath}/logout" class="logout-profile-btn">Log Out</a>
        	<%} %>
        	</div>
        </div>
        
        <div class="cart-section">
        	<div class="top">
                <h1>Cart</h1>
                <i class='bx bx-x' onclick="profileClicked()"></i>
            </div>
        	<div class="middle" id="middle">
				
            </div>
        	<div class="lower">
        		<span><p class="index">Total Price: </p><p class="total-price"></p></span>
        		<a href="" id = "order" onclick="clicked()">Order Now!</a>
        	</div>
        </div>
        <script>
            const profileClicked = () =>{
                const btn = document.querySelector(".profile")
                const mainDiv = document.querySelector(".profile-section")
                const cross = document.querySelector(".profile-section .top i")
                btn.addEventListener("click", ()=>{
                    mainDiv.classList.add("active");
                })
                cross.addEventListener("click", ()=>{
                    mainDiv.classList.remove("active");
                })
            }
            
            const cartClicked = () =>{
            	<%if(session.getAttribute("adminEmail") == null && session.getAttribute("loggedInId") != null){ %>
                const btn = document.querySelector(".cart")
                const mainDiv = document.querySelector(".cart-section")
                const cross = document.querySelector(".cart-section .top i")
                btn.addEventListener("click", ()=>{
                    mainDiv.classList.add("active");
                })
                cross.addEventListener("click", ()=>{
                    mainDiv.classList.remove("active");
                })
                
                
                let cartDisplay = document.getElementById("middle");
				let totalPriceDisp = document.querySelector(".lower .total-price");
                // Create an empty string to store the HTML content
                let cartHtml = "";
				let totalPrice = 0;
                // Loop through the cart object and generate HTML for each item
                cartItems.forEach((item) => {
                  cartHtml += `
                	<div class="item">
  						<img src=/MediaTech/Images/`+item.image+`?v=${time}/>
  						<span>
  							<h3>`+item.name+`</h3>
	  						<p>Price: Rs. `+item.price+`</p>
	  					</span>
  					</div>
                  `;
                  totalPrice += parseInt(item.price);
                })
                

                // Set the innerHTML of the cart display element to the generated HTML content
                cartDisplay.innerHTML = cartHtml;
                totalPriceDisp.innerText = totalPrice;
                <%}else{%>
                	alert("You should be logged in as user.")
                	window.location.href = "./View/Login.jsp"
                <%}%>
                
            }
            
        </script>
    </header>
    <hr>
   
      <div style="padding:50px;">
        <table class="product-table">
          <tr>          
            <th>Product Name</th>
            <th>Total Quantity</th>
            <th>Product Price</th>
            <th>Product Image</th>
            <th>Edit/Delete</th>
          </tr>
          <c:forEach var="st" items="${productList}">
            <tr>              
              <td>${st.productName}</td>
              <td>${st.productQuantity}</td>
              <td>${st.productPrice}</td>
              <td><img src="Images/${st.productImagePath}" alt="Images/${st.productImagePath}" height="100px" width="100px"></td>
              <td>
                <div style="margin:10px;">
                  <a href="${pageContext.request.contextPath}/editproducts?id=${st.id}">Edit</a>
                </div>
                <div style="margin:10px;">
                  <a href="${pageContext.request.contextPath}/deleteproducts?id=${st.id}">Delete</a>
                </div>
              </td>
            </tr>
          </c:forEach>

        </table>
      </div>
      <script>

      </script>
    </body>

    </html>