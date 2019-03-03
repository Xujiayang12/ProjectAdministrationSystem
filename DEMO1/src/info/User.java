package info;

import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.util.List;

public class User {
    private String account, name, password, classroom, qq, phone;
    private int id, admin, project;

    public String getAccount() {
        return account;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getClassroom() {
        return classroom;
    }

    public String getQq() {
        return qq;
    }

    public String getPhone() {
        return phone;
    }

    public int getId() {
        return id;
    }

    public int getAdmin() {
        return admin;
    }

    public int getProject() {
        return project;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setClassroom(String classroom) {
        this.classroom = classroom;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setAdmin(int admin) {
        this.admin = admin;
    }

    public void setProject(int project) {
        this.project = project;
    }

    public static User getAllInfo(String account, String password){//可直接调用的方法，获取信息 返回User
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        User result = null;
        try {
            sqlSession = dbAccess.getSqlsession();
            User u = new User();
            u.setAccount(account);
            u.setPassword(password);
            List<User> Userlist = sqlSession.selectList("User.loginCheck", u);
            return Userlist.get(0);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
        return result;
    }

    public static boolean loginCheck(String account, String password) {//可直接调用的方法，判断是否密码错误
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlsession();
            User u = new User();
            u.setAccount(account);
            u.setPassword(password);
            List<User> Userlist = sqlSession.selectList("User.loginCheck", u);
            if (Userlist.size() == 1)
                return true;
            else return false;
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
        return true;
    }

    public static void main(String args[]) {
//        DBAccess dbAccess = new DBAccess();
//        SqlSession sqlSession = null;
//        try {
//            sqlSession = dbAccess.getSqlsession();
//            User u = new User();
//            u.setAccount("admin");
//            u.setPassword("admin");
//            List<User> Userlist = sqlSession.selectList("User.loginCheck", u);
//            System.out.println(Userlist.size());
//            for (User p : Userlist) {
//                System.out.println(p.account);
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        } finally {
//            if (sqlSession != null) {
//                sqlSession.close();
//            }
//        }
    }
}
