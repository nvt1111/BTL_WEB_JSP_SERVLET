<%-- 
    Document   : chitiet
    Created on : Jun 3, 2022, 1:35:56 PM
    Author     : daodu
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sản phẩm</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
        <link rel="stylesheet" href="./css/chitiet.css">
        <link rel="stylesheet" href="./css/trang_chu.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link href="https: //fonts.googleapis.com/css2? family = Roboto: ital, wght @ 0,300; 0,500; 0,700; 1,400 & display = swap " rel=" stylesheet ">
    </head>

    <body>

        <div class="logo-header">
            <img class="header-anh" src="./images/_13.04_-fixtop.chaohe50k.png" alt="">
        </div>
        <!-- header -->
        <div class="header">
            <div class="header__thanh-menu">
                <div class="header__thanh-menu-logo">
                    <img class="header__thanh-menu-anh" src="./images/logo.svg" alt="">
                </div>
                <div class="header__thanh-menu-menu">
                    <ul class="header__thanh-menu-menu-danh-sach">
                        <li class="header__thanh-menu-menu-chi-tiet">
                            <a class="header__thanh-menu-duong-dan" href="/Btl_ltw_n12/">TRANG CHỦ</a>
                        </li>
                        <li class="header__thanh-menu-menu-chi-tiet">
                            <a class="header__thanh-menu-duong-dan" href="/Btl_ltw_n12/san_pham">SẢN PHẨM</a>
                        </li>
                        <li class="header__thanh-menu-menu-chi-tiet">
                            <a class="header__thanh-menu-duong-dan" href="/Btl_ltw_n12/order/showCart">GIỎ HÀNG</a>
                        </li>

                        <li class="header__thanh-menu-menu-chi-tiet">
                            <a class="header__thanh-menu-duong-dan" href="">OUTLET</a>
                        </li>
                        <li class="header__thanh-menu-menu-chi-tiet">
                            <a class="header__thanh-menu-duong-dan" href="">LIÊN HỆ</a>
                        </li>
                    </ul>
                </div>
                <div class="header__thanh-menu-tim-kiem">
                    <div class="tim-kiem-nhap-va-tim-kiem">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        <input class="tim-kiem-nhap" type="text" placeholder="Nhập để tìm kiếm sản phẩm">
                    </div>
                </div>
                <div class="header__thanh-menu-icon">
                    <i class="fa-solid fa-store"></i>
                    <i class="fa-solid fa-heart"></i>
                    <i class="fa-solid fa-user"></i>
                    <i class="fa-solid fa-cart-arrow-down">
                        <!--<a href="/cart"/>-->
                    </i>
                </div>
            </div>
        </div>
        <div class="content-mau">
        </div>
        <div class="ung_dung">

            <div class="than">
                <div class="than1">
                    <div class="than2">
                        <div class="sp_trai">
                            <div class="sp_anh_lon">
                                <img class="sp_anh_chinh" src="./images/AnhSanPham/${sp_ChiTiet.getSanPhamCode()}" alt="">
                            </div>
                            <div class="sp_anh_nho">
                                <img class="sp_anh_nho1" src="./images/AnhSanPham/${sp_ChiTiet.getSanPhamCode()}" alt="">
                                <img class="sp_anh_nho1" src="./images/AnhSanPham/${sp_ChiTiet.getSanPhamCode()}" alt="">
                                <img class="sp_anh_nho1" src="./images/AnhSanPham/${sp_ChiTiet.getSanPhamCode()}" alt="">
                                <img class="sp_anh_nho1" src="./images/AnhSanPham/${sp_ChiTiet.getSanPhamCode()}" alt="">
                                <img class="sp_anh_nho1" src="./images/AnhSanPham/${sp_ChiTiet.getSanPhamCode()}" alt="">
                            </div>
                            <div class="sp_duoi_trai">
                                <div class="sp_duoi_trai_chia_se">
                                    <span class="sp_duoi_trai_chia_se_chu">Chia sẻ : </span>
                                    <i class="fa-brands fa-facebook-messenger"></i>
                                    <i class="fa-brands fa-facebook"></i>
                                    <i class="fa-brands fa-pinterest"></i>
                                    <i class="fa-brands fa-twitter"></i>
                                </div>

                                <div class="sp_duoi_trai_thich">
                                    <i class="fa-solid fa-heart"></i>
                                    <span class="sp_duoi_trai_thich_chu">
                                        Đã thích (500)
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="sp_phai">
                            <div class="sp_phai_dau">
                                <span> ${sp_ChiTiet.getTen()}</span>
                            </div>
                            <div class="sp_phai_thong_tin">
                                <div class="sp_phai_sao">
                                    <span>5.0</span>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                                <div class="sp_phai_danh_gia">
                                    <span>9 Đánh giá</span>
                                </div>
                                <div class="sp_phai_ban">
                                    <span>34 Đã bán</span>
                                    <i class="fa-solid fa-circle-question"></i>

                                </div>
                            </div>
                            <div class="sp_phai_gia">
                                <span class="sp_phai_gia_cu">50.000đ</span>
                                <span class="sp_phai_gia_moi">${sp_ChiTiet.getGia()}</span>
                                <span class="sp_phai_gia_giam">40% GIẢM</span>
                            </div>
                            <div class="sp_phai_ma">
                                <div class="sp_phai_giam">
                                    <span>Mã giám giá của Shop</span>
                                </div>
                                <span class="sp_phai_giam1">Giảm 1k</span>
                                <span class="sp_phai_giam2">Giảm 2k</span>
                            </div>
                            <div class="sp_phai_van_chuyen">
                                <div class="sp_phai_van_chuyen2">
                                    <span>Vận chuyển</span>
                                </div>
                                <div class="sp_phai_van_chuyen_thong_tin">

                                    <div class="sp_phai_van_chuyen_chu">
                                        <div class="sp_phai_van_chuyen_chu_dau"><i class="fa-solid fa-truck"></i>Miễn phí vận chuyển</div>
                                        <div class="sp_phai_van_chuyen_chu_than">Miễn phí vận chuyển cho đơn hàng trên ₫300.000
                                        </div>
                                        <div class="sp_phai_van_chuyen_chu_dau1">
                                            <i class="fa-solid fa-truck-fast"></i> Vận Chuyển Tới
                                            <span class="sp_phai_van_chuyen_dia_chi">
                                                Tây Đằng , Ba Vì , Hà Nội
                                                <i class="fa-solid fa-chevron-down"></i>
                                            </span>
                                        </div>
                                        <div class="sp_phai_van_chuyen_chu_than1">
                                            Phí Vận Chuyển
                                            <span class="sp_phai_van_chuyen_dia_chi">
                                                15.000đ - 30.000đ
                                                <i class="fa-solid fa-chevron-down"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="sp_phai_mau">
                                <div class="sp_phai_mau_chu">
                                    <span>Màu sắc</span>
                                </div>
                                <span class="sp_phai_mau_nut">
                                    Đen
                                </span>
                                <span class="sp_phai_mau_nut">
                                    Than
                                </span>
                                <span class="sp_phai_mau_nut">
                                    Ghi
                                </span>
                            </div>
                            <div class="sp_phai_mau">
                                <div class="sp_phai_mau_chu">
                                    <span>size</span>
                                </div>
                                <span class="sp_phai_mau_nut">
                                    Free Size từ 45 - 65 kg
                                </span>

                            </div>
                            <form method="post" action="<c:url value='/order/addItem'/>">
                                <div class="sp_phai_so_luong">
                                    <div class="sp_phai_mau_chu">
                                        <span>Số lượng</span>
                                    </div>      
                                    <div class="buttons_added">
                                        <input class="minus is-form" type="button" value="-">
                                        <input aria-label="quantity" class="input-qty" max="100" min="1" name="soLuong" type="number" value="1">
                                        <input class="plus is-form" type="button" value="+">
                                    </div>                       

                                    <span class="sp_phai_so_luong_chu2">9921 sản phẩm có sẵn</span>
                                </div>
                                <div class="sp_phai_them">
                                    <div class="sp_phai_them_sp">

                                        <input type="hidden" name="code" value="${sp_ChiTiet.getSanPhamCode()}">
                                        <input class="themvaogiohang" type="submit" value=" Thêm vào giỏ hàng">
                                        <i class="fa-solid fa-cart-plus"></i>

                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <div class="footer">
            <div class="footer">
                <div class="footer-mot">
                    <h3 class="footer-nhan">
                        CÔNG TY CỔ PHẦN CANIFA
                    </h3>
                    <p class="footer-text">
                        Số ĐKKD: 0107574310, ngày cấp: 23/09/2016, nơi cấp: Sở Kế hoạch và đầu tư Hà Nội
                    </p>
                    <p class="footer-text">
                        Trụ sở chính: Số 688, Đường Quang Trung, Phường La Khê, Quận Hà Đông, Hà Nội, Việt Nam
                    </p>
                    <p class="footer-text">
                        Địa chỉ liên hệ: Phòng 301 Tòa nhà GP Invest, 170 La Thành, P. Ô Chợ Dừa, Q. Đống Đa, Hà Nội
                    </p>
                    <p class="footer-text">
                        Số điện thoại: +8424 - 7303.0222
                    </p>
                    <p class="footer-text">
                        Fax: +8424 - 6277.6419
                    </p>
                    <p class="footer-text">
                        Địa chỉ email: hello@canifa.com
                    </p>
                </div>
                <div class="footer-hai">
                    <h3 class="footer-nhan">
                        THƯƠNG HIỆU
                    </h3>
                    <p class="footer-text footer-text-dong-chu">
                        Giới thiệu
                    </p>
                    <p class="footer-text footer-text-dong-chu">
                        Tin tức
                    </p>
                    <p class="footer-text footer-text-dong-chu">
                        Tuyển dụng
                    </p>
                    <p class="footer-text footer-text-dong-chu">
                        Với cộng đồng
                    </p>
                    <p class="footer-text footer-text-dong-chu">
                        Hệ thống cửa hàng
                    </p>
                    <p class="footer-text footer-text-dong-chu">
                        Liên hệ
                    </p>

                </div>
                <div class="footer-ba">
                    <h3 class="footer-nhan">
                        HỖ TRỢ
                    </h3>
                    <p class="footer-text footer-text-dong-chu">
                        Hỏi đáp
                    </p>
                    <p class="footer-text footer-text-dong-chu">
                        Chính sách KHTT
                    </p>
                    <p class="footer-text footer-text-dong-chu">
                        Chính sách vận chuyển
                    </p>
                    <p class="footer-text footer-text-dong-chu">
                        Hướng dẫn chọn size
                    </p>
                    <p class="footer-text footer-text-dong-chu">
                        Kiểm tra đơn hàng
                    </p>
                    <p class="footer-text footer-text-dong-chu">
                        Quy định đổi hàng
                    </p>
                    <p class="footer-text footer-text-dong-chu">
                        Tra cứu điểm thẻ
                    </p>
                    <p class="footer-text footer-text-dong-chu">
                        Chính sách bảo mật
                    </p>
                </div>
                <div class="footer-bon">
                    <h3 class="footer-nhan">
                        PHƯƠNG THỨC THANH TOÁN
                    </h3>
                    <i class="footer-icon fa-brands fa-cc-visa"></i>
                    <i class="footer-icon fa-brands fa-cc-mastercard"></i>
                    <i class="footer-icon fa-brands fa-cc-jcb"></i>
                    <i class="footer-icon fa-regular fa-building-columns"></i>
                </div>
            </div>
            <div class="footer-bottom">

            </div>
        </div>
    </body>
    <script>
        const $ = document.querySelector.bind(document);
        const $$ = document.querySelectorAll.bind(document);
        console.log($('.minus'))
        console.log($('.input-qty').value)

        $('.minus').onclick = function () {
            x = $('.input-qty').value
            if ($('.input-qty').value * 1 > 1) {
                $('.input-qty').value = x * 1 - 1
            }
        };


        $('.plus').onclick = function () {
            x = $('.input-qty').value
            $('.input-qty').value = x * 1 + 1
        };
    </script>
</script>
</html>