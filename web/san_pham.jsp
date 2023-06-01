<%-- 
    Document   : san_pham
    Created on : May 30, 2022, 9:52:48 PM
    Author     : daodu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SẢN PHẨM</title>
    <link rel="stylesheet" href="./fonts/fontawesome-free-6.1.1-web/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="./css/san_pham.css">
</head>

<body>
    <div class="trang_chu">

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
                    <i class="fa-solid fa-cart-arrow-down"></i>
                </div>
            </div>
        </div>
        <!-- content -->
        <div class="content">
            <div class="content-mau">
            </div>

            <!-- san-pham-nam -->

            <div class="content-giam-gia">
                <h2 class="content-giam-gia-text">Sản phẩm dành cho nam</h2>
            </div>
            <div class="content-san-pham">
                <!-- product -->
                <c:forEach items="${spNamList}" var="spNam" end = "5">
                   <a class="content-san-pham-con" href="sp_chiTiet?spctid=${spNam.getSanPhamID()}">
                    <div class="content-san-pham-con-anh" style="background-image: url(./images/AnhSanPham/${spNam.getSanPhamCode()});"></div>
                    <h4 class="content-san-pham-con-ten">${spNam.getTen()}</h4>
                    <div class="content-san-pham-con-gia">
                        <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                        <span class="content-san-pham-con-gia-hien-tai">${spNam.getGia()}đ</span>
                    </div>
                    <div class="content-san-pham-con-hanh-dong">
                        <span class="content-san-pham-con-trai-tym">
                                <i class="fa-solid fa-heart"></i>
                            </span>
                        <div class="content-san-pham-con-ngoi-sao">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </div>
                        <h4 class="content-san-pham-con-text">88 Đã bán</h4>
                    </div>
                    <div class="content-san-pham-con-dia-diem">
                        <span class="content-san-pham-con-dia-diem-ten">Hà Nội</span>
                    </div>
                    <div class="content-san-pham-con-yeu-thich">
                        <i class="fa-solid fa-check"></i> Yêu thích
                    </div>
                    <div class="content-san-pham-con-giam-gia">
                        <span class="content-san-pham-con-phan-tram">10%</span>
                        <span class="content-san-pham-con-nhan">GIẢM</span>
                    </div>
                </a>
                </c:forEach>
            </div>
            <!-- san-pham-nu -->
            <div class="content-giam-gia">
                <h2 class="content-giam-gia-text">Sản phẩm dành cho nữ</h2>
            </div>
            <div class="content-san-pham">
                <!-- product -->
                 <c:forEach items="${spNuList}" var="spNu" end = "5">
                   <a class="content-san-pham-con" href="sp_chiTiet?spctid=${spNu.getSanPhamID()}">
                    <div class="content-san-pham-con-anh" style="background-image: url(./images/AnhSanPham/${spNu.getSanPhamCode()});"></div>
                    <h4 class="content-san-pham-con-ten">${spNu.getTen()}</h4>
                    <div class="content-san-pham-con-gia">
                        <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                        <span class="content-san-pham-con-gia-hien-tai">${spNu.getGia()}đ</span>
                    </div>
                    <div class="content-san-pham-con-hanh-dong">
                        <span class="content-san-pham-con-trai-tym">
                                <i class="fa-solid fa-heart"></i>
                            </span>
                        <div class="content-san-pham-con-ngoi-sao">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </div>
                        <h4 class="content-san-pham-con-text">88 Đã bán</h4>
                    </div>
                    <div class="content-san-pham-con-dia-diem">
                        <span class="content-san-pham-con-dia-diem-ten">Hà Nội</span>
                    </div>
                    <div class="content-san-pham-con-yeu-thich">
                        <i class="fa-solid fa-check"></i> Yêu thích
                    </div>
                    <div class="content-san-pham-con-giam-gia">
                        <span class="content-san-pham-con-phan-tram">10%</span>
                        <span class="content-san-pham-con-nhan">GIẢM</span>
                    </div>
                </a>
                </c:forEach>


            </div>
        </div>

    </div>
    <!-- footer -->
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
    </div>
</body>

</html>
