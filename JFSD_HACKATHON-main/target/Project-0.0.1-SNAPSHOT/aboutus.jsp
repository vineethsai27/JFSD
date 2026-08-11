<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- ===== Link Swiper's CSS ===== -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>

    <!-- ===== Fontawesome CDN Link ===== -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>

    <!-- ===== CSS ===== -->
    <link rel="stylesheet" href="style.css">

    <title>About Us</title>
    <style>
        /* Add your CSS styles here */
        body {
            background-color: #f0f0f0; /* Set a background color */
        }

        .swiper-slide {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            transition: transform 0.3s; /* Add a transition for a smooth animation */
            background-color: #fff; /* Set a background color for each card */
            border-radius: 8px; /* Add rounded corners for the cards */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2); /* Add a shadow effect */
            margin: 10px; /* Add spacing between cards */
            width: 300px; /* Set a fixed width for all cards */
        }

        .image-container {
    max-width: 200px;
    max-height: 200px;
    overflow: hidden;
    border: 1px solid #ccc; /* Add a border around the images */
    display: flex; /* Use flexbox to center the content */
    justify-content: center; /* Horizontally center the content */
    align-items: center; /* Vertically center the content */
    text-align: center; /* Center any text content within */
}

.image-container img {
    max-width: 100%;
    max-height: 100%;
    width: auto;
    height: auto;
    display: block; /* Ensure the image is a block element for centering */
    margin: 0 auto; /* Center the image within its container */
}
        
        .card {
            transform: scale(1); /* Initial scale, no scaling */
            transition: transform 0.3s; /* Add a transition for scaling effect */
        }

        .card:hover {
            transform: scale(1.05); /* Slightly scale up the card on hover */
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <section>
        <div class="swiper mySwiper container">
            <div class="swiper-wrapper content">
                <div class="swiper-slide card">
                    <div class="card-content">
                        <div class="image-container">
                            <img src="images/image1.jpg" alt="">
                        </div>

                        <div class="name-profession">
                            <span class="name">Krishna Chaitanya</span>
                            <span class="profession">Admin Developer</span>
                        </div>

                        <div class="button">
                            <button class="aboutMe" style="font-weight: bold; color: #FF0000;">2100030484</button>
                            
                        </div>
                    </div>
                </div>
                <div class="swiper-slide card">
                    <div class="card-content">
                        <div class="image-container">
                            <img src="images/image2.jpg" alt="">
                        </div>

                        <div class="name-profession">
                            <span class="name">Vineeth </span>
                            <span class="profession">User Developer</span>
                        </div>

<div class="button">
                           <button class="aboutMe" style="font-weight: bold; color: #FF0000;">2100030149</button>
                           
                        </div>
                    </div>
                </div>
                <div class="swiper-slide card">
                    <div class="card-content">
                        <div class="image-container">
                            <img src="images/image3.jpg" alt="">
                        </div>

                        <div class="name-profession">
                            <span class="name">Charan</span>
                            <span class="profession">Post Module Developer</span>
                        </div>

                        <div class="button">
                            <button class="aboutMe" style="font-weight: bold; color: #FF0000;">2100030842</button>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
    </section>

    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: 3,
            spaceBetween: 30,
            slidesPerGroup: 3,
            loop: true,
            loopFillGroupWithBlank: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
    </script>
</body>
</html>
