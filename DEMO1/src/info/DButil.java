package info;

import java.sql.*;


public class DButil {

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection("jdbc:sqlite:project.db");
        } catch ( Exception e ) {
            System.err.println( e.getClass().getName() + ": " + e.getMessage() );
            System.exit(0);
        }
        return conn;
    }
//
//    /**
//     * 通过ResultSet关闭数据库连接
//     * @param rs
//     */
//    public static void close(ResultSet rs) {
//        try {
//            Statement stmt = rs.getStatement();
//            Connection conn = stmt.getConnection();
//
//            rs.close();
//            stmt.close();
//            conn.close();
//        }catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//
//
//    /**
//     * 通过Statement关闭数据库连接
//     * @param stmt
//     */
//    public static void close(Statement stmt) {
//        try {
//            Connection conn = stmt.getConnection();
//
//            stmt.close();
//            conn.close();
//        }catch (Exception e) {
//            e.printStackTrace();
//        }
//    }

}
