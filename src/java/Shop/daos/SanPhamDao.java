/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shop.daos;

import Shop.db.ConnectMysql;
import static Shop.db.ConnectMysql.getConnection;
import Shop.models.SanPham;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author daodu
 */
public class SanPhamDao {

    public void themSP(SanPham sp) {
        String sql = "INSERT INTO sanpham( Ten, Gia, SanPhamCode, SanPhamDescription,TheLoai) VALUES (?, ?, ?,?,?)";
        Connection conn = ConnectMysql.getConnection();
        PreparedStatement statement = null;
        try {
            statement = conn.prepareStatement(sql);
            statement.setString(1, sp.getTen());
            statement.setFloat(2, sp.getGia());
            statement.setString(3, sp.getSanPhamCode());
            statement.setString(4, sp.getSanPhamDescription());
            statement.setString(5, sp.getTheLoai());

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

    public void capNhapSP(SanPham sp) {
        String sql = "UPDATE sanpham SET TenSanPham = ?, Gia = ?, SanPhamCode = ?,SanPhamDescription = ?, TheLoai= ?  WHERE SanPhamID = ?";
        Connection conn = ConnectMysql.getConnection();
        PreparedStatement statement = null;
        try {
            statement = conn.prepareStatement(sql);
            statement.setString(1, sp.getTen());
            statement.setFloat(2, sp.getGia());
            statement.setString(3, sp.getSanPhamCode());
            statement.setString(4, sp.getSanPhamDescription());

            statement.setString(5, sp.getTheLoai());

            statement.setInt(6, sp.getSanPhamID());
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

    public void xoaSP(SanPham sp) {
        String sql = "DELETE FROM sanpham WHERE SanPhamID = ?";
        Connection conn = ConnectMysql.getConnection();
        PreparedStatement statement = null;
        try {
            statement = conn.prepareStatement(sql);
            statement.setInt(1, sp.getSanPhamID());
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

    public List<SanPham> layTatCaSP() {
        Connection conn = getConnection();
        List<SanPham> rs = new ArrayList<>();
        String sql = "select * from sanpham";
        PreparedStatement statement = null;
        ResultSet rsSet = null;
        if (conn != null) {
            try {
                statement = conn.prepareStatement(sql);
                rsSet = statement.executeQuery();
                while (rsSet.next()) {
                    SanPham sp = new SanPham();
                    sp.setTen(rsSet.getString("Ten"));
                    sp.setGia(rsSet.getFloat("Gia"));
                     sp.setSanPhamID(rsSet.getInt("SanPhamID"));
                    sp.setSanPhamCode(rsSet.getString("SanPhamCode"));
                    sp.setSanPhamDescription(rsSet.getString("SanPhamDescription"));
                    sp.setTheLoai(rsSet.getString("TheLoai"));
                    rs.add(sp);
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
                    return rs;
                } catch (SQLException e) {
                    return null;
                }
            }
        }

        return null;
    }

    public SanPham laySPTheoId(int id) {
        Connection conn = getConnection();
       SanPham sp = new SanPham();
        String sql = "select * from sanpham where SanPhamID = ?";
        PreparedStatement statement = null;    
        ResultSet rsSet = null;
        if (conn != null) {
            try {
                statement = conn.prepareStatement(sql);
                statement.setInt(1, id);
                rsSet = statement.executeQuery();
                while (rsSet.next()) {
                    
                    sp.setTen(rsSet.getString("Ten"));
                    sp.setGia(rsSet.getFloat("Gia"));
                    sp.setSanPhamCode(rsSet.getString("SanPhamCode"));
                    sp.setSanPhamID(rsSet.getInt("SanPhamID"));
                    sp.setSanPhamDescription(rsSet.getString("SanPhamDescription"));
                    sp.setTheLoai(rsSet.getString("TheLoai"));
           
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
                    return sp;
                } catch (SQLException e) {
                    return null;
                }
            }
        }

        return null;
    }
    
    public SanPham laySPTheoCode(String code) {
        Connection conn = getConnection();
       SanPham sp = new SanPham();
        String sql = "select * from sanpham where SanPhamCode = ?";
        PreparedStatement statement = null;    
        ResultSet rsSet = null;
        if (conn != null) {
            try {
                statement = conn.prepareStatement(sql);
                statement.setString(1, code);
                rsSet = statement.executeQuery();
                while (rsSet.next()) {
                    
                    sp.setTen(rsSet.getString("Ten"));
                    sp.setGia(rsSet.getFloat("Gia"));
                    sp.setSanPhamCode(rsSet.getString("SanPhamCode"));
                    sp.setSanPhamID(rsSet.getInt("SanPhamID"));
                    sp.setSanPhamDescription(rsSet.getString("SanPhamDescription"));
                    sp.setTheLoai(rsSet.getString("TheLoai"));
           
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
                    return sp;
                } catch (SQLException e) {
                    return null;
                }
            }
        }

        return null;
    }

    public List<SanPham> laySPTheoTen(String ten) {
        Connection conn = getConnection();
        List<SanPham> rs = new ArrayList<>();
        String sql = "select * from sanpham where Ten LIKE ?";
        PreparedStatement statement = null;
        ResultSet rsSet = null;
        if (conn != null) {
            try {
                statement = conn.prepareStatement(sql);
                statement.setString(1, ten);
                rsSet = statement.executeQuery();
                while (rsSet.next()) {
                    SanPham sp = new SanPham();
                    sp.setTen(rsSet.getString("Ten"));
                    sp.setGia(rsSet.getFloat("Gia"));
                    sp.setSanPhamCode(rsSet.getString("SanPhamCode"));
                     sp.setSanPhamID(rsSet.getInt("SanPhamID"));
                    sp.setSanPhamDescription(rsSet.getString("SanPhamDescription"));
                    sp.setTheLoai(rsSet.getString("TheLoai"));
                    rs.add(sp);
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
                    return rs;
                } catch (SQLException e) {
                    return null;
                }
            }
        }

        return null;
    }
    
     public List<SanPham> laySPTheoTL(String tl) {
        Connection conn = getConnection();
        List<SanPham> rs = new ArrayList<>();
        String sql = "select * from sanpham where TheLoai LIKE ?";
        PreparedStatement statement = null;
        ResultSet rsSet = null;
        if (conn != null) {
            try {
                statement = conn.prepareStatement(sql);
                statement.setString(1, tl);
                rsSet = statement.executeQuery();
                while (rsSet.next()) {
                    SanPham sp = new SanPham();
                    sp.setTen(rsSet.getString("Ten"));
                    sp.setGia(rsSet.getFloat("Gia"));
                    sp.setSanPhamCode(rsSet.getString("SanPhamCode"));
                     sp.setSanPhamID(rsSet.getInt("SanPhamID"));
                    sp.setSanPhamDescription(rsSet.getString("SanPhamDescription"));
                    sp.setTheLoai(rsSet.getString("TheLoai"));
                    rs.add(sp);
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
                    return rs;
                } catch (SQLException e) {
                    return null;
                }
            }
        }

        return null;
    }
}
