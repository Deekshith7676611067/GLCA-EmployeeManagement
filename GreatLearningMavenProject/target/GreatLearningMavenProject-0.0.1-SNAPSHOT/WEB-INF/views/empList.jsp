<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Page</title>
 <style type="text/css">
    .tg  {border-collapse:collapse;border-spacing:2;border-style:solid;border-width:2px;border-color:black;margin-left: auto;
    margin-right: auto; border-radius:10px;}
    .tg td{text-align:center; font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:2px;overflow:hidden;word-break:normal;border-color:black;color:black;background-color:null;}
    .tg th{font-family:Arial, sans-serif;font-size:16px;font-weight:bold;padding:10px 5px;border-style:solid;border-width:2px;overflow:hidden;word-break:normal;border-color:black;color:black;background-color:null;}
    /* .tg .tg-4eph{background-color:#f9f9f9} */
    body {  background: radial-gradient(circle, #00ff00, #ffff00);}
    h4 a {font-family:Arial, sans-serif;font-size:18px; color:blue ;font-weight:normal; }
    h1,h3 {font-family:Arial, sans-serif; color:black; }
</style>
</head>
<body>
< <h3 align="center">Click Below Link To Add New Record</h3> >

<h4 align="center"><a href="addEmployee">AddRecord</a></h4>

<hr>




<c:if test="${!empty listEmployee}">
<h1 align="center">Employee List</h1>
	<table class="tg">
	
	<tr>
		<th width="80">Employee ID</th>
		<th width="120">Employee Name</th>
		<th width="120">Employee Address</th>
		<th width="120">Employee Phone</th>
		<th width="120">Employee Salary</th>
		<th width="60">Action1</th>
		<th width="60">Action2</th>
	</tr>
	<c:forEach items="${listEmployee}" var="employee">
		<tr>
			<td>${employee.id}</td>
			<td>${employee.name}</td>
			<td>${employee.address}</td>
			<td>${employee.phone}</td>
			<td>${employee.salary}</td>
			<td><a href="<c:url value='/edit/${employee.id}' />" >Update</a></td>
			<td><a href="<c:url value='/remove/${employee.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>