package info;

import java.sql.*;

public class SetValue {
    public static void signup(String fullname, String account, String password, String classroom, String qq, String phone) {
        Connection c = null;
        Statement stmt = null;
        try {
            Class.forName("org.sqlite.JDBC");
            c = DriverManager.getConnection("jdbc:sqlite::resource:project.db");
            stmt = c.createStatement();
            String sql = "insert into user (name,account,password,classroom,qq,phone,admin,project) values ('" + fullname + "','" + account + "','" + password + "','" + classroom +
                    "','" + qq + "','" + phone + "',0,0);";
            System.out.println(sql);
            stmt.executeUpdate(sql);
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void main(String args[])
    {
        signup("atony","12","guest","%E8%BD%AF%E5%B7%A51%E7%8F%AD","12","12");
    }
}
