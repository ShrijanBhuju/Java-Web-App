<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@page import = "java.util.Date"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/View/CSS/navbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/View/CSS/home.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mochiy+Pop+One&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script src="${pageContext.request.contextPath}/View/JS/profile.js"></script>
	<style>
		header{
			position: absolute;
			top: 0;
			left: 0;
			background: none;
		}
	</style>
</head>
<body>
	<c:set var = "time" value="<%=new Date().getTime() %>"/>
    <header>
        <span class="logo" onclick="navigateTo('./')">MediaTech</span>
		<script>
			const navigateTo = (path) => {
				window.location.href = path;
			}
		</script>
        <div class="right">
			<a href="${pageContext.request.contextPath}/View/AddContact.jsp">About Us</a>
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

    <section class="banner">
        <img src="${pageContext.request.contextPath}/View/Images/banner.jpg" alt="">
    </section>

	<script>
		const stock = (qty) =>{
			return qty
		}
	</script>
    <section class="products-section">
        <h2>Products</h2>
        <div class="products">
        	<c:forEach var="pd" items="${productList}">
				<div class="product">
                	<div>
                		<img src="${pageContext.request.contextPath}/Images/${pd.productImagePath}?v=${time}" alt="${pd.productName}">
                	</div>
                	<div>
                		<p>${pd.productName}</p>
						<span><span style="color: rgba(0,0,0,0.5);">Rs. </span>${pd.productPrice }</span>
						<b>Available: ${pd.productQuantity} pcs.</b>
						<span class="add-btn" onclick="addToCart('${pd.id}', '${pd.productName}', '${pd.productPrice}', '${pd.productImagePath}')">Add to Cart</span>
                	</div>
            	</div>
			</c:forEach>
        </div>
    </section>
    <script>
    	var itemsIds = []
    	var cartItems = []
    	const addToCart = (id, name, price, image) => {
    		<%if(session.getAttribute("adminEmail") == null && session.getAttribute("loggedInId") != null){ %>
    		itemsIds.push(id)
    		cartItem = {
    			id: id,
    			name: name,
    			price: price,
    			image: image
    		}
    		cartItems.push(cartItem)
    		cartClicked()
    		<%}else{%>
        		window.location.href = "./View/Login.jsp"
        	<%}%>
    	}
    	var items = ""
    	const orderNow = () =>{
    		itemsIds.forEach((item)=>{
    			items = items.concat(item,":")
    		})
    		return items;
    	}
    	const clicked = () =>{
    		if(orderNow() != ""){
    			document.getElementById("order").href="./order?items="+orderNow();
    		}
    		else{
    			alert("Your Cart Is Empty");
    		}
    		//console.log(orderNow())
    	}

    </script>
</body>
</html>