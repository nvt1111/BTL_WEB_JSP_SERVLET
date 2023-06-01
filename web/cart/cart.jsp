<%-- 
    Document   : hoadon
    Created on : Jun 3, 2022, 1:37:49 PM
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
        <title>Cart</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link rel="stylesheet" href="../css/thanhtoan.css">
        <!--<link rel="stylesheet" href="../css/trang_chu.css">-->
        <link href="https: //fonts.googleapis.com/css2? family = Roboto: ital, wght @ 0,300; 0,500; 0,700; 1,400 & display = swap " rel=" stylesheet ">
    </head>

    <body>
        ${sessionScope.soLg}
        <div class="logo-header">
                <img class="header-anh" src="../images/_13.04_-fixtop.chaohe50k.png" alt="">
            </div>
            <!-- header -->
            <div class="header">
                <div class="header__thanh-menu">
                    <div class="header__thanh-menu-logo">
                        <img class="header__thanh-menu-anh" src="../images/logo.svg" alt="">
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
<!--                        <i class="fa-solid fa-cart-arrow-down">
                            <a href="/cart"/>
                        </i>-->
                    </div>
                </div>
            </div>
        
    <c:choose>
        <c:when test="${emptyCart != null}">
            <p>${emptyCart}</p>
        </c:when>
        <c:otherwise>
            <table class="khung">
                <tr>
                    <th class="tha">Qty</th>
                    <th>Tên</th>
                    <th>anh</th>
                    <th>Description</th>
                    <th>Giá</th>
                    <th>The loai</th>
                    <th>Tổng tiền</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="item" items="${cart.listHoaDonChiTiet}">
                    <tr class="cart_row">
                        <td class="tda">
                            <form action="<c:url value='/order/updateItem'/>" method="post">
                                <input type="hidden" name="productCode" 
                                       value="<c:out value='${item.sanPham.getSanPhamCode()}'/>">
                                <input class="qty-soluong" type=text name="quantity" 
                                       value="<c:out value='${item.getSoLuong()}'/>" id="quantity">
                                <input type="submit" value="Update">
                            </form>                  
                        </td>
                        <td>${item.sanPham.getTen()}</td>
                        <td ><img class="anhthanhtoan" src="../images/AnhSanPham/${item.sanPham.getSanPhamCode()}"></td>
                        <td>${item.sanPham.getSanPhamDescription()}</td>
                        <td>${item.sanPham.getGia()}</td>
                        <td>${item.sanPham.getTheLoai()}</td>
                        <td>10000</td>
                        <td>
                            <form action="<c:url value='/order/removeItem'/>" method="post">
                                <input type="hidden" name="productCode" 
                                       value="<c:out value='${item.sanPham.getSanPhamCode()}'/>">
                                <input type="submit" value="Remove">
                            </form>                  
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    
                    <td colspan="3">&nbsp;</td>
                </tr>
            </table>
            <form  class="thanhtoana" action="<c:url value='/order/checkUser'/>" method="post">
                <input style="background-color: #c56b1e;" type="submit" value="Checkout">
            </form>
        </c:otherwise>
    </c:choose>
    <form class="thanhtoana" action="<c:url value='/'/>" method="get" id="float_left">
        <input style="background-color: #c56b1e;" type="submit" value="Continue Shopping">
    </form>
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

</html>
