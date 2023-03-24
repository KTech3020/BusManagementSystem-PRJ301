<%@page contentType="text/html" pageEncoding="utf-8" %>	
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!-- Sidebar -->
<div id="sidebar">
    <div class="inner">

        <!-- Menu -->
        <nav id="menu">
            <header class="major">
                <h2>Menu</h2>
            </header>
            <ul class="navigation-menu">
                <li><a href="index.jsp">Trang chủ</a></li>
                <li><a href="tuyenxe.jsp">Thông tin tuyến xe</a></li>
                <li><a href="datve.jsp">Đăng kí mua vé tháng</a></li>
                    <c:if test="${user!=null}">
                        <li><a href="taixe.jsp">Xem danh sách tài xế</a></li>
                        <li><a href="khachhang.jsp">Xem thông tin khách hàng</a></li>
                    </c:if>    
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
