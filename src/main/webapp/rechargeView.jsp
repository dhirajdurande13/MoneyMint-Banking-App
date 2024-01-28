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
      height: 500px;
      width: 500px;
      margin-left: 10%;
      margin-top: 0px;
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
margin-top: 1rem;
}
#dropdown{
  width:50%;
}
.input{
border:none;
width:60%;
height:50%;

}
.register {
      margin-left: 27%;
     text-decoration:none;
      color: black;
    }	
    
     .formRecharge{
   
      background-color:rgb(222, 241, 222);
      height: 300px;
      width: 500px;
      margin-left: 50%;
      margin-top: 2%;
       border-radius: 36px;
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
      <div class="allForm">
      <div class="form"> 
   <div class="row mt-5">
   <div class="col-8 offset-2">
   <h2 class="text">Recharge!</h2>
    <form action="rechargeController">
          <div class="mb-1">
            <label for="exampleInputEmail1" class="form-label" name="username"
              >Username</label
            >
            <input
              type="text"
              class="form-control"
              id="username"
              name="username"
              aria-describedby="emailHelp"
              required
            />
          </div>
          <div class="mb-1">
            <label for="exampleInputPassword1" class="form-label" name="password"
              >Password</label
            >
            <input
              type="text"
              class="form-control"
              id="password"
              name="password"
              required
            />
          </div>
          <div class="mb-1">
            <label for="exampleInputPassword1" class="form-label" name="mobile"
             >Mobile Number</label
            >
            <input
              type="number"
              class="form-control"
              id="mobile"
              name="mobile"
              required
               max="9999999999" min="1000000000" pattern=[0-9]{1}[0-9]{9}
            />
          </div>
          <div class="mb-1">
            <label for="exampleInputPassword1" class="form-label" name="operator"
              >Operator</label
            >
            <select type="text"
              class="form-control"
              id="operator"
              name="operator"
              required
             >
              	<option value="" disabled selected hidden>Select operator</option>
    			<option value="Jio">Jio</option>
   				<option value="Vi">Vi</option>
   				<option value="Airtel">Airtel</option>
  			</select>
          </div>
          
          <div class="mb-1">
            <label for="exampleInputPassword1" class="form-label" name="plans"
              >Plans</label
            >
            <select type="text"
              class="form-control"
              id="plan"
              name="plans"
              required
             >
              	<option value="" disabled selected hidden>Select plan</option>
    			<option value="15">15Rs 1Gb Validity:Basic plan</option>
    			<option value="61">61Rs 6Gb Validity:Basic plan</option>
   				<option value="249">249Rs 1.5Gb/Day Unlimited calls Validity:28 Days</option>
   				<option value="299">299Rs 2Gb/Day Unlimited calls Validity:28 Days</option>
   				<option value="699">699Rs 1.5Gb/Day Unlimited calls Validity:84 Days</option>
   				<option value="719">719Rs 2Gb/Day Unlimited calls Validity:84 Days</option>
   				<option value="2999">2999Rs 2.5Gb/Day Unlimited calls Validity:365 Days</option>
  			</select>
          </div>
         
          <button type="submit" class="btn btn-secondary" >Recharge</button>
           <a href="rechargeHistoryController" class="register">Recharge History</a>
        </form>
    <%! String str=""; %>
    <%  
       if(!session.isNew())
       {
    	   String str=(String)session.getAttribute("result");
    	  %>
    	  
    	  <h5><%=str %></h5>
    	  
    	  <% 
       }
        session.invalidate();
       %>
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