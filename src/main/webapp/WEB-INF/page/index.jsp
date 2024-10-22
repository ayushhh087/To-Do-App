<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>To-Do App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, rgba(123, 159, 160, 0.7), rgba(51, 153, 255, 0.7));
        }

        .todo-container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            box-shadow: 0 40px 30px rgba(18, 16, 16, 0.2);
            padding: 20px;
            width: 300px;
            overflow-y: auto;
            text-align: center;
            backdrop-filter: blur(10px);
        }

        h1 {
            color: #4caf50;
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

        .todo-list li span {
            flex-grow: 1;
            text-align: left;
        }

        .todo-list li button {
            background-color: #ff5252;
            border: none;
            color: #ffffff;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        .todo-list li button:hover {
            background-color: #ff1744;
        }

        .add-todo {
            margin-bottom: 20px;
        }

        .add-todo input[type="text"] {
            width: 70%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .add-todo button {
            background-color: #4caf50;
            border: none;
            color: #ffffff;
            padding: 8px 15px;
            border-radius: 5px;
            cursor: pointer;
            margin-left: 10px;
        }

        .Show-ToDo a {
            background-color: rgb(75, 176, 75);
            text-decoration: none;
            border: none;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
            cursor: pointer;
            align-content: center;
        }

        .Show-ToDo a:hover {
            background-color: grey;
        }

        .add-todo button:hover {
            background-color: #45a049;
        }
    </style>
    <script type="text/javascript">
        function showAlert() {
            alert("To-Do added!");
        }
    </script>
</head>
<body>
    <div class="todo-container">
        <h1>To-Do App</h1>
        <form action="idxpage" method="post" class="add-todo" onsubmit="showAlert()">
            <div>
                <input type="text" name="todo" placeholder="Title..." required /> <br>
                <input type="text" name="description" placeholder="Description.... " required />
            </div>
            <br />
            <button type="submit">Add</button>
        </form>
        <div class="Show-ToDo">
            <a href="showtodo">Show ToDo</a>
        </div>
    </div>
    <br />
</body>
</html>
