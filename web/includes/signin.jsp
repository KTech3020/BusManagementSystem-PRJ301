<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<section>
    <%
        boolean loginStatus = true;
        if (request.getParameter("loginStatus") != null) {
            if (request.getParameter("loginStatus").equals("failed")) loginStatus = false;
        }
    %>
    <header class="major">
        <h1>ĐĂNG NHẬP</h1>
    </header>
    <div class="login">
        <form action ="LoginServlet" method="post">
            <div class="row gtr-uniform">
                <div class="col-3 col-12-small"></div>                
                    <c:choose>
                        <c:when test="${loginStatus==false}">
                            <div class="col-6 col-12-small">
                                Sai tên đăng nhập/mật khẩu. Vui lòng nhập lại.
                            </div>
                            </c:when>    
                            <c:otherwise>
                            <div class="col-6 col-12-small"></div>
                            </c:otherwise>
                        </c:choose>                
                <div class="col-3 col-12-small"></div>
                <div class="col-3 col-12-small"></div>
                <div class="col-6 col-12-small">
                    <label for>Tên đăng nhập</label>
                    <input autofocus="true" type="text" placeholder="Username" required name="dn_tendangnhap"/>
                </div>
                <div class="col-3 col-12-small"></div>
                <div class="col-3 col-12-small"></div>
                <div class="col-6 col-12-small">
                    <label for>Mật khẩu</label>
                    <input type="password" placeholder="Password" required name="dn_matkhau"/>
                </div>
                <div class="col-3 col-12-small"></div>
                <div class="col-3 col-12-small"></div>
                <div class="col-3 col-12-small">
                    <input type="submit" value="Đăng nhập">
                </div>
                <div class="col-3 col-12-small">

                </div>
                <div class="col-3 col-12-small"></div>
            </div>
        </form>
    </div>
</section>
</div></div>

