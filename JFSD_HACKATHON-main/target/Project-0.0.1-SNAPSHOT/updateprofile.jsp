<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>
body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }
    body {
  
  background-repeat: no-repeat;
    background-attachment: fixed; /* Optional, keeps the background fixed while scrolling */
}
    
    .container {
      max-width: 400px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .form-group {
      margin-bottom: 20px;
    }
    .form-group label {
      font-weight: bold;
      color: #008000;
    }
    .form-group input[type="text"],
    .form-group input[type="date"],
    .form-group input[type="email"],
    .form-group input[type="password"],
    .form-group input[type="radio"],
    .form-group input[type="text"],
    .form-group input[type="radio"] {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
    }
    .form-group input[type="radio"],
    .form-group input[type="radio"],
    .form-group input[type="radio"] {
      margin-right: 10px;
    }
    .form-group .button {
      background-color: #008000;
      color: #fff;
      padding: 15px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 18px;
    }
    .form-group .button:hover {
      background-color: #005eaa;
    }
    .message {
      text-align: center;
      color: red;
      font-weight: bold;
    }
    a {
      text-decoration: none;
      color: #0078d4;
    }
    a:hover {
      text-decoration: underline;
    }
    /* Improved styling for labels and form elements */
    label {
      display: block;
      margin-bottom: 8px;
      font-weight: bold;
      color: #333;
    }
    input[type="text"],
    input[type="date"],
    input[type="email"],
    input[type="password"],
    input[type="radio"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
      margin-bottom: 10px;
    }
    input[type="radio"] {
      margin-right: 5px;
    }
    .button {
      background-color: #008000;
      color: #fff;
      padding: 12px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 18px;
    }
    .button:hover {
      background-color: #005eaa;
    }
</style>
</head>
<body>

<%@ include file="usernavbar.jsp" %>

<h3 align=right>Hi, ${uname}</h3>

<h3 align=center><u>Update Profile</u></h3>

<form method="post" action="update">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<input type="text" name="name" required="required" value="${user.name}"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
${user.gender}
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td>
<input type="date" name="dob" required="required"  value="${user.dateofbirth}"   />
</td>
</tr>
 

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required  value="${user.email}" readonly/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required  value="${user.password}" /></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Location</label></td>
<td><input type="text" name="location" required value="${user.location}"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><input type="text" name="contact" required value="${user.contact}" /></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Update" class="button"></td>
</tr>

</table>

</form>

</body>
</html>