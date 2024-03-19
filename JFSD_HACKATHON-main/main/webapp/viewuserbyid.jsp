<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            justify-content: flex-start; /* Align content at the top */
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        /* Styling for the navigation bar */
        .navbar {
            width: 100%;
            background-color: #3e2093;
            color: white;
            padding: 10px 0;
            text-align: center;
        }

        /* Styling for the table */
        .table-container {
            width: 60%;
            margin: 20px auto;
            background-color: white;
            border: 2px solid #3e2093;
            padding: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }

        /* Styling for the card */
        .info-card {
            width: 60%;
            background-color: white;
            border: 2px solid #3e2093;
            padding: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            text-align: center;
            animation: fadeIn 1s;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /* Styling for individual data fields */
        .info-field {
            margin-bottom: 10px;
            font-weight: bold;
        }

        /* Styling for the "Status" field */
        .status {
            color: #3e2093;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <%@ include file="adminnavbar.jsp" %>
    </div>
    <div class="table-container" align="center">
        <!-- Your table code goes here -->
        <h1>User Information</h1>
    </div>
    <div class="info-card">
        <div class="card-content">
            
            <div class="info-field">ID : ${user.id}</div>
            <div class="info-field">Name : ${user.name}</div>
            <div class="info-field">Gender : ${user.gender}</div>
            <div class="info-field">Date of Birth : ${user.dateofbirth}</div>
            <div class="info-field">Email : ${user.email}</div>
            <div class="info-field">Location : ${user.location}</div>
            <div class="info-field">Contact No : ${user.contact}</div>
            <div class="info-field status">Status : ${user.active}</div>
        </div>
    </div>
</body>
</html>