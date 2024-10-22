<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scope=1.0">
<title>Edit To-Do</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, rgba(123, 159, 160, 0.7), rgba(51, 153, 255, 0.7));
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 100vh;
	color: #333;
}

.todo-container {
	background-color: #ffffff;
	border-radius: 8px;
	box-shadow: 0 40px 30px rgba(0, 0, 0, 0.1);
	padding: 20px;
	width: 500px;  /* Same width as other pages */
	text-align: center;
	max-height: 70vh;  /* Sets a maximum height for the container */
	overflow-y: auto;  /* Adds vertical scroll if needed */
}

h1 {
	color: #4CAF50;
	margin-bottom: 20px;
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
}

label {
	margin-top: 10px;
	font-size: 16px;
}

input[type="text"] {
	width: 100%;
	padding: 10px;
	margin: 5px 0;
	border-radius: 5px;
	border: 1px solid #ddd;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 8px 15px;
	border-radius: 5px;
	border: none;
	cursor: pointer;
	margin-top: 15px;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

.edit-todo {
	margin-top: 20px;
	text-align: center;
}

.edit-todo a {
	background-color: #4CAF50;
	color: white;
	padding: 8px 15px;
	border-radius: 5px;
	text-decoration: none;
	cursor: pointer;
}

.edit-todo a:hover {
	background-color: rgb(6, 158, 54);
}
</style>
</head>
<body>
	<div class="todo-container">
		<h1>Edit To-Do</h1>
		<form action="update-ToDo" method="post">
			<!-- Hidden input to pass the ID -->
			<input type="hidden" name="id" value="${task.id}" />
			
			<!-- Task fields for editing -->
			<label for="todo">Topic:</label>
			<input type="text" id="todo" name="todo" value="${task.todo}" />
			
			<label for="description">Description:</label>
			<input type="text" id="description" name="description" value="${task.description}" />
			
			<!-- Submit button -->
			<input type="submit" value="Update" />
			
			<!-- Back to Home Button -->
			<div class="edit-todo">
				<a href="showindex">Back to Home</a>
			</div>
		</form>
	</div>
</body>
</html>
