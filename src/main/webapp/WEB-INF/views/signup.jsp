<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<br>
	<br>
	<div class="container">
		<div class="panel panel-default">
	
		<div align="center">
		<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMlSig04DrLJJRJfk_RPj-cXgUSXxid9PavBpUpukCkMFm4QBv2sSAna7pwFtiUGN0cfs&usqp=CAU" class="img-circle" width="150px" height="150px">
		</div>
		<h1 align="center">Sign Up</h1>
        <div class="jumbotron">
        	<form class="form-horizontal" action="handle_signup" method="post">
        		    <div class="form-group">
                        <label class="control-label col-sm-2" for="usr">Name:</label>
                         <div class="col-sm-10">
                          <input type="text" class="form-control" id="usr" placeholder="Enter Name" name="name">
                         </div>
                    </div>
                    <div class="form-group">
                       <label class="control-label col-sm-2" for="email">Email:</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                        </div>
                    </div>
                   <div class="form-group">
                       <label class="control-label col-sm-2" for="password">Password:</label>
                        <div class="col-sm-10">          
                          <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
                       </div>
                    </div>
                    <div class="form-group">
                       <label class="control-label col-sm-2" for="gender">Gender:</label>
                       <div class="col-sm-10">     
                       <label class="radio-inline"><input type="radio" name="optradio" value="M">Male</label>
                       <label class="radio-inline"><input type="radio" name="optradio" value="M">Female</label>
                       <label class="radio-inline"><input type="radio" name="optradio" value="M">Other</label>
                       </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="address">Address:</label>
                        <div class="col-sm-10">
                          <textarea class="form-control" rows="5" id="address" placeholder="Enter Address" name="address"></textarea>
                        </div>
                     </div>
                      
                     <div align="center">
                    <div class="form-group">        
                    <div >
                     <button type="submit" class="btn btn-warning">Submit</button>
                    </div>
                    </div>
                    </div>

                    
                    <div align="center">
                    <p>Have an account <a href="login">Login
                   </a> </p>
                    </div>


      </div>
	</div>

</body>
</html>