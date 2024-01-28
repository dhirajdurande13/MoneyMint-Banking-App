<%@page import="org.apache.catalina.Session"%>

<%@page import="Bank.model.Register"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank</title>
 <style type="text/css">
   .body{
      background-color: transparent;
      background-image:url("./search.jpg")!important;
		height: 500px; /* You must set a specified height */
  /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover; 
   }
   
   .text{
       
       margin-top:1%;
        text-align: center;
    }
    .table{
    border:1px solid black !important;
 
      
      padding:1px 1px 1px 1px;
      margin-top:3%;
      border-radius:30px;
      
       
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
  .f-info-links a{
	text-decoration: none;
	color: black;
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
                <a class="nav-link" href="RetriveView.jsp">Check Balance</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="DeleteView.jsp">SignOut</a>
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
    </footer>
      <div class="container">
		<h1 class="text">All Accounts!</h1>
  <table border="1" class="table">
  
  <tr>
    <th>Reg No</th>
    <th>Cust Name</th>
    <th>Username</th>
    <th>Balance</th>
  </tr>
   <%
   List<Register> lst=null;
  Register reg=null;
   %>
   <%
      lst=(List<Register>)session.getAttribute("data");
       reg=lst.get(0);
   if(!session.isNew())
   {
	  
	  
	   for(Register regp:lst)
	   {
		   %>
		 
		   <tr>
		   <td><%= regp.getRegNo() %></td>
		   <td><%= regp.getCustName() %></td>
		   <td><%= regp.getUsername() %></td>
		   <td><%= regp.getAccBal()  %></td>
		   </tr>
		   
		   
		   <%
	   }
	   session.invalidate();
   }
   %>
   </table>
   </div>
</body>
</html>