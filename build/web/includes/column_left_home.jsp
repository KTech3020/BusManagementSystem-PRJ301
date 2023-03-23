<%@page contentType="text/html" pageEncoding="utf-8" %>	
<!-- Sidebar -->
<div id="sidebar">
    <div class="inner">
        <!-- Search -->
        <section id="search" class="alt">
            <form method="post" action="#">
                <input type="text" name="query" id="query" placeholder="Search" />
            </form>
        </section>

        <!-- Menu -->
        <nav id="menu">
            <header class="major">
                <h2>Menu</h2>
            </header>
            <style>
                ul.navigation-menu>li>div{
                    display: none;
                }
                ul.navigation-menu>li:hover>div{
                    display: block;
                }
            </style>
            <ul class="navigation-menu">
                <li><a href="index.jsp">Trang chủ</a></li>
                <li><a href="#">Thông tin tuyến xe</a></li>
                <li><a href="#">Thông tin vé tuần, tháng</a></li>
                <li><a href="#">Liên hệ</a></li>
            </ul>
        </nav>

        <!-- Section -->
        <section>
            <header class="major">
                <h2>Liên hệ</h2>
            </header>
            <ul class="contact">
                <li class="icon solid fa-envelope"><a href="#">The Coding Clowns</a></li>
                <li class="icon solid fa-phone">brother we don't have phone numbers yet</li>
                <li class="icon solid fa-home">Khu Đô Thị FPT Đà Nẵng,<br /> P. Hòa Hải, Q.Ngũ Hành Sơn, TP Đà Nẵng</li>
            </ul>
        </section>
