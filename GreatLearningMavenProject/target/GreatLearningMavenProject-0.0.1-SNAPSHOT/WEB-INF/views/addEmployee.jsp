<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
th, td {
	padding: 15px;
}

table {
	border: 1px solid black;
	border-radius: 5px;
}

body {
	background-color: #FFC3C3;
}

h1, h4{
font-family:Arial, sans-serif;
}

div h4 a {
font-family:verdana;
color:#1c87c9;
font-weight:normal;
}

table tr td input {
	padding: 5px;
	margin: 5px 0;
	outline: none;
	border: none;
}

input:focus, input:active {
	border-color: transparent;
	border-bottom: 2px solid #1c87c9;
}

.form-submit-button {
background: green;
color: white;
border-style: solid;
border-color: #0066A2;
height: 40px;
width: 90px;
font: bold15px arial,sans-serif;
text-shadow: none;
border-radius: 5px;
}
</style>

<title>Add Employee</title>
</head>
<body>

	<div align="center">
<!-- 		<h1 align="center">Add New Employee</h1> -->
		<h4 align="right">
			<a style="color:#1c87c9" href="list">Click To View Employees List</a>
		</h4>
		<hr>

		<h1>Enter Details</h1>
		<form:form action="processAddEmployee" modelAttribute="employee">
			<table>
				<tr>

					<td><label for="name">Name:</label> &nbsp;&nbsp;</td>

					<td><input type="text" id="name" name="name"
						placeholder="Enter name"></td>
				</tr>



				<tr>

					<td><label for="address">Address:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="address" name="address"
						placeholder="Enter address"></td>

				</tr>



				<tr>
					<td><label for="phone">Phone:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="phone" name="phone"
						placeholder="Enter phone no."></td>
				</tr>


				<tr>
					<td><label for="salary">Salary:</label> &nbsp;&nbsp;</td>
					<td><input type="number" id="salary" name="salary"
						placeholder="Enter salary"></td>
				</tr>
				
			</table>
			

			<br>
			<br>

			<input class="form-submit-button" type="reset" value="Reset"> &nbsp;&nbsp;&nbsp; 
		 <input class="form-submit-button" type="submit" value="Submit">
		</form:form>
	</div>

</body>
</html>