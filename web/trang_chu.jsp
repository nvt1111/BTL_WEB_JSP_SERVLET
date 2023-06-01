<%-- 
    Document   : trang_chu
    Created on : May 30, 2022, 9:54:11 PM
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
        <title>Trang Chủ</title>
        <link rel="stylesheet" href="./fonts/fontawesome-free-6.1.1-web/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
        <link rel="stylesheet" href="./css/trang_chu.css">
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
                        <i class="fa-solid fa-cart-arrow-down">
                            <a href="/cart"/>
                        </i>
                    </div>
                </div>
            </div>
            <!-- content -->
            <div class="content">

                <div class="content-mau">
                </div>
                <div class="content-anh">
                    <img class="content-anh-anh" src="./images/banner_name_tablet1650443961.png" alt="">
                </div>
                <div class="content-giam-gia">
                    <h2 class="content-giam-gia-text">Flash deal mỗi ngày!</h2>
                </div>
                <!-- products -->
                <div class="content-san-pham">
                    <c:forEach items="${spList}" var="sanpham" end = "11">
                        <a class="content-san-pham-con" href="sp_chiTiet?spctid=${sanpham.getSanPhamID()}">
                            <div class="content-san-pham-con-anh" style="background-image: url(./images/AnhSanPham/${sanpham.getSanPhamCode()});"></div>
                            <h4 class="content-san-pham-con-ten">${sanpham.getTen()}</h4>
                            <div class="content-san-pham-con-gia">
                                <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                <span class="content-san-pham-con-gia-hien-tai">${sanpham.getGia()}đ</span>
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
                    <!-- product -->
                    <!--                <a class="content-san-pham-con" href="https://shopee.vn/-M%C3%A3-254FASHIONSALE-gi%E1%BA%A3m-12-%C4%91%C6%A1n-99K-%C3%81o-thun-nam-POLO-tr%C6%A1n-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-cotton-cao-c%E1%BA%A5p-ng%E1%BA%AFn-tay-c%E1%BB%B1c-sang-tr%E1%BB%8Dng-i.296694982.3448103572?sp_atk=888237c0-7298-44b7-aef0-00c25062c816">
                                        <div class="content-san-pham-con-anh" style="background-image: url(https://canifa.com/img/486/733/resize/6/b/6bj21s004-sj633-2-thumb-.jpg);"></div>
                                        <h4 class="content-san-pham-con-ten">Quần jeans nữ ống rộng</h4>
                                        <div class="content-san-pham-con-gia">
                                            <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                            <span class="content-san-pham-con-gia-hien-tai">999.000đ</span>
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
                                    <a class="content-san-pham-con" href="https://shopee.vn/-M%C3%A3-254FASHIONSALE-gi%E1%BA%A3m-12-%C4%91%C6%A1n-99K-%C3%81o-thun-nam-POLO-tr%C6%A1n-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-cotton-cao-c%E1%BA%A5p-ng%E1%BA%AFn-tay-c%E1%BB%B1c-sang-tr%E1%BB%8Dng-i.296694982.3448103572?sp_atk=888237c0-7298-44b7-aef0-00c25062c816">
                                        <div class="content-san-pham-con-anh" style="background-image: url(https://canifa.com/img/486/733/resize/6/b/6bj21s004-sj633-2-thumb-.jpg);"></div>
                                        <h4 class="content-san-pham-con-ten">Quần jeans nữ ống rộng</h4>
                                        <div class="content-san-pham-con-gia">
                                            <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                            <span class="content-san-pham-con-gia-hien-tai">999.000đ</span>
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
                                    <a class="content-san-pham-con" href="https://shopee.vn/-M%C3%A3-254FASHIONSALE-gi%E1%BA%A3m-12-%C4%91%C6%A1n-99K-%C3%81o-thun-nam-POLO-tr%C6%A1n-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-cotton-cao-c%E1%BA%A5p-ng%E1%BA%AFn-tay-c%E1%BB%B1c-sang-tr%E1%BB%8Dng-i.296694982.3448103572?sp_atk=888237c0-7298-44b7-aef0-00c25062c816">
                                        <div class="content-san-pham-con-anh" style="background-image: url(https://canifa.com/img/486/733/resize/6/b/6bj21s004-sj633-2-thumb-.jpg);"></div>
                                        <h4 class="content-san-pham-con-ten">Quần jeans nữ ống rộng</h4>
                                        <div class="content-san-pham-con-gia">
                                            <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                            <span class="content-san-pham-con-gia-hien-tai">999.000đ</span>
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
                                    <a class="content-san-pham-con" href="https://shopee.vn/-M%C3%A3-254FASHIONSALE-gi%E1%BA%A3m-12-%C4%91%C6%A1n-99K-%C3%81o-thun-nam-POLO-tr%C6%A1n-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-cotton-cao-c%E1%BA%A5p-ng%E1%BA%AFn-tay-c%E1%BB%B1c-sang-tr%E1%BB%8Dng-i.296694982.3448103572?sp_atk=888237c0-7298-44b7-aef0-00c25062c816">
                                        <div class="content-san-pham-con-anh" style="background-image: url(https://canifa.com/img/486/733/resize/6/b/6bj21s004-sj633-2-thumb-.jpg);"></div>
                                        <h4 class="content-san-pham-con-ten">Quần jeans nữ ống rộng</h4>
                                        <div class="content-san-pham-con-gia">
                                            <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                            <span class="content-san-pham-con-gia-hien-tai">999.000đ</span>
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
                                    <a class="content-san-pham-con" href="https://shopee.vn/-M%C3%A3-254FASHIONSALE-gi%E1%BA%A3m-12-%C4%91%C6%A1n-99K-%C3%81o-thun-nam-POLO-tr%C6%A1n-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-cotton-cao-c%E1%BA%A5p-ng%E1%BA%AFn-tay-c%E1%BB%B1c-sang-tr%E1%BB%8Dng-i.296694982.3448103572?sp_atk=888237c0-7298-44b7-aef0-00c25062c816">
                                        <div class="content-san-pham-con-anh" style="background-image: url(https://canifa.com/img/486/733/resize/6/b/6bj21s004-sj633-2-thumb-.jpg);"></div>
                                        <h4 class="content-san-pham-con-ten">Quần jeans nữ ống rộng</h4>
                                        <div class="content-san-pham-con-gia">
                                            <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                            <span class="content-san-pham-con-gia-hien-tai">999.000đ</span>
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
                                    <a class="content-san-pham-con" href="https://shopee.vn/-M%C3%A3-254FASHIONSALE-gi%E1%BA%A3m-12-%C4%91%C6%A1n-99K-%C3%81o-thun-nam-POLO-tr%C6%A1n-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-cotton-cao-c%E1%BA%A5p-ng%E1%BA%AFn-tay-c%E1%BB%B1c-sang-tr%E1%BB%8Dng-i.296694982.3448103572?sp_atk=888237c0-7298-44b7-aef0-00c25062c816">
                                        <div class="content-san-pham-con-anh" style="background-image: url(https://canifa.com/img/486/733/resize/6/b/6bj21s004-sj633-2-thumb-.jpg);"></div>
                                        <h4 class="content-san-pham-con-ten">Quần jeans nữ ống rộng</h4>
                                        <div class="content-san-pham-con-gia">
                                            <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                            <span class="content-san-pham-con-gia-hien-tai">999.000đ</span>
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
                                    <a class="content-san-pham-con" href="https://shopee.vn/-M%C3%A3-254FASHIONSALE-gi%E1%BA%A3m-12-%C4%91%C6%A1n-99K-%C3%81o-thun-nam-POLO-tr%C6%A1n-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-cotton-cao-c%E1%BA%A5p-ng%E1%BA%AFn-tay-c%E1%BB%B1c-sang-tr%E1%BB%8Dng-i.296694982.3448103572?sp_atk=888237c0-7298-44b7-aef0-00c25062c816">
                                        <div class="content-san-pham-con-anh" style="background-image: url(https://canifa.com/img/486/733/resize/6/b/6bj21s004-sj633-2-thumb-.jpg);"></div>
                                        <h4 class="content-san-pham-con-ten">Quần jeans nữ ống rộng</h4>
                                        <div class="content-san-pham-con-gia">
                                            <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                            <span class="content-san-pham-con-gia-hien-tai">999.000đ</span>
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
                                    <a class="content-san-pham-con" href="https://shopee.vn/-M%C3%A3-254FASHIONSALE-gi%E1%BA%A3m-12-%C4%91%C6%A1n-99K-%C3%81o-thun-nam-POLO-tr%C6%A1n-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-cotton-cao-c%E1%BA%A5p-ng%E1%BA%AFn-tay-c%E1%BB%B1c-sang-tr%E1%BB%8Dng-i.296694982.3448103572?sp_atk=888237c0-7298-44b7-aef0-00c25062c816">
                                        <div class="content-san-pham-con-anh" style="background-image: url(https://canifa.com/img/486/733/resize/6/b/6bj21s004-sj633-2-thumb-.jpg);"></div>
                                        <h4 class="content-san-pham-con-ten">Quần jeans nữ ống rộng</h4>
                                        <div class="content-san-pham-con-gia">
                                            <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                            <span class="content-san-pham-con-gia-hien-tai">999.000đ</span>
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
                                    <a class="content-san-pham-con" href="https://shopee.vn/-M%C3%A3-254FASHIONSALE-gi%E1%BA%A3m-12-%C4%91%C6%A1n-99K-%C3%81o-thun-nam-POLO-tr%C6%A1n-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-cotton-cao-c%E1%BA%A5p-ng%E1%BA%AFn-tay-c%E1%BB%B1c-sang-tr%E1%BB%8Dng-i.296694982.3448103572?sp_atk=888237c0-7298-44b7-aef0-00c25062c816">
                                        <div class="content-san-pham-con-anh" style="background-image: url(https://canifa.com/img/486/733/resize/6/b/6bj21s004-sj633-2-thumb-.jpg);"></div>
                                        <h4 class="content-san-pham-con-ten">Quần jeans nữ ống rộng</h4>
                                        <div class="content-san-pham-con-gia">
                                            <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                            <span class="content-san-pham-con-gia-hien-tai">999.000đ</span>
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
                                    <a class="content-san-pham-con" href="https://shopee.vn/-M%C3%A3-254FASHIONSALE-gi%E1%BA%A3m-12-%C4%91%C6%A1n-99K-%C3%81o-thun-nam-POLO-tr%C6%A1n-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-cotton-cao-c%E1%BA%A5p-ng%E1%BA%AFn-tay-c%E1%BB%B1c-sang-tr%E1%BB%8Dng-i.296694982.3448103572?sp_atk=888237c0-7298-44b7-aef0-00c25062c816">
                                        <div class="content-san-pham-con-anh" style="background-image: url(https://canifa.com/img/486/733/resize/6/b/6bj21s004-sj633-2-thumb-.jpg);"></div>
                                        <h4 class="content-san-pham-con-ten">Quần jeans nữ ống rộng</h4>
                                        <div class="content-san-pham-con-gia">
                                            <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                            <span class="content-san-pham-con-gia-hien-tai">999.000đ</span>
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
                                    <a class="content-san-pham-con" href="https://shopee.vn/-M%C3%A3-254FASHIONSALE-gi%E1%BA%A3m-12-%C4%91%C6%A1n-99K-%C3%81o-thun-nam-POLO-tr%C6%A1n-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-cotton-cao-c%E1%BA%A5p-ng%E1%BA%AFn-tay-c%E1%BB%B1c-sang-tr%E1%BB%8Dng-i.296694982.3448103572?sp_atk=888237c0-7298-44b7-aef0-00c25062c816">
                                        <div class="content-san-pham-con-anh" style="background-image: url(https://canifa.com/img/486/733/resize/6/b/6bj21s004-sj633-2-thumb-.jpg);"></div>
                                        <h4 class="content-san-pham-con-ten">Quần jeans nữ ống rộng</h4>
                                        <div class="content-san-pham-con-gia">
                                            <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                            <span class="content-san-pham-con-gia-hien-tai">999.000đ</span>
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
                                    <a class="content-san-pham-con" href="https://shopee.vn/-M%C3%A3-254FASHIONSALE-gi%E1%BA%A3m-12-%C4%91%C6%A1n-99K-%C3%81o-thun-nam-POLO-tr%C6%A1n-v%E1%BA%A3i-c%C3%A1-s%E1%BA%A5u-cotton-cao-c%E1%BA%A5p-ng%E1%BA%AFn-tay-c%E1%BB%B1c-sang-tr%E1%BB%8Dng-i.296694982.3448103572?sp_atk=888237c0-7298-44b7-aef0-00c25062c816">
                                        <div class="content-san-pham-con-anh" style="background-image: url(https://canifa.com/img/486/733/resize/6/b/6bj21s004-sj633-2-thumb-.jpg);"></div>
                                        <h4 class="content-san-pham-con-ten">Quần jeans nữ ống rộng</h4>
                                        <div class="content-san-pham-con-gia">
                                            <span class="content-san-pham-con-gia-cu">1.200.000đ</span>
                                            <span class="content-san-pham-con-gia-hien-tai">999.000đ</span>
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
                                    </a>-->

                </div>

                <!-- #canifalife -->
                <div class="content-tin-tuc">
                    <div class="content-tin-tuc-nhan">
                        <h3 class="content-tin-tuc-nhan-text">#canifalife</h3>
                    </div>
                    <div class="content-tin-tuc-danh-sach">
                        <div class="content-tin-tuc-con">
                            <a href="https://canifa.com/b/43/manh-truong-chon-ao-gio-canifa.html" class="content-tin-tuc-con-anh">
                                <img src="./images/gia-dinh-manh-truong-ao-gio.png" alt="">
                            </a>
                            <a href="https://canifa.com/b/43/manh-truong-chon-ao-gio-canifa.html" class="content-tin-tuc-con-text">Mạnh Trường chọn áo khoác gió Canifa cho gia đình</a>
                        </div>
                        <div class="content-tin-tuc-con">
                            <a href="https://canifa.com/b/41/sieu-ao-gio-3-giay-4-can.html" class="content-tin-tuc-con-anh">
                                <img src="./images/ao-gio-3-giay-4-can-1_1.jpeg" alt="">
                            </a>
                            <a href="" class="content-tin-tuc-con-text">Tối giản tủ đồ với "siêu áo gió" 3 giây 4 cản</a>
                        </div>
                        <div class="content-tin-tuc-con">
                            <a href="https://canifa.com/b/40/phoi-do-voi-ao-gio.html" class="content-tin-tuc-con-anh">
                                <img src="./images/ao-gio-3-giay-4-can-canifa-1_1.jpeg" alt="">
                            </a>
                            <a href="" class="content-tin-tuc-con-text">Giờ không diện áo gió thì bao giờ diện nữa ? 5 tuyệt chiêu phối áo gió cực hút mắt mà bạn nữ phải dắt túi ngay</a>
                        </div>
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
