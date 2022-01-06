<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
<style>
body  {
  background-image: url("https://images.pexels.com/photos/373543/pexels-photo-373543.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  background-color: #cccccc;
}
</style>

<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
 <div class="container-fluid mt-3">
       <h1 class="text-center mb-3" class="text-success">Welcome delete</h1>
			<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
			  <ul class="navbar-nav">
			    <li class="nav-item ">
			      <a class="nav-link" href="index">View</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="add_emp">Insert</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="update_view">Update</a>
			    </li>
			    <li class="nav-item active">
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
	<div class="container mt-3">
		<div class ="row">
		    <div class ="col-md-12">
		     
					<table class="table table-striped table-dark">
						  <thead>
						    <tr>
						      <th scope="col">ID</th>
						      <th scope="col">NAME</th>
						      <th scope="col">EMAIL</th>
						      <th scope="col">PHONE</th>
						      <th scope="col">GENDER</th>
						      <th scope="col">SALARY</th>
						      <th scope="col">DELETE</th>
						      
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach items="${emps}" var="p">
						    <tr>
						      <th scope="row">MYORG${p.id}</th>
						      <td>${p.name}</td>
						      <td>${p.email}</td>
						      <td>${p.phno}</td>
						      <td>${p.gender}</td>
						      <td>${p.salary}</td>
						      <td><a href="delete/${p.id}"><i class="fas fa-trash-alt text-danger" style="font-size:20px;"></i></a>
						      </td>
						      
						      
						    </tr>
						    </c:forEach>
						    
						  </tbody>
					</table>
		            <div class="container text-center">
		            <a href="add_emp" class="btn btn-outline-success">Add</a>
		            </div>
		
		    </div>
		
		</div>
   </div>

</body>
</html>