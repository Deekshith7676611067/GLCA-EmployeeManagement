<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: lightpink;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .container {
            width: 80%;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 30px;
        }

        h1, h3 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        h4 a {
            font-size: 18px;
            font-weight: bold;
             text-align: center;
            color: blue;
            text-decoration: none;
        }

        hr {
            width: 100%;
            border: none;
            border-top: 1px solid #ddd;
            margin: 20px 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f5f5f5;
            font-size: 16px;
        }

        td {
            font-size: 14px;
        }

        .action-links a {
            text-decoration: none;
            color: #333;
            padding: 6px 12px;
            border-radius: 4px;
            background-color: #4CAF50;
            transition: background-color 0.3s;
        }

        .action-links a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="container">
    <h3>Click Below Link To Add New Record</h3>
    <h4  align="center" ><a href="addEmployee">Add Record</a></h4>
    <hr>

    <h1>Employee List</h1>
    <table>
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
                <td class="action-links"><a href="<c:url value='/edit/${employee.id}' />">Update</a></td>
                <td class="action-links"><a href="<c:url value='/remove/${employee.id}' />">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
