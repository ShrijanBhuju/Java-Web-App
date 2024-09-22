<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>

	<link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/View/CSS/navbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/View/CSS/AddProduct.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mochiy+Pop+One&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
	<style>
		/* General styles for the form container */
/* General styles for the form container */
.add-product-form {
    width: 100%;
    max-width: 600px;
    margin: 0 auto; /* Center the form horizontally */
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    font-family: Arial, sans-serif;
    background-color: #04ba80; /* Apply the theme color */
    color: white; /* Set text color to white for contrast */
}

/* Top section containing the form inputs */
.add-product-form .top {
    display: flex;
    flex-direction: column;
}

/* Styling for each section within the form */
.add-product-form .left2 {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

/* Styling for each span containing a label and input/textarea */
.add-product-form span {
    display: flex;
    flex-direction: column;
}

/* Styling for the labels */
.add-product-form label {
    font-weight: bold;
    margin-bottom: 5px;
}

/* Styling for the inputs and textarea */
.add-product-form input[type="text"],
.add-product-form textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 14px;
    resize: none; /* Make the textarea unresizeable */
    color: #333; /* Dark text for better readability */
}

/* Additional styling for the textarea */
.add-product-form textarea {
    height: 100px; /* Default height for textarea */
}

/* Bottom section containing the buttons */
.add-product-form .bottom {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 20px;
}

/* Styling for the submit button */
.add-product-form button[type="submit"] {
    background-color: #028a62; /* Darker shade for the button */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
    transition: background-color 0.3s;
}

/* Hover effect for the submit button */
.add-product-form button[type="submit"]:hover {
    background-color: #026b4c; /* Even darker shade on hover */
}

/* Styling for the cancel link */
.add-product-form .bottom a {
    color: #028a62; /* Match the button background */
    text-decoration: none;
    padding: 10px 20px;
    border-radius: 4px;
    border: 1px solid #028a62; /* Match the button background */
    transition: background-color 0.3s, color 0.3s;
}

/* Hover effect for the cancel link */
.add-product-form .bottom a:hover {
    background-color: #028a62; /* Match the button hover */
    color: white;
}

			
	</style>
</head>
<body>
	 
	<header>
        <span class="logo" onclick="navigateTo('/MediaTech/landing')">MediaTech</span>
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
    <hr>
    <br><br><br><br><br>

    <div class="add-product-form">
        <form action="../addcontact" method="post" enctype="multipart/form-data">
            <div class="top">
                <div class="left2">
                    <span>
                        <label for="prod-name">Contact Details:</label>
                        <input type="text" placeholder="Email or Phone" id="prod-name" name="contact">
                    	<br>
                    </span>
                    
                    <span>
                        <label for="prod-price">Message:</label>
                        <textarea placeholder="Message..." id="prod-price" name='message'></textarea>
                    </span>
                </div>
            </div>
            <div class="bottom">
                <button type="submit" value="Submit">Submit</button>
                <a href="${pageContext.request.contextPath}/">Cancle</a>
            </div>
        </form>
    </div>
    <script>
		function onImageChange(){
			var imageChooser = document.querySelector(".imageChooser");
			var showImage = document.querySelector(".showImage");
			showImage.src = URL.createObjectURL(imageChooser.files[0]);
		}
	</script>
</body>
</html>