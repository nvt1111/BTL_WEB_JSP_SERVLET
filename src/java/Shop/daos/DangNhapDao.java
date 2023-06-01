/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shop.daos;

import static Shop.db.ConnectMysql.getConnection;
import Shop.models.NguoiDung;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author daodu
 */
public class DangNhapDao {

    public NguoiDung kiemTraDangNhap(String tk, String mk) {
        Connection conn = getConnection();
        NguoiDung u = new NguoiDung();
        String sql = "select * from nguoidung where TaiKhoan = ? and MatKhau = ?";
        PreparedStatement statement = null;
        ResultSet rsSet = null;
        if (conn != null) {
            try {
                statement = conn.prepareStatement(sql);
                statement.setString(1, tk);
                statement.setString(2, mk);
                rsSet = statement.executeQuery();
                while (rsSet.next()) {
                    u.setTen(rsSet.getString("Ten"));
                    u.setTaiKhoan(rsSet.getString("TaiKhoan"));
                    u.setMatKhau(rsSet.getString("MatKhau"));
                    u.setNgaySinh(rsSet.getDate("NgaySinh"));
                    u.setSdt(rsSet.getString("Sdt"));
                    u.setDiaChi(rsSet.getString("DiaChi"));
                    u.setEmail(rsSet.getString("Email"));
                    u.setChucVu(rsSet.getString("ChucVu"));
                }
            } catch (SQLException ex) {
                java.util.logging.Logger.getLogger(SanPhamDao.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);

            } finally {
                try {
                    if (conn != null) {
                        conn.close();
                    }
                    if (statement != null) {
                        statement.close();
                    }
                    if (rsSet != null) {
                        rsSet.close();
                    }
                    return u;
                } catch (SQLException e) {
                    return null;
                }
            }
        }

        return null;
    }
}
