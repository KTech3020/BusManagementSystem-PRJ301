<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<section>
    <header class="major">
        <h1>ĐĂNG NHẬP</h1>
    </header>
    <div class="login">
        <form class="dangki" action ="RegisterServlet" method="post" enctype="multipart/form-data">
            <div class="row gtr-uniform">
                <div class="col-3 col-12-small"></div>
                <div class="col-6 col-12-small">
                    <label for>Tên đăng nhập</label>
                    <input type="text" placeholder="Username" required name="dk_tendangnhap"/>
                </div>
                <div class="col-3 col-12-small"></div>
                <div class="col-3 col-12-small"></div>
                <div class="col-6 col-12-small">
                    <label for>Mật khẩu</label>
                    <input type="password" placeholder="Password" required name="dk_matkhau"/>
                </div>
                <div class="col-3 col-12-small"></div>
                <div class="col-3 col-12-small"></div>
                <div class="col-3 col-12-small">
                    <label for>.</label>
                    <input type="submit" value="Đăng nhập">
                </div>
                <div class="col-3 col-12-small">
                    <label for>Chưa có tài khoản?</label>
                    <a href="dangki.jsp" class="button">Đăng ký ngay</a>
                </div>
                <div class="col-3 col-12-small"></div>
            </div>
        </form>
    </div>
</section>
</div></div>

