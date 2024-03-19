<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<h3>View All Users</h3>

<table border="2">
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LOCATION</th>
        <th>EMAIL ID</th>
        <th>CONTACT NO</th>
        <th>ACTION</th>
    </tr>
    <c:forEach items="${userdata}" var="user">
        <tr>
            <td><c:out value="${user.id}" /></td>
            <td><c:out value="${user.name}" /></td>
            <td><c:out value="${user.location}" /></td>
            <td><c:out value="${user.email}" /></td>
            <td><c:out value="${user.contact}" /></td>
            <td>
<button type="button" onclick="location.href='<c:url value="view?id=${user.id}"></c:url>'" style="background-color: green; color: white; font-weight: bold; cursor: pointer;">View</button>
                
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>