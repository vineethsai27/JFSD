<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 
<head> 
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
</head>
<body>

<%@ include file="navbar.jsp" %>

<br>

<h3>Recent All Posts</h3>

<table border="2">
    <tr>
        <th>ID</th>
        <th>Post</th>
        <th>Content Of the Post</th> 
        <th>Author </th>
    </tr>
  
 <c:forEach items="${postdata}"  var="post"> 
<tr> 
<td><c:out value="${post.id}" /></td> 
<td><c:out value="${post.title}" /></td> 
 
<td><c:out value="${post.context}" /></td> 
 
 
<td>

</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>