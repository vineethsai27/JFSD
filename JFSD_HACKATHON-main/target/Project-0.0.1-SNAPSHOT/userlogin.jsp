<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
  <link type="text/css" rel="stylesheet" href="css/style.css">
  <style>
  /* Reset some default styles */
body, h1, h2, h3, p, form, input, label {
  margin: 0;
  padding: 0;
  border: 0;
  outline: 0;
}

body {
  font-family: Arial, sans-serif;
  background-color: #f5f5f5;
}

.container {
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  width: 400px;
  margin: 0 auto;
  padding: 20px;
  margin-top: 50px;
}
body {
  background-image: url('https://images.unsplash.com/photo-1535966953907-e3a81e258148?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGxhcHRvcCUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80');
  background-size: cover; /* Adjust to 'contain' or other values as needed */
  background-repeat: no-repeat;
  background-attachment: fixed; /* Optional, keeps the background fixed while scrolling */
}



.message {
  text-align: center;
  margin-top: 10px;
}

h3 {
  text-align: center;
  margin-top: 20px;
}

u {
  text-decoration: none;
  color: #333;
}

.form-group {
  margin-top: 20px;
}

label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

input[type="text"],
input[type="email"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  margin-top: 5px;
}

.button {
  background-color: #3498db;
  color: #fff;
  border: none;
  padding: 10px 20px;
  border-radius: 5px;
  cursor: pointer;
  margin-top: 20px;
}

.button:hover {
  background-color: #2980b9;
}

a {
  text-decoration: none;
  color: #3498db;
}
  
  </style>
</head>
<body>
  <%@ include file="navbar.jsp" %>
  <div class="container">
    <h3 class="message">${message}</h3>
    <h3 style="text-align: center;"><u>User Login</u></h3>
    <form method="post" action="checkuserlogin">
      <div class="form-group">
        <label for="email">Email ID</label>
        <input type="email" name="email" id="email" required>
      </div>
      <div class="form-group">
        <label for="pwd">Password</label>
        <input type="password" name="pwd" id="pwd" required>
      </div>
      <div class="form-group" align="center">
        <input type="submit" value="Login" class="button">
      </div>
    </form>
    <h3 style="text-align: center;">New Registration? <a href="userreg">Click Here</a></h3>
  </div>
</body>
</html>
