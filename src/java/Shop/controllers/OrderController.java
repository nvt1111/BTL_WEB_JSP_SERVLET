package Shop.controllers;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

import Shop.daos.*;
import Shop.models.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "OrderController", urlPatterns = {"/order/*"})
public class OrderController extends HttpServlet {
    SanPhamDao spDao = new SanPhamDao();
    private static final String defaultURL = "/cart/cart.jsp";
    
    @Override
    public void doPost(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String url = "";
        if (requestURI.endsWith("/addItem")) {
            url = addItem(request, response);
        } else if (requestURI.endsWith("/updateItem")) {
            url = updateItem(request, response);
        } else if (requestURI.endsWith("/removeItem")) {
            url = removeItem(request, response);
        } else if (requestURI.endsWith("/checkUser")) {
            url = checkUser(request, response);
        } else if (requestURI.endsWith("/processUser")) {
            url = processUser(request, response);
        } else if (requestURI.endsWith("/displayInvoice")) {
            url = displayInvoice(request, response);
        } else if (requestURI.endsWith("/displayUser")) {
            url = "/cart/user.jsp";
        } else if (requestURI.endsWith("/completeOrder")) {
            url = completeOrder(request, response);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request,response);
    }
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String url = defaultURL;
        if (requestURI.endsWith("/showCart")) {
            showCart(request, response);
        } else if (requestURI.endsWith("/checkUser")) {
            url = checkUser(request, response);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request,response);
    }
    
    private String showCart(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        GioHang cart = (GioHang) session.getAttribute("cart");
        if (cart == null || cart.getCount() == 0) {
            request.setAttribute("emptyCart", "Gio hàng của bạn trống");
        } else {
            request.getSession().setAttribute("cart", cart);
        }
        return defaultURL;
    }
    
    private String addItem(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        GioHang cart = (GioHang) session.getAttribute("cart");
        if (cart == null)
            cart = new GioHang();
        String code = request.getParameter("code");
        
        int soLuong = Integer.parseInt(request.getParameter("soLuong"));
        
        SanPham product = spDao.laySPTheoCode(code);
        if (product != null) {
            HoaDonChiTiet lineItem = new HoaDonChiTiet();
            lineItem.setSanPham(product);
            
            lineItem.setSoLuong(soLuong);
            
            cart.themSanPham(lineItem);
        }
        session.setAttribute("cart", cart);
        return defaultURL;
    }
    
    private String updateItem(HttpServletRequest request,
            HttpServletResponse response) {
        String quantityString = request.getParameter("quantity");
        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();
        GioHang cart = (GioHang) session.getAttribute("cart");
        int quantity;
        try {
            quantity = Integer.parseInt(quantityString);
            if (quantity < 0)
                quantity = 1;
        } catch (NumberFormatException ex) {
            quantity = 1;
        }
        SanPham product = spDao.laySPTheoCode(productCode);
        if (product != null && cart != null) {
            HoaDonChiTiet lineItem = new HoaDonChiTiet();
            lineItem.setSanPham(product);
            lineItem.setSoLuong(quantity);
            if (quantity > 0)
                cart.themSanPham(lineItem);
            else
                cart.xoaSanPham(lineItem);
        }
        return defaultURL;
    }
    
    private String removeItem(HttpServletRequest request,
            HttpServletResponse response) {
        HttpSession session = request.getSession();
        GioHang cart = (GioHang) session.getAttribute("cart");
        String productCode = request.getParameter("productCode");
        SanPham product = spDao.laySPTheoCode(productCode);
        if (product != null && cart != null) {
            HoaDonChiTiet lineItem = new HoaDonChiTiet();
            lineItem.setSanPham(product);
            cart.xoaSanPham(lineItem);
        }
         if (cart == null || cart.getCount() == 0) {
            request.setAttribute("emptyCart", "Gio hàng của bạn trống");
        }
        return defaultURL;
    }
    
    private String checkUser(HttpServletRequest request,
            HttpServletResponse response) {

        HttpSession session = request.getSession();
        NguoiDung user = (NguoiDung) session.getAttribute("user");

        // neu NguoiDung ton tai, skip user.jsp
        String url = "/cart/user.jsp";
        if (user != null && !user.getDiaChi().equals("")) {
            url = "/order/displayInvoice";
        }
        session.setAttribute("user", user);
        return url;
    }

    private String processUser(HttpServletRequest request,
            HttpServletResponse response) {
        
        String name = request.getParameter("ten");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String soDT = request.getParameter("soDT");
        
        HttpSession session = request.getSession();
        NguoiDung user = (NguoiDung) session.getAttribute("user");
        if (user == null) {
            user = new NguoiDung();
        }

        if (NguoiDungDao.emailExists(email)) {
            user = NguoiDungDao.timNguoiDungTheoEmail(email);
            user.setTen(name);
            user.setEmail(email);
            user.setDiaChi(address);
            user.setSdt(soDT);
            NguoiDungDao.capNhapND(user);
        } else {
            user.setTen(name);
            user.setEmail(email);
            user.setDiaChi(address);
            user.setSdt(soDT);
            NguoiDungDao.themND(user);
        }

        session.setAttribute("user", user);

        return "/order/displayInvoice";
    }

    private String displayInvoice(HttpServletRequest request,
            HttpServletResponse response) {

        HttpSession session = request.getSession();        
        NguoiDung user = (NguoiDung) session.getAttribute("user");       
        GioHang cart = (GioHang) session.getAttribute("cart");

        java.util.Date utilDate = new java.util.Date();
        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

        HoaDon invoice = new HoaDon();
        invoice.setNguoiDung(user);
        invoice.setHoaDonDate(sqlDate);
        invoice.setListHoaDonChiTiet(cart.getListHoaDonChiTiet());
        
        session.setAttribute("invoice", invoice);
        
        return "/cart/thanhtoan.jsp";
    }
    
    private String completeOrder(HttpServletRequest request,
            HttpServletResponse response) {

        HttpSession session = request.getSession();
        HoaDon invoice = (HoaDon) session.getAttribute("invoice");
        HoaDonDao.themHoaDon(invoice);
        session.setAttribute("cart", null);
        
        return "/cart/thanhcong.jsp";
    }    
}