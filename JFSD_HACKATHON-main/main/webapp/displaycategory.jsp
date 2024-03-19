<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style  >
  <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }

        <%-- Style for the table --%>
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #3e2093;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }

        <%-- Style for the heading --%>
        h3 {
            text-align: center;
            color: #3e2093;
            margin-top: 20px;
        }

        <%-- Style for the "View" link --%>
        a {
            text-decoration: none;
            color: #3e2093;
        }

        a:hover {
            color: #5029bc;
        }
    </style>
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="usernavbar.jsp" %>

<h3 align=center><u>View Posts by Category</u></h3>

<br>

<form action="viewbycategory" method="post">

<table align=center>

<tr>
<td><label>Category</label></td>
<td>
<select name="category" required="required">
<option value="">---Select---</option>
<option value="Social">Social</option>
<option value="Experience">Experience</option>
<option value="Research">Research</option>
</select>
</td>
</tr>


<tr align=center>
<td colspan=2><input type="submit" value="View" class="button"></td>
</tr>

</table>

</form>
    
    
</body>
</html>