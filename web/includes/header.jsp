<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <title>Da Nang Bus</title>
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body class="is-preload">
        <% String user = (String) session.getAttribute("user");
        String username = (String) session.getAttribute("displayName");
        String sessionID = null;
        Cookie[] cookies = request.getCookies();
        if(cookies !=null){
        for(Cookie cookie : cookies){
                if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
            }
        }
        %>
        <!-- Wrapper -->
        <div id="wrapper">
            <!-- Main -->
            <div id="main">
                <div class="inner">
                    <!-- Header -->
                    <header id="header">
                        <img src="images/logo.png" alt="" />
                        <ul class="icons">
                            <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                            <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                            <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>   
                                <c:choose>
                                    <c:when test="${user!=null}">
                                    <li>Xin chào, <%=username %></li>
                                    <li><form action="LogoutServlet" method="post">
                                            <input type="submit" value="ĐĂNG XUẤT" >
                                        </form></li>
                                    </c:when>    
                                    <c:otherwise>
                                    <li><a href="dangnhap.jsp" class="button">ĐĂNG NHẬP</a></li>
                                    </c:otherwise>
                                </c:choose>
                        </ul>
                    </header>
