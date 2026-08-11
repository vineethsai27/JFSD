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
 
 <%@ include file="adminnavbar.jsp" %>
 
<br> 

<span class="blink">
<h3 align=center  style="color:red">${message}</h3>
</span>
 
<h3 align="center"><u>Update Status</u></h3> 
 
<table align=center  border=2>  
<tr bgcolor="black" style="color:white"> 
 <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LOCATION</th>
        <th>EMAIL ID</th>
        <th>CONTACT NO</th>
        <th>STATUS</th>
        <th>ACTION</th>
    </tr>x
 
<c:forEach items="${userdata}"  var="user"> 
<tr> 
<td><c:out value="${user.id}" /></td> 
<td><c:out value="${user.name}" /></td>    
<td><c:out value="${user.location}" /></td> 
<td><c:out value="${user.email}" /></td> 
<td><c:out value="${user.contact}" /></td> 

<c:if test="${user.active==true}">
<td bgcolor="green">ACTIVE</td>
</c:if>
<c:if test="${user.active==false}">
<td bgcolor="red">INACTIVE</td>
</c:if>

<td>
<a href='<c:url value="setstatus?id=${user.id}&status=true"></c:url>'>
    <button type="button" style="background-color: green; color: white; font-weight: bold; cursor: pointer;">Active</button>
</a>

<a href='<c:url value="setstatus?id=${user.id}&status=false"></c:url>'>
    <button type="button" style="background-color: red; color: white; font-weight: bold; cursor: pointer;">InActive</button>
</a>

</td>
 
</tr> 
</c:forEach> 
 
</table> 
 
</body> 
</html>