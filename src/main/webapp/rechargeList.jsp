<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Bank</title>
<style>
 .text{
       
       margin-top:1%;
        text-align: center;
    }
body{
 
  background-image: url(./search.jpg);
		height: 500px; /* You must set a specified height */
  /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover; 
  }
  
   .table{
       padding-left: 2em;
       margin-left: 18em;
       margin-top: 3em;
   }
   .table th{
      background-color: #b0c0d3;
       border:2px solid black;
       padding-left: 4em;
       padding-top: 1em;
       padding-bottom: 1em;
       padding-right: 4em;
   }
   .table td{
      background-color:rgb(222, 241, 222,1);
       border:2px solid black;
       padding-left: 4em;
       padding-top: 0.5em;
       padding-bottom: 0.5em;
       padding-right: 4em;
       
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
    <h1 class="text">Recharge History!</h1>
<c:if test="${requestScope.recList  !=null and not empty requestScope.recList}">
   <div class="table"> <table border="1" cellpadding="3">
        <tr>
          <th>USERNAME</th>
          <th>MOBILE NO</th>
          <th>OPERATOR</th>
          <th>PLANS</th>
         
         
        </tr>
      <c:forEach items="${requestScope.recList}" var="e">  


          <tr>
          <td>${e.username }</td>
          <td>${e.mobile}</td>
          <td>${e.operator }</td>
           <td>${e.plan }</td>
         
          
        </tr>
        </c:forEach>
      </table></div>
     </c:if>
</body>
</html>