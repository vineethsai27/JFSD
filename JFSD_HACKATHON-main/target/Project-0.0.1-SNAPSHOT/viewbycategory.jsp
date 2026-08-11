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
    
     <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
</head>
<body> 

<%@ include file="usernavbar.jsp" %>

<br>

<h3 align=center><u>View User Posts</u></h3>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Keywoard">


<table align=center border=2 id="myTable">

<tr class="header">

<th>ID</th>
<th>Category</th>
<th>Post Title</th>
<th>Content Of the Post</th>
<th>Image</th>
  </tr>

<c:forEach items="${postdata}" var="post">

<tr>
<td><c:out value="${post.id}" /></td>
 <td> <c:out value="${post.category}"></c:out>   </td>
 
<td><c:out value="${post.title}" /></td> 
 
<td><c:out value="${post.context}" /></td> 
 

<td> 

<img src='displayimage?id=${post.id}' width="50%" height="20%"> 


</td>


</tr>

</c:forEach>

 
 
</body> 
</html>