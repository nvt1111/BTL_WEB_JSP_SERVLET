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
public class DangKiDao {

    public boolean kiemTraTonTai(String tk) {
        Connection conn = getConnection();
        PreparedStatement statement = null;
        ResultSet rsSet = null;
        boolean kiemTra = false;
        String sql = "select * from nguoidung where TaiKhoan = ?";
        if (conn != null) {
            try {
                statement = conn.prepareStatement(sql);
                statement.setString(1, tk);
                rsSet = statement.executeQuery();
                if (rsSet.absolute(1)) {
                    kiemTra = true;
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
                    return kiemTra;
                } catch (SQLException e) {

                }
            }
        }
        return kiemTra;

    }

    public boolean dangKi(NguoiDung u) {
        Connection conn = getConnection();
        PreparedStatement statement = null;
        boolean thanhCong = false;
        try {
            String sql = "INSERT INTO NguoiDung (Ten,TaiKhoan,MatKhau,NgaySinh,Sdt,DiaChi,Email,ChucVu) values (?,?,?,?,?,?,?,?)";
            statement = conn.prepareStatement(sql);
            statement.setString(1, u.getTen());
            statement.setString(2, u.getTaiKhoan());
            statement.setString(3, u.getMatKhau());
            statement.setDate(4, u.getNgaySinh());
            statement.setString(5, u.getSdt());
            statement.setString(6, u.getDiaChi());
            statement.setString(7, u.getEmail());
            statement.setString(8, u.getChucVu());
            statement.executeUpdate();
            thanhCong = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return thanhCong;
    }

}
