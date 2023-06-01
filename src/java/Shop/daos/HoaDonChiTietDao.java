/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shop.daos;

import Shop.db.ConnectMysql;
import Shop.models.HoaDonChiTiet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author daodu
 */
public class HoaDonChiTietDao {
    public static void themHoaDonChiTiet(int hoaDonID, HoaDonChiTiet hdct){
        String sql = "INSERT INTO chitiethoadon( HoaDonID, SanPhamID, SoLuong) VALUES (?, ?, ?)";
        Connection conn = ConnectMysql.getConnection();
        PreparedStatement statement = null;
        try {
            statement = conn.prepareStatement(sql);
            statement.setInt(1, hoaDonID);
            statement.setInt(2, hdct.getSanPham().getSanPhamID());
            statement.setFloat(3, hdct.getSoLuong());
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
    public void capNhapHoaDonChiTiet(HoaDonChiTiet hdct){
        String sql = "UPDATE chitiethoadon SET HoaDonID = ?, SanPhamID = ?, SoLuong = ? WHERE ChiTietHoaDonID = ?";
        Connection conn = ConnectMysql.getConnection();
        PreparedStatement statement = null;
        try {
           statement = conn.prepareStatement(sql);
            statement.setInt(1, hdct.getHoaDon().getHoaDonID());
            statement.setInt(2, hdct.getSanPham().getSanPhamID());
            statement.setFloat(3, hdct.getSoLuong());
           statement.setInt(4, hdct.getChiTietHoaDonID());
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
