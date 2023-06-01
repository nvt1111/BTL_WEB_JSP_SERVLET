/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Shop.db;

import java.sql.*;


/**
 *
 * @author daodu
 */
public class ConnectMysql {



   public static Connection getConnection() {
        String dbURL = "jdbc:mysql://localhost:3306/clothing_store_btl";
        String userName = "root";
        String password = "fazeniko123"; // thay password cua o neu khac nhe
        Connection conn = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ConnectMysql.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }

        try {
            conn = DriverManager.getConnection(dbURL, userName, password);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(ConnectMysql.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }

        return conn;
    }
}
