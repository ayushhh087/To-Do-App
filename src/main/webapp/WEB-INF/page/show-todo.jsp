<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scope=1.0">
<title>Show To-Do</title>
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
	width: 500px;
	text-align: center;
	max-height: 70vh; 
	overflow-y: auto; 
}

h1 {
	color: #4CAF50;
	margin-bottom: 20px;
}

.todo-list {
	list-style-type: none;
	padding: 0;
	margin: 20px 0;
}

.todo-list li {
	background-color: #f9f9f9;
	border: 1px solid #ddd;
	padding: 10px;
	margin-bottom: 10px;
	border-radius: 5px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.todo-content span:first-child{
	font-weight: bold;
	font-size: 1.1em;
	text-align: left;
}

.todo-list li span {
	display: block;
}

.button-container {
	display: flex;
	flex-direction: column;
}

.button-container a {
	margin: 5px 0;
	padding: 5px 10px;
	border-radius: 5px;
	text-decoration: none;
	color: white;
	width: 80px;
	text-align: center;
}

.button-container a.edit-btn {
	background-color: #4CAF50;
}

.button-container a.edit-btn:hover {
	background-color: #45a049;
}

.button-container a.delete-btn {
	background-color: grey;
}

.button-container a.delete-btn:hover {
	background-color: red;
}

.edit-todo {
	margin-top: 20px;
	text-align: center;
}

.edit-todo a, .edit-todo label {
	background-color: #4CAF50;
	color: white;
	padding: 8px 15px;
	border-radius: 5px;
	text-decoration: none;
	cursor: pointer;
	margin-left: 5px;
}

.edit-todo a:hover, .edit-todo label:hover {
	background-color: rgb(6, 158, 54);
}

.back-to-home {
	margin-top: 20px;
	text-align: center;
}

.back-to-home a {
	background-color: #4CAF50;
	color: white;
	padding: 8px 15px;
	border-radius: 5px;
	text-decoration: none;
	cursor: pointer;
}

.back-to-home a:hover {
	background-color: rgb(6, 158, 54);
}

/* New styles for alert */
.alert {
	display: none;
}
</style>

<script>
// JavaScript function to confirm deletion
function confirmDelete(event) {
    event.preventDefault(); // Prevent the default link behavior
    const userConfirmed = confirm("Are you sure you want to delete this task?");
    if (userConfirmed) {
        window.location.href = event.currentTarget.href; // If confirmed, navigate to the delete URL
    }
}
</script>

</head>
<body>
	<div class="todo-container">
		<h1>To-Do List</h1>
		<form id="deleteForm" action="deleteTodos" method="post">
			<!-- Display message if no To-Dos are available -->
			<c:choose>
				<c:when test="${empty user}">
					<p>No To-Do's Available</p>
				</c:when>
				<c:otherwise>
					<ul class="todo-list">
						<c:forEach var="model" items="${user}">
							<li>
								<div class="todo-content">
									<span>${model.todo}</span>
									<span>${model.description}</span>
								</div>
								<div class="button-container">
									<a href="editpage?id=${model.id}" class="edit-btn">Edit Task</a>
									<a href="delete?id=${model.id}" class="delete-btn" onclick="confirmDelete(event)">Delete</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</c:otherwise>
			</c:choose>
		</form>
	</div>

	<!-- Back to Home Button Below the Container -->
	<div class="back-to-home">
		<a href="showindex">Back to Home</a>
	</div>
</body>
</html>
