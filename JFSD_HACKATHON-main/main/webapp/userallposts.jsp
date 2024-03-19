<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<html>

<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            background-size: cover;
            background-attachment: fixed;
            animation: sparkle 20s linear infinite;
        }

        @keyframes sparkle {
            0% {
                background-position: 0% 0%;
            }
            100% {
                background-position: 100% 100%;
            }
        }

        .card-container {
            width: 80%;
            margin: 0 auto; /* Center the container horizontally */
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            min-height: 100vh; /* Center vertically on the viewport */
        }

        .card {
            width: 300px;
            margin: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .card img {
            width: 100%;
            height: auto;
        }

        .card-content {
            padding: 10px;
        }

        .category {
            color: #3e2093;
        }

        .title {
            font-size: 1.2em;
        }

        #myInput {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 10px;
            width: 100%;
            box-sizing: border-box;
        }

        #myInput:focus {
            outline: none;
            border-color: #5029bc;
        }
    </style>

    <script>
        function myFunction() {
            var input, filter, cards, card, category, title, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            cards = document.getElementsByClassName("card");
            for (i = 0; i < cards.length; i++) {
                card = cards[i];
                category = card.getElementsByClassName("category")[0];
                title = card.getElementsByClassName("title")[0];
                txtValue = category.textContent || category.innerText;
                txtValue += title.textContent || title.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    card.style.display = "";
                } else {
                    card.style.display = "none";
                }
            }
        }
    </script>
</head>

<body>

<%@ include file="usernavbar.jsp" %>

<br>

<h3 align=center><u>View User Posts</u></h3>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Keyword">

<div class="card-container">
    <c:forEach items="${postdata}" var="post">
        <div class="card">
            <img src='displayimage?id=${post.id}' alt="Post Image">
            <div class="card-content">
                <div class="category">
                    <c:out value="${post.category}" />
                </div>
                <div class="title">
                    <c:out value="${post.title}" />
                </div>
                <c:out value="${post.context}" />
            </div>
        </div>
    </c:forEach>
</div>

</body>

</html>
