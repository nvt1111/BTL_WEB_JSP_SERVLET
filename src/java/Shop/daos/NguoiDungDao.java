/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shop.daos;

import Shop.db.ConnectMysql;
import static Shop.db.ConnectMysql.getConnection;
import Shop.models.NguoiDung;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author daodu
 */
public class NguoiDungDao {

    public static void themND(NguoiDung user) {
        String sql = "INSERT INTO nguoidung( Ten, Email, DiaChi, Sdt) VALUES (?, ?, ?, ?)";
        Connection conn = ConnectMysql.getConnection();
        PreparedStatement statement = null;
        try {
            statement = conn.prepareStatement(sql);
            statement.setString(1, user.getTen());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getDiaChi());
            statement.setString(4, user.getSdt());

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

    public static void capNhapND(NguoiDung user) {
        String sql = "UPDATE nguoidung SET Ten = ?, Email = ?, DiaChi = ?,Sdt = ? WHERE Email = ?";
        Connection conn = ConnectMysql.getConnection();
        PreparedStatement statement = null;
        try {
            statement = conn.prepareStatement(sql);
            statement.setString(1, user.getTen());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getDiaChi());
            statement.setString(4, user.getSdt());
            statement.setString(5, user.getEmail());
            
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

    public static NguoiDung timNguoiDungTheoEmail(String email){
        String sql = "SELECT * FROM nguoidung "
                + "WHERE Email = ?";
        Connection conn = ConnectMysql.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try{
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            rs = ps.executeQuery();
            
            NguoiDung user = null;
            if (rs.next()) {
                user = new NguoiDung();
                user.setNguoiDungID(rs.getInt("NguoiDungID"));
                user.setTen(rs.getString("Ten"));
                user.setEmail(rs.getString("Email"));
                user.setDiaChi(rs.getString("Email"));
                user.setSdt(rs.getString("Sdt"));
            }
            return user;
            
        }catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException e) {

            }
        }
    }
    
    public static boolean emailExists(String email){
        Connection conn = ConnectMysql.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT Email FROM nguoidung "
                + "WHERE Email = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
                if (ps != null) {
                    ps.close();
                }
            } catch (SQLException e) {

            }
        }
    }
}
