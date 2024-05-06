<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    background-color: #808080;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    width: 400px;
    padding: 30px;
    background-color: #f0f0f0;
    border-radius: 10px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
}

h1 {
    text-align: center;
    color: #333;
    font-size: 32px;
    margin-bottom: 20px;
}

form {
    display: flex;
    flex-direction: column;
}

label {
    font-weight: bold;
    margin-bottom: 8px;
    color: #555;
}

input[type="text"],
input[type="number"] {
    padding: 12px;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 6px;
    transition: border-color 0.3s;
}

input[type="text"]:focus,
input[type="number"]:focus {
    border-color: #1c87c9;
    outline: none;
}

.form-submit-button {
    background-color: #4CAF50;
    color: #fff;
    border: none;
    padding: 14px 0;
    text-align: center;
    font-size: 18px;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s;
     margin-bottom: 10px;
}

.form-submit-button:hover {
    background-color: #45a049;
}

.form-submit-button:last-child {
    margin-top: 20px;
    background-color: #ccc;
    color: #333;
}

a {
    text-decoration: none;
    color: #1c87c9;
    font-weight: bold;
    margin-top: 20px;
    display: block;
    text-align: center;
    font-size: 16px;
}
</style>

<title>Update Employee</title>
</head>
<body>

<div class="container">
    <h1>Update Employee</h1>
    <form action="${pageContext.request.contextPath}/processAddEmployee" method="post">
        <label for="id">Employee ID:</label>
        <input type="text" id="id" name="id" value="${employee.id}" readonly>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${employee.name}" required>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" value="${employee.address}" required>

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" value="${employee.phone}" required>

        <label for="salary">Salary:</label>
        <input type="number" id="salary" name="salary" value="${employee.salary}" required>

        <input class="form-submit-button" type="reset" value="Reset">
        <input class="form-submit-button" type="submit" value="Submit">

        <a href="${pageContext.request.contextPath}/list">View Employee List</a>
    </form>
</div>

</body>
</html>
