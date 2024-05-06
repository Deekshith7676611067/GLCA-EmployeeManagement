<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: lightblue; /* Light cyan background color */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            width: 400px;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
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
        }

        input[type="text"], input[type="number"] {
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 6px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus, input[type="number"]:focus {
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
            margin-bottom: 10px; /* Add spacing below each button */
        }

        .form-submit-button:hover {
            background-color: #45a049;
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
</head>
<body>

<div class="container">
    <h1>Add New Employee</h1>
    <form action="processAddEmployee" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter name" required>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" placeholder="Enter address" required>

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" placeholder="Enter phone no." required>

        <label for="salary">Salary:</label>
        <input type="number" id="salary" name="salary" placeholder="Enter salary" required>

        <input class="form-submit-button" type="submit" value="Submit">
        <input class="form-submit-button" type="reset" value="Reset">

        <a href="list">View Employees List</a>
    </form>
</div>

</body>
</html>
