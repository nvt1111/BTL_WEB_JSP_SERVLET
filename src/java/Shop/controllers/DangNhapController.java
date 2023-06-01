/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Shop.controllers;

import Shop.daos.DangNhapDao;
import Shop.daos.SanPhamDao;
import Shop.models.NguoiDung;
import Shop.models.SanPham;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author daodu
 */
@WebServlet(urlPatterns = {"/dangnhap"})
public class DangNhapController extends HttpServlet {

    DangNhapDao dn = new DangNhapDao();
    SanPhamDao spDao = new SanPhamDao();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String taiKhoan = request.getParameter("mail1");
        String matKhau = request.getParameter("mk");
        NguoiDung nd = dn.kiemTraDangNhap(taiKhoan, matKhau);
        request.setAttribute("matKhau", matKhau);
        request.setAttribute("taiKhoan", taiKhoan);
        List<SanPham> spList = new ArrayList<>();
        String tn = nd.getTen();
        spList = spDao.layTatCaSP();
        request.setAttribute("spList", spList);
        request.setAttribute("nd", nd);
                request.setAttribute("tn", tn);


        request.getRequestDispatcher("trang_chu.jsp").forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        RequestDispatcher dispatcher = request.getRequestDispatcher("/dangNhap.jsp");
        dispatcher.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
