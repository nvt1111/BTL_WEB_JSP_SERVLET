/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
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
import java.util.List;

/**
 *
 * @author daodu
 */
@WebServlet(urlPatterns = {"/san_pham"})
public class SanPhamController extends HttpServlet {

    SanPhamDao spDao = new SanPhamDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        List<SanPham> spNamList = new ArrayList<>();
        List<SanPham> spNuList = new ArrayList<>();
        spNamList = spDao.laySPTheoTL("nam");
        spNuList = spDao.laySPTheoTL("nu");
        req.setAttribute("spNamList", spNamList);
        req.setAttribute("spNuList", spNuList);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/san_pham.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
