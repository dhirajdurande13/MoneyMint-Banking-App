<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
  <style type="text/css">
  body{
    background-color:  rgb(234, 227, 227)!important;
   
    
   
  }
  
   .text{
       color: red;
       margin-top:16%;
        text-align: center;
    }
    .link{
    text-decoration:none;
     color: red;
       margin-top:16%;
       margin-left: 40%;
    }</style>
    
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
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
                <a class="nav-link" href="LoginView.jsp">Login Here</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="RegisterView.jsp">Register account</a>
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
		<h1 class="text">Login Succsesfull!</h1>
		<a href="LoginView.jsp" class="link">LogOut</a>
</body>
</html>