<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        .statistics-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center; /* Center align the boxes horizontally */
            align-items: center; /* Center align the boxes vertically */
            margin-top: 50px;
            animation: fallIn 1.5s ease-in-out;
        }

        @keyframes fallIn {
            0% {
                transform: translateY(-20px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .statistics-box {
            flex: 1;
            max-width: 300px;
            background-color: #f5f5f5; /* Light gray background */
            padding: 20px;
            margin: 10px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            border-radius: 10px;
            transition: all 0.3s ease-in-out;
        }

        .statistics-box:hover {
            transform: scale(1.05); /* Slight zoom on hover */
            background-color: #e7c798; /* Light yellow background on hover */
        }

        .statistics-box h3 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333; /* Dark gray color for headings */
        }

        .statistics-box p {
            font-size: 36px;
            margin: 10px 0; /* Add top and bottom margin for spacing */
            color: #008000; /* Green color for the number values */
            /* Add new styles for the count */
            font-weight: bold;
            background-color: green; /* Dark gray background color for the count */
            color: white; /* White text color for the count */
            padding: 10px; /* Add some padding to the count */
            border-radius: 10px; /* Rounded corners */
        }
        /* Add this CSS to style the link as a green button */
        a.green-button {
            display: inline-block;
            padding: 10px 20px; /* Adjust the padding as needed */
            background-color: green;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease-in-out;
            margin-top: 10px; /* Add top margin for spacing */
        }

        a.green-button:hover {
            background-color: darkgreen; /* Change the color on hover */
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <div class="statistics-container">
        <div class="statistics-box">
            <h3>Total Users</h3>
            <p id="anotherStatCount">${ucount}</p>
            
            <!-- Add the link to the other JSP page here -->
        </div>
    </div>
</body>
</html>