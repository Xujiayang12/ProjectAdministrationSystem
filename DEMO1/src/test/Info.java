package test;

import java.sql.*;

public class Info {
    private String account, password;

    public Info(String account,String password){
        this.account = account;
        this.password = password;
    }

    public String getAccount() {
        return account;
    }

    public String getPassword() {
        return password;
    }

    public boolean check_account() {
        Connection c = null;
        Statement stmt = null;
        try {
            Class.forName("org.sqlite.JDBC");
            c = DriverManager.getConnection("jdbc:sqlite:/home/atony/桌面/OOPkeshe/ProjectAministrationSystem/DEMO1/web/project.db");
            System.out.println("Opened database successfully");
            stmt = c.createStatement();
            String sql = "SELECT * FROM user where account='"+this.account+"' and password='"+this.password+"';";
            System.out.println(sql);
            ResultSet rs = stmt.executeQuery(sql);
            int id = rs.getInt("id");
            System.out.println(id);

            rs.close();
            stmt.close();
            c.close();
            return true;
        } catch (Exception e) {
//            System.err.println(e.getClass().getName() + ": " + e.getMessage());
//            System.exit(0);
            return false;
        }
    }
//    public static void main(String[] args) {
//        Connection c = null;
//        Statement stmt = null;
//        try {
//            Class.forName("org.sqlite.JDBC");
//            c = DriverManager.getConnection("jdbc:sqlite:project.db");
//            c.setAutoCommit(false);
//            System.out.println("Opened database successfully");
//            stmt = c.createStatement();
//            ResultSet rs = stmt.executeQuery("SELECT * FROM user where account=admin and password=admin");
//
//            rs.close();
//            stmt.close();
//            c.close();
//        } catch (Exception e) {
//            System.err.println(e.getClass().getName() + ": " + e.getMessage());
//            System.exit(0);
//        }
//        test.Info a = new test.Info("admin","admin");
//        System.out.println(a.check_account());
//
//    }
}
