<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank</title>
 <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <style>
    
      }
      body {
  background: linear-gradient(
    90deg,
    
    height: 100vh;
  );
   
}



.mainConatiner {
  display: grid;
  grid-template-columns: 2fr 2fr 1fr;
  justify-content: center;
  align-items: center;
  padding: 2rem;
}
.mainConatiner > * {
  padding: 2rem;
}
.mainConatiner > * h1 {
  font-size: 3.7rem;
}
.mainConatiner > * p {
  padding: 1rem;
  font-size: 1.1rem;
}
.mainConatiner .btn1 {
  color: whitesmoke;
  background-color: gray;
  min-height: 1em;
  width: 70%;
  border: none;
   min-height: 3.8rem;
  font-size: 1.3rem;
   text-decoration: none;
	 border-radius: 0.5rem;
	 margin-bottom:4%;
}
.mainConatiner .btn2 {
  color: whitesmoke;
  background-color: gray;
  min-height: 3.8rem;
  width: 70%;
  border: none;
  font-size: 1.3rem;
   text-decoration: none;
    border-radius: 0.5rem;
}
.mainConatiner .btn1 a{
  color: white;
  text-decoration: none;
}
.mainConatiner .btn2 a{
  color: white;
  text-decoration: none;
}
.mainConatiner .imageSide {
  transform: translateY(80px);
}
.mainConatiner .imageSide img {
      height: 105%;
      width: 105%;
}
.userCount h1 {
  font-size: 1.7rem;
  line-height: 0;
  text-align: center;
}

.userCount p {
  font-size: 1.3rem;
  line-height: 0;
  margin: auto;
  text-align: center;
}
 
 .mainConatiner .infoSide{
       margin-left: 4em;
       margin-top: 4em;
 }
    </style>
</head>

<body>
	
	 <div class="mainConatiner">
	 <div class="imageSide">
        <img src="banklogo.jpg" alt="" />
      </div>
      <div class="infoSide">
       
        <h1>Digital banking Made for</h1>

        <h1>Digital User's</h1>
        
        <p>
          Gopay is an all-in-one mobile banking app chock full of all the tools,
          tips, and tricks you need to take control of�your�finances,
        </p>
		<button class="btn1"><a href="RegisterView.jsp">Sign up</a></button> <br>
		<button class="btn2"><a href="LoginView.jsp">Login</a></button>
       
      </div>
      
      
    </div>
   
		
		
</body>
</html>