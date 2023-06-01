/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shop.daos;

import Shop.db.ConnectMysql;
import Shop.models.HoaDon;
import Shop.models.HoaDonChiTiet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

/**
 *
 * @author daodu
 */
public class HoaDonDao {

    public static void themHoaDon(HoaDon hd) {
        String sql = "INSERT INTO hoadon( NguoiDungID, HoaDonDate, TongTien) VALUES (?, ?, ?)";
        Connection conn = ConnectMysql.getConnection();
        PreparedStatement statement = null;
        try {
            statement = conn.prepareStatement(sql);
            statement.setInt(1, hd.getNguoiDung().getNguoiDungID());
            statement.setDate(2, hd.getHoaDonDate());
            statement.setFloat(3, hd.getHoaDonTotal());
            //statement.setBoolean(4, hd.isDaThanhToan());
            statement.executeUpdate();
            
            //Get the InvoiceID from the last INSERT statement.
            String identityQuery = "SELECT @@IDENTITY AS IDENTITY";
            Statement identityStatement = conn.createStatement();
            ResultSet identityResultSet = identityStatement.executeQuery(identityQuery);
            identityResultSet.next();
            int invoiceID = identityResultSet.getInt("IDENTITY");
            identityResultSet.close();
            identityStatement.close();
            
            List<HoaDonChiTiet> lineItems = hd.getListHoaDonChiTiet();
            for (HoaDonChiTiet item : lineItems) {
                HoaDonChiTietDao.themHoaDonChiTiet(invoiceID, item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException e) {

            }
        }
    }

    public void capNhapHoaDon(HoaDon hd) {
        String sql = "UPDATE sanpham SET NguoiDungID = ?, HoaDonDate = ?, TongTien = ?,DaThanhToan = ? WHERE HoaDonID = ?";
        Connection conn = ConnectMysql.getConnection();
        PreparedStatement statement = null;
        try {
            statement = conn.prepareStatement(sql);
            statement.setInt(1, hd.getNguoiDung().getNguoiDungID());
            statement.setDate(2, hd.getHoaDonDate());
            statement.setFloat(3, hd.getTongTien());
            statement.setBoolean(4, hd.isDaThanhToan());
            statement.setInt(5, hd.getHoaDonID());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException e) {

            }
        }
    }
}
