package Shop.controllers;

import Shop.daos.SanPhamDao;
import Shop.models.SanPham;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@WebServlet(urlPatterns = {""})
public class TrangChuController extends HttpServlet {
    SanPhamDao spDao = new SanPhamDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        List<SanPham> spList = new ArrayList<>();
        
        spList = spDao.layTatCaSP();
        Collections.reverse(spList);
        req.setAttribute("spList", spList);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/trang_chu.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
