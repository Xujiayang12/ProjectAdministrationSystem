package info;

import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.util.List;

public class Project {
    private int id;
    private String name, classroom, detail, member, link, eval, teacher_eval;

    public int getId() {
        return id;
    }

    public String getName() {
        return TextEdit.de_coder(name);
    }

    public String getClassroom() {
        return TextEdit.de_coder(classroom);
    }

    public String getDetail() {
        return TextEdit.de_coder(detail);
    }

    public String getMember() {
        return TextEdit.de_coder(member);
    }

    public String getLink() {
        return link;
    }

    public String getEval() {
        return TextEdit.de_coder(eval);
    }

    public String getTeacher_eval() {
        return TextEdit.de_coder(teacher_eval);
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setClassroom(String classroom) {
        this.classroom = classroom;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public void setMember(String member) {
        this.member = member;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public void setEval(String eval) {
        this.eval = eval;
    }

    public void setTeacher_eval(String teacher_eval) {
        this.teacher_eval = teacher_eval;
    }

    public static Project findById(int id) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlsession();
            List<Project> projectList = sqlSession.selectList("Project.findById", id);
            return projectList.get(0);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }

    public static Project findByClass(String classroom) {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            sqlSession = dbAccess.getSqlsession();
            List<Project> projectList = sqlSession.selectList("Project.findByClass", classroom);
            return projectList.get(0);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }

    public static void setProject(String name,String classroom,String detail,String member,String link)
    {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            Project new_project = new Project();
            new_project.setClassroom(classroom);
            new_project.setDetail(detail);
            new_project.setLink(link);
            new_project.setMember(member);
            new_project.setName(name);
            sqlSession = dbAccess.getSqlsession();
            sqlSession.insert("Project.setProject",new_project);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }

    public static void updateProject(int id,String name,String classroom,String detail,String member,String link)
    {
        DBAccess dbAccess = new DBAccess();
        SqlSession sqlSession = null;
        try {
            Project old_project = new Project();
            old_project.setId(id);
            old_project.setClassroom(classroom);
            old_project.setDetail(detail);
            old_project.setLink(link);
            old_project.setMember(member);
            old_project.setName(name);
            sqlSession = dbAccess.getSqlsession();
            sqlSession.update("Project.updateById",old_project);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
    }

    public static void main(String args[]) {
        System.out.println(findByClass("计机1班").getDetail());
    }
}
