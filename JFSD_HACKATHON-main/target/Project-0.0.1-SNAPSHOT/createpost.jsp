<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
  <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f1f1f1;
        text-align: center;
    }

    .container {
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 20px;
        margin: 0 auto;
        max-width: 600px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
    }

    form {
        text-align: left;
        margin: 0 auto;
        width: 80%;
    }

    label {
        display: block;
        margin: 10px 0;
    }

    input[type="text"],
    select,
    textarea,
    input[type="file"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>

    <title>Create a Blog Post</title>
</head>

<body>
    <%@ include file="usernavbar.jsp" %>
    <h1>Create a Blog Post</h1>
    <form method="post" action="insertpostaction" enctype="multipart/form-data">
        <label>Title</label>
        <input type="text" name="title" required><br>

        <label>Category</label>
        <select name="category" required="required">
            <option value="">---Select---</option>
            <option value="Socail">Social</option>
            <option value="Experience">Experience</option>
            <option value="Research">Research</option>
        </select>

        <label>Image</label>
        <input type="file" name="image" required="required" />

        <label>Context</label>
        <textarea id="context" name="postContent" rows="40" cols="50" required></textarea><br><br>

        <input type="submit" value="Create Post">
    </form>
</body>

</html>
