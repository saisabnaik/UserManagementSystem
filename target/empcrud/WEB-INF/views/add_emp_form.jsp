<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body  {
  background-image: url("https://images.pexels.com/photos/373543/pexels-photo-373543.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  background-color: #cccccc;
}
</style>

<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<div class="container-fluid mt-3">
       <h1 class="text-center mb-3" class="text-success">Update Employee</h1>
			<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
			  <ul class="navbar-nav">
			    <li class="nav-item ">
			      <a class="nav-link" href="index">View</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link active" href="add_emp">Insert</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link " href="update_view">Update</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="delete_emp">Delete</a>
			    </li>
			    <li>
				     <form class="form-inline" action="#">
					    <input class="form-control mr-sm-2" type="text" placeholder="Search">
					    <button class="btn btn-success" type="submit">Search</button>
					  </form>
				 </li>
			  </ul>
			</nav>
    </div>	

     <div class="container">
		<div class="panel panel-default">  
		
	
		<div align="center">
		<img src="https://thumbs.dreamstime.com/b/black-solid-icon-employee-applicant-man-logo-symbol-146530494.jpg" class="img-circle" width="150px" height="150px">
		</div>
		
        <div class="jumbotron">
        	<form class="form-horizontal"  action="handle-emp" method="post" >
                     
        		       <div class="form-group">
                        <label class="control-label col-sm-2" for="name">Name:</label>
                         <div class="col-sm-10">
                          <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name">
                         </div>
                    </div>  
                    <div class="form-group">
                       <label class="control-label col-sm-2" for="email">Email:</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                        </div>
                    </div>
                    <div class="form-group">
                       <label class="control-label col-sm-2" for="phno">Mobile No:</label>
                        <div class="col-sm-10">          
                          <input type="text" class="form-control" id="phno" placeholder="Enter Mobile Number" name="phno">
                       </div>
                    </div>
                  
                    <div class="form-group">
                       <label class="control-label col-sm-2" id="gender" for="gender" >Gender:</label>
                       <div class="col-sm-10">     
                       <label class="radio-inline"><input type="radio" name="gender" value="MALE">Male</label>
                       <label class="radio-inline"><input type="radio" name="gender" value="FEMALE">Female</label>
                       <label class="radio-inline"><input type="radio" name="gender" value="OTHER">Other</label>
                       </div>
                    </div>
                     <div class="form-group">
                       <label class="control-label col-sm-2" for="salary">Salary:</label>
                        <div class="col-sm-10">          
                          <input type="text" class="form-control" id="salary" placeholder="Enter Salary" name="salary">
                       </div>
                    </div>
                    <div class="container text-center">
                    <a href="${pageContext.request.contextPath }/index">
                    <class="btn btn-outline-danger">Back</a>
                    <button type="submit" class="btn-btn-primary">Add</button>
                    
                    </div>
                   
              </form>
      </div>
	</div>

</body>
</html>