<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
    if (session.getAttribute("success-admin-login-uname")==null){
        response.sendRedirect("http://localhost:8081/OpticLens/login-now.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Urban Food | Home</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!--Favicon-->
    <link rel="icon" type="http://localhost:8081/URBAN-FOODS/image/x-icon" href="http://localhost:8081/URBAN-FOODS/images/utensils-solid.svg">

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="http://localhost:8081/URBAN-FOODS/css/style.css">


</head>
<body>
    
<!-- header section starts      -->

<header>

    <a href="http://localhost:8081/URBAN-FOODS/admin/index.jsp" class="logo"><i class="fas fa-utensils"></i> Urban Food</a>

    <nav class="navbar">
        <a class="active" href="#home">home</a>
        <a href="http://localhost:8081/URBAN-FOODS/admin/dishes.jsp">dishes</a>
        <a href="http://localhost:8081/URBAN-FOODS/admin/index.jsp#about">about</a>
        <a href="http://localhost:8081/URBAN-FOODS/admin/menu.jsp">menu</a>
        <a href="http://localhost:8081/URBAN-FOODS/admin/review_form.jsp">review</a>
        <a href="http://localhost:8081/URBAN-FOODS/admin/order_now.jsp">order</a>
        <a href="http://localhost:8081/URBAN-FOODS/admin/4-pages.jsp">Hello &#128075; <% String index_uname = (String) session.getAttribute("success-admin-login-uname"); %> <%= index_uname %></a>
    </nav>

    <div class="icons">
        <i class="fas fa-bars" id="menu-bars"></i>
        <i class="fas fa-search" id="search-icon"></i>
        <a href="http://localhost:8081/URBAN-FOODS/admin/index.jsp#" class="fas fa-heart"></a>
        <a href="http://localhost:8081/URBAN-FOODS/admin/index.jsp#" class="fas fa-shopping-cart"></a>
        <a href="http://localhost:8081/URBAN-FOODS/admin-logout.jsp" class="fas fa-sign-out-alt"></a>
    </div>

</header>

<!-- header section ends-->

<!-- search form  -->

<form action="" id="search-form">
    <input type="search" placeholder="search here..." name="" id="search-box">
    <label for="search-box" class="fas fa-search"></label>
    <i class="fas fa-times" id="close"></i>
</form>

    <!--Update user section starts-->
    <section class="mylogin">
    <section class="login-form">

        <form action="http://localhost:8081/URBAN-FOODS/admin/update.jsp" method="post">
            <h3>Update User</h3>
            <div class="inputbox">
                <span class="fas fa-envelope"></span>
                <input type="email" name="update_email" id="" placeholder="enter your email">
            </div>
            <div class="inputbox">
                <select name="update_user_type">
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                </select>
            </div>

            <input type="submit" value="Update user &#128100;" class="btn">
        </form>


    </section>
</section>
    <!--Update user section ends-->
<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>locations</h3>
            <a href="#">india</a>
            <a href="#">japan</a>
            <a href="#">russia</a>
            <a href="#">USA</a>
            <a href="#">france</a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#">home</a>
            <a href="#">dishes</a>
            <a href="#">about</a>
            <a href="#">menu</a>
            <a href="#">reivew</a>
            <a href="#">order</a>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#">+91 94926 72990</a>
            <a href="#">+91 79895 13458</a>
            <a href="#">sjoshith01@gmail.com</a>
            <a href="#">srikanthkandi444@gmail.com</a>
            <a href="#">vijayawada,india - 520012</a>
        </div>

        <div class="box">
            <h3>follow us</h3>
            <a href="#"><i class="fab fa-facebook"></i> facebook</a>
            <a href="#"><i class="fab fa-twitter"></i> twitter</a>
            <a href="#"><i class="fab fa-instagram"></i> instagram</a>
            <a href="#"><i class="fab fa-linkedin"></i> linkedin</a>
        </div>

    </div>

    <div class="credit">Created by <span><a href="https://github.com/SJOSHITHSAIRAM" style="color:var(--green);font-weight: 900;">Joshith Sai Ram</a></span> | © 2022 | All rights reserved.</div>

</section>

<!-- footer section ends -->

<!-- loader part  -->
<div class="loader-container">
    <img src="http://localhost:8081/URBAN-FOODS/images/loader.gif" alt="">
</div>





















<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="http://localhost:8081/URBAN-FOODS/js/script.js"></script>

</body>
</html>