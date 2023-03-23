<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<section>
    <header class="major">
        <h1>ĐĂNG KÝ TÀI KHOẢN</h1>
    </header>
    <div class="form-dkts">
        <form class="dangki" action ="RegisterServlet" method="post" enctype="multipart/form-data">
            <div class="row gtr-uniform">
                <div class="col-4 col-12-xsmall">
                    <label for>Họ tên</label>
                    <input type="text" placeholder="Nguyễn Văn A" required name="dk_hoten"/>
                </div>
                <div class="col-4 col-12-xsmall">
                    <label for>Ngày sinh</label>
                    <input type="date" required name="dk_ngsinh"/>
                </div>
                <div class="col-4 col-12-xsmall">
                    <label for>Ảnh thẻ (4x6)</label>
                    <input type="file" required name="dk_img">
                </div>
                <div class="col-2 col-12-small">
                    <label for>Giới tính</label>
                    <select required name="dk_gt">
                        <option disabled selected="selected">Chọn giới tính</option><!-- dummy default option -->
                        <option value="M">Nam</option>
                        <option value="F">Nữ</option>
                        <option value="L">LGBT</option>
                    </select>
                </div>
                <div class="col-3 col-12-small">
                    <label for>Số điện thoại</label>
                    <input type="text" name="dk_sdt">
                </div>
                <div class="col-7 col-12-small">
                    <label for>Quê quán</label>
                    <input type="text" placeholder="Xã/Phường - Huyện/Quận - Tỉnh/Thành Phố" required name="dk_quequan"/>
                </div>
                <div class="col-3 col-12-small">
                    <label for>Loại tài khoản</label>
                </div>
                <div class="col-3 col-12-small">
                    <input type="radio" id="khachhang" name="dk_loaiTK" checked="">
                    <label for="khachhang">Khách hàng</label>
                </div>
                <div class="col-3 col-12-small">
                    <input type="radio" id="laixe" name="dk_loaiTK" checked="">
                    <label for="laixe">Lái xe</label>
                </div>
                <div class="col-3 col-12-small">
                    <input type="radio" id="quantrivien" name="dk_loaiTK" checked="">
                    <label for="quantrivien">Quản trị viên</label>
                </div>
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
                <div class="col-3 col-12-small">
                    <input type="submit" value="Đăng ký">
                </div>
            </div>
        </form>
    </div>
</section>
</div></div>

