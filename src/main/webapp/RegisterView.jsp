<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
   <style>
  body{
  background-color:  rgb(234, 227, 227)!important;
   background-image: url(./login2.jpg);
   background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover;
  }
  
   
    .form{
   
      background-color:#e1eeef;
      height: 600px;
      width: 500px;
      margin-left: 30%;
      margin-top: 2%;
       border-radius: 36px;
    }
    .submit{
    margin-left: 100%;
    margin-top: 20%;
     border-radius: 6px;
     background-color: rgb(242, 236, 159) ;
    }
    .input{
    margin-top: 10px;
    border-radius: 6px;
    }
    .text{
    margin-top: 4rem;
    }
    
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<body>
  
      <div class="form"> 
   <div class="row mt-5">
   <div class="col-8 offset-2">
   <h2 class="text">Create new account!</h2>
           <form action="RegisterViewController" >
  <table>
     
     <tr>
     
         <td>Enter Register No</td>
	     <td><input type="number" name="regNo" class="input" required></td>
	    
     </tr>
    
      <tr>
	     <td>Enter Customer Name</td>
	     <td> <input type="text" name="custName" class="input" required></td>
     </tr>
    
     <tr>
	     <td>Enter username</td>
	     <td><input type="text" name="username" class="input" required></td>
     </tr>
    
      <tr>
	     <td>Enter Password</td>
	     <td> <input type="password" name="password" class="input" required></td>
     </tr>
    
    <tr>
	     <td>Enter Balance</td>
	     <td><input type="text" name="accBal" class="input" required></td>
     </tr>
    
     <tr>
	     
	     <td><input type="submit" value="Register" class="submit" onclick="preventBack()"></td>
	     
     </tr>
   
    </table>
    </form>
         <%! String str=""; %>
    <%  
       if(!session.isNew())
       {
    	   String str=(String)session.getAttribute("result");
    	  %>
    	  
    	 <p><%=str %></p>
    	  
    	  <% 
       }
        session.invalidate();
       %>
    </div>
    </div>
     </div>
</body>
<script>
  function preventBack(){window.history.forward();}
  setTimeout("preventBack()", 0);
  window.onunload=function(){null};
</script>
</html>