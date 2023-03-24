<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<section>
    <header class="major">
        <h1>ĐĂNG KÝ MUA VÉ</h1>
    </header>
    <div class="form-dkts">
        <form class="dangki" action ="TicketServlet" method="get">
            <div class="row gtr-uniform">
                <div class="col-4 col-12-xsmall">
                    <label>Họ tên</label>
                    <input type="text" required name="dk_hoten"/>
                </div>
                <div class="col-4 col-12-small">
                    <label>Số điện thoại</label>
                    <input type="text" required name="dk_sdt">
                </div>
                <div class="col-4 col-12-small"></div>
                <div class="col-3 col-12-small">
                    <input type="radio" id="tuyen1" name="dk_tuyen" checked="" value="1">
                    <label for="tuyen1">Bến xe Trung tâm Đà Nẵng – Bến xe Hội An </label>
                </div>
                <div class="col-3 col-12-small">
                    <input type="radio" id="tuyen2" name="dk_tuyen" checked="" value="2">
                    <label for="tuyen2">Kim Liên – Chợ Hàn </label>
                </div>
                <div class="col-3 col-12-small">
                    <input type="radio" id="tuyen3" name="dk_tuyen" checked="" value="3">
                    <label for="tuyen3">Bến xe Trung tâm Đà Nẵng – Bến xe Ái Nghĩa</label>
                </div>  
                <div class="col-3 col-12-small"></div>
                <div class="col-12 col-12-small">* Tuyến Đà Nẵng – Tam Kỳ không hỗ trợ đăng kí vé tháng.</div>
                <div class="col-3 col-12-small">
                    <input type="submit" value="Đặt vé">
                </div>
            </div>
        </form>
    </div>
</section>
</div></div>