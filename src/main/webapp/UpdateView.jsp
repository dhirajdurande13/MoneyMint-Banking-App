<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank</title>
<style>
 body{
  background-color:  rgb(234, 227, 227)!important;
  background-image: url(./search.jpg);
		height: 500px; /* You must set a specified height */
  /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover;
  }
  .form{
   
       background-color:rgb(222, 241, 222);
      height: 375px;
      width: 500px;
      margin-left: 10%;
      margin-top: 2%;
       border-radius: 36px;
    }
   
   
    .submit{
    margin-left: 100%;
    margin-top: 20%;
     border-radius: 6px;
     background-color:rgb(222, 241, 222);
    }
    .input{
    margin-top: 10px;
    border-radius: 6px;
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
.text{
margin-top: 3rem;
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
      
      <div class="form"> 
   <div class="row mt-5">
   <div class="col-8 offset-2">
   <h2 class="text">Add Money!</h2>
    <form action="UpdateController">
  <table>
  <tr>
	     <td>Enter Account No</td>
	     <td><input type="number" name="regNo" class="input" required></td>
     </tr>
     <tr>
	     <td>Username</td>
	     <td><input type="text" name="username" class="input" required></td>
     </tr>
     <tr>
	     <td>Password</td>
	     <td><input type="text" name="password" class="input" required></td>
     </tr>
    <tr>
	     <td>Amount To Add</td>
	     <td><input type="text" name="accBal" class="input" required></td>
     </tr>
     <tr>
	     
	     <td><input type="submit" value="Add" class="submit"></td>
     </tr>
    
    </table>
    </form>
     </div>
        </div>
        </div>
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
</body>
</html>