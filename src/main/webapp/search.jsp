<%@page import="java.util.List"%>
<%@page import="Bank.model.Register"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank</title>
<style>
  body{
		background-image: url(./bank.jpg);
		height: 500px; /* You must set a specified height */
  /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover; 
    
	}
	nav{
		height: 6em;
	}
	footer {
		position: fixed;
    background-color: #b0c0d3;
    color: black;
    text-align: center;
    
     bottom: 0;
  width: 100%;
}
.intro{
	margin-left: 10em;
	font-family: cursive;
	margin-top: 4rem;
}
.buttons{
	margin-top: 0rem;
	margin-left: 25em;
	
}
.btn{
	padding-left: 4px;
}
.below-buttons{
	margin-top: 10em;
	margin-left: 30em;
}
.f-info-links a{
	text-decoration: none;
	color: black;
}
.details{
margin-left:17em;
font-family: cursive;
}	

</style>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<body>

<nav class="navbar navbar-expand-md bg-body-secondary">
        <div class="container-fluid">
          <a class="navbar-brand" href="Home.html">Bank</a>
         
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="Home.html">Home</a>
              </li>
             
              <li class="nav-item">
                <a class="nav-link" href="RetriveView.jsp">Search account</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="DeleteView.jsp">Delete account</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="UpdateView.jsp">Add Money</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="DisplayController">Display all account</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
       <% 
    Register reg=null;
  		%>
  		 <%if(!session.isNew()){
	List<Register> lstreg=(List<Register>)session.getAttribute("data");
    reg=lstreg.get(0);
    %>
       <section class="hero">
		   <div class="intro">
			    <h1 >Welcome to Bank!:  <%= reg.getCustName() %></h1>
			    
		   </div>
		   <h3 class="details">Register No: <%= reg.getRegNo() %></h3>
            <h3 class="details">Username:  <%=reg.getUsername() %></h3>
		   <h3 class="details">Account Balance: <%=reg.getAccBal() %></td></h3>
		  <h3 class="details">Thank you!</h3>
		   <div class="intro">
			   <p>Thank you for choosing [Bank Name]. We look forward to helping you achieve your financial dreams."</p>
		   </div>
		   
          <% 
    session.invalidate();
    }
  %>
            
        </section>
      <footer>
        <p>&copy; 2023 Bank</p>
         <div class="f-info">
        <div class="f-info-socials">
            <i class="fa-brands fa-square-instagram"></i>
            <i class="fa-brands fa-facebook"></i>
            <i class="fa-brands fa-linkedin"></i>
        </div>
       
        <!-- copyright symbol -->
        <div class="f-info-links">
            <a href="/privacy">privacy</a>
            <a href="/terms">terms</a>
        </div>
    </div>




  
   
   
    
    
  
</body>
</html>