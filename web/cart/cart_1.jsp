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
        <link href="https: //fonts.googleapis.com/css2? family = Roboto: ital, wght @ 0,300; 0,500; 0,700; 1,400 & display = swap " rel=" stylesheet ">
    </head>

    <body>
        <!--    <div class="ung_dung">
        
        
                <div class="than_gio_hang">
                    <div class="than_than_gio_hang">
                        <div class="gio_hang1 gio_hang1x">
        
        
                            <div class="ds_sp">
                                <div class="ds_sp_trai">
        
                                    <span class="ds_sp_trai_chu">
                                        Danh Sách Sản Phẩm Đã Mua
                                    </span>
                                </div>
                                <div class="ds_sp_phai">
                                    <span class="ds_sp_phai_chu1">Đơn Giá</span>
                                    <span class="ds_sp_phai_chu1">Số Lượng</span>
                                    <span class="ds_sp_phai_chu1">Số Tiền</span>
                                    <span class="ds_sp_phai_chu1">Trạng Thái</span>
                                </div>
                            </div>
                            <ul class="ds_cac_sp">
                                <li class="chi_tiet_sp">
                                    <div class="chi_tiet_sp_tren">
        
                                    </div>
                                    <div class="chi_tiet_sp_giua">
                                        <div class="vien_giua">
        
                                            <div class="chi_tiet_sp_giua_than">
                                                <div class="chi_tiet_sp_giua_than_trai">
                                                    <div class="chi_tiet_sp_giua_than-icon">
        
                                                    </div>
                                                    <div class="chi_tiet_sp_giua_than-img">
                                                        <img src="https://nhatminhdecor.com/wp-content/uploads/2019/01/chup-anh-voi-mau-that-800x800.jpg" alt="" class="chi_tiet_sp_giua_than-img1">
                                                    </div>
                                                    <a href="" class="chi_tiet_sp_ten">áo thun nam nữ BOY CHÙM
                                                        ĐẦU, áo
                                                        thun tay lỡ nam nữ unisex</a>
                                                </div>
                                                <div class="chi_tiet_sp_giua_than_phai">
                                                    <span class="chi_tiet_sp_giua_than_gia">9.000.000đ</span>
                                                    <div class="chi_tiet_sp_giua_than_so">
        
                                                        <span class="chi_tiet_sp_giua_than_sos1">1</span>
        
                                                    </div>
                                                    <span class="chi_tiet_sp_giua_than_don_gia">9.000.000đ</span>
                                                    <div class="chi_tiet_sp_giua_than_xoa_sp"> <i class="fa-solid fa-square-check xac_nhan_thanh_toan_trai_box-tick"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
        
                                    <div class="chi_tiet_sp_cuoi">
                                    </div>
                                </li>
                                <li class="chi_tiet_sp">
                                    <div class="chi_tiet_sp_tren">
        
                                    </div>
                                    <div class="chi_tiet_sp_giua">
                                        <div class="vien_giua">
        
                                            <div class="chi_tiet_sp_giua_than">
                                                <div class="chi_tiet_sp_giua_than_trai">
                                                    <div class="chi_tiet_sp_giua_than-icon">
        
                                                    </div>
                                                    <div class="chi_tiet_sp_giua_than-img">
                                                        <img src="https://nhatminhdecor.com/wp-content/uploads/2019/01/chup-anh-voi-mau-that-800x800.jpg" alt="" class="chi_tiet_sp_giua_than-img1">
                                                    </div>
                                                    <a href="" class="chi_tiet_sp_ten">áo thun nam nữ BOY CHÙM
                                                        ĐẦU, áo
                                                        thun tay lỡ nam nữ unisex</a>
                                                </div>
                                                <div class="chi_tiet_sp_giua_than_phai">
                                                    <span class="chi_tiet_sp_giua_than_gia">9.000.000đ</span>
                                                    <div class="chi_tiet_sp_giua_than_so">
        
                                                        <span class="chi_tiet_sp_giua_than_sos1">1</span>
        
                                                    </div>
                                                    <span class="chi_tiet_sp_giua_than_don_gia">9.000.000đ</span>
                                                    <div class="chi_tiet_sp_giua_than_xoa_sp"> <i class="fa-solid fa-square-check xac_nhan_thanh_toan_trai_box-tick"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
        
                                    <div class="chi_tiet_sp_cuoi">
                                    </div>
                                </li>
                                <li class="chi_tiet_sp">
                                    <div class="chi_tiet_sp_tren">
        
                                    </div>
                                    <div class="chi_tiet_sp_giua">
                                        <div class="vien_giua">
        
                                            <div class="chi_tiet_sp_giua_than">
                                                <div class="chi_tiet_sp_giua_than_trai">
                                                    <div class="chi_tiet_sp_giua_than-icon">
        
                                                    </div>
                                                    <div class="chi_tiet_sp_giua_than-img">
                                                        <img src="https://nhatminhdecor.com/wp-content/uploads/2019/01/chup-anh-voi-mau-that-800x800.jpg" alt="" class="chi_tiet_sp_giua_than-img1">
                                                    </div>
                                                    <a href="" class="chi_tiet_sp_ten">áo thun nam nữ BOY CHÙM
                                                        ĐẦU, áo
                                                        thun tay lỡ nam nữ unisex</a>
                                                </div>
                                                <div class="chi_tiet_sp_giua_than_phai">
                                                    <span class="chi_tiet_sp_giua_than_gia">9.000.000đ</span>
                                                    <div class="chi_tiet_sp_giua_than_so">
        
                                                        <span class="chi_tiet_sp_giua_than_sos1">1</span>
        
                                                    </div>
                                                    <span class="chi_tiet_sp_giua_than_don_gia">9.000.000đ</span>
                                                    <div class="chi_tiet_sp_giua_than_xoa_sp"> <i class="fa-solid fa-square-check xac_nhan_thanh_toan_trai_box-tick"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
        
                                    <div class="chi_tiet_sp_cuoi">
                                    </div>
                                </li>
                                <li class="chi_tiet_sp">
                                    <div class="chi_tiet_sp_tren">
        
                                    </div>
                                    <div class="chi_tiet_sp_giua">
                                        <div class="vien_giua">
        
                                            <div class="chi_tiet_sp_giua_than">
                                                <div class="chi_tiet_sp_giua_than_trai">
                                                    <div class="chi_tiet_sp_giua_than-icon">
        
                                                    </div>
                                                    <div class="chi_tiet_sp_giua_than-img">
                                                        <img src="https://nhatminhdecor.com/wp-content/uploads/2019/01/chup-anh-voi-mau-that-800x800.jpg" alt="" class="chi_tiet_sp_giua_than-img1">
                                                    </div>
                                                    <a href="" class="chi_tiet_sp_ten">áo thun nam nữ BOY CHÙM
                                                        ĐẦU, áo
                                                        thun tay lỡ nam nữ unisex</a>
                                                </div>
                                                <div class="chi_tiet_sp_giua_than_phai">
                                                    <span class="chi_tiet_sp_giua_than_gia">9.000.000đ</span>
                                                    <div class="chi_tiet_sp_giua_than_so">
        
                                                        <span class="chi_tiet_sp_giua_than_sos1">1</span>
        
                                                    </div>
                                                    <span class="chi_tiet_sp_giua_than_don_gia">9.000.000đ</span>
                                                    <div class="chi_tiet_sp_giua_than_xoa_sp"> <i class="fa-solid fa-square-check xac_nhan_thanh_toan_trai_box-tick"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
        
                                    <div class="chi_tiet_sp_cuoi">
                                    </div>
                                </li>
        
                            </ul>
        
                        </div>
                    </div>
        
                </div>
            </div>-->
    <c:choose>
        <c:when test="${emptyCart != null}">
            <p>Your cart is empty.</p>
        </c:when>
        <c:otherwise>
            <table>
                <tr>
                    <th>Qty</th>
                    <th>Tên</th>
                    <th>Code</th>
                    <th>Description</th>
                    <th>Giá</th>
                    <th>The loai</th>
                    <th>Tổng tiền</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="item" items="${cart.listHoaDonChiTiet}">
                    <tr class="cart_row">
                        <td>
                            <form action="<c:url value='/order/updateItem'/>" method="post">
                                <input type="hidden" name="productCode" 
                                       value="<c:out value='${item.sanPham.getSanPhamCode()}'/>">
                                <input type=text name="quantity" 
                                       value="<c:out value='${item.getSoLuong()}'/>" id="quantity">
                                <input type="submit" value="Update">
                            </form>                  
                        </td>
                        <td>${item.sanPham.getTen()}</td>
                        <td>${item.sanPham.getSanPhamCode()}</td>
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
                    <td colspan="2">
                        <p><b>To change the quantity for an item</b>, enter the new quantity 
                            and click on the Update button.</p>
                        <p><b>To remove an item</b>, click on the Remove button.</p>
                    </td>
                    <td colspan="3">&nbsp;</td>
                </tr>
            </table>
            <form action="<c:url value='/order/checkUser'/>" method="post">
                <input type="submit" value="Checkout">
            </form>
        </c:otherwise>
    </c:choose>
    <form action="<c:url value='/'/>" method="get" id="float_left">
        <input type="submit" value="Continue Shopping">
    </form>
</body>

</html>
