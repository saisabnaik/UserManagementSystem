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
			
    </div>	

     <div class="container">
		<div class="panel panel-default">  
		
	
		<div align="center">
		<img src="https://thumbs.dreamstime.com/b/black-solid-icon-employee-applicant-man-logo-symbol-146530494.jpg" class="img-circle" width="150px" height="150px">
		</div>
		
        <div class="jumbotron">
        	<form class="form-horizontal"  action="${pageContext.request.contextPath }/handle-emp" method="post" >
                       <div class="form-group">
                        
                         <div class="col-sm-10">
                          <input type="hidden" class="form-control" id="id"  name="id" value="${emps.id}">
                         </div>
                    </div> 
        		       <div class="form-group">
                        <label class="control-label col-sm-2" for="name">Name:</label>
                         <div class="col-sm-10">
                          <input type="text" class="form-control" id="name"  name="name" value="${emps.name}">
                         </div>
                    </div>  
                    <div class="form-group">
                       <label class="control-label col-sm-2" for="email">Email:</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="email" name="email" value="${emps.email}">
                        </div>
                    </div>
                    <div class="form-group">
                       <label class="control-label col-sm-2" for="phno">Mobile No:</label>
                        <div class="col-sm-10">          
                          <input type="text" class="form-control" id="phno"  name="phno" value="${emps.phno}">
                       </div>
                    </div>
                  
                    <div class="form-group">
                       <label class="control-label col-sm-2" id="gender" for="gender" >Gender:</label>
                       <div class="col-sm-10">     
                       <label class="radio-inline"><input type="radio" name="gender" value="MALE" >Male</label>
                       <label class="radio-inline"><input type="radio" name="gender" value="FEMALE">Female</label>
                       <label class="radio-inline"><input type="radio" name="gender" value="OTHER">Other</label>
                       </div>
                    </div>
                     <div class="form-group">
                       <label class="control-label col-sm-2" for="salary">Salary:</label>
                        <div class="col-sm-10">          
                          <input type="text" class="form-control" id="salary"  name="salary" value="${emps.salary}">
                       </div>
                    </div>
                    <div class="form-group">
                       <label class="control-label col-sm-2" for="dob">Date of Birth:</label>
                        <div class="col-sm-10">          
                          <input type="text" class="form-control" id="dob"  name="dob" value="${emps.dob}">
                       </div>
                    </div>
                    <div class="container text-center">
                    <a  class="btn btn-outline-danger" href="${pageContext.request.contextPath }/index">
                   Back</a>
                    <button type="submit" class="btn-btn-warning">Update</button>
                    
                    </div>
                   
              </form>
      </div>
	</div>

</body>
</html>