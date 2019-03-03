<%--
  Created by IntelliJ IDEA.
  User: atony
  Date: 19-3-2
  Time: 下午6:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*,java.net.*,info.*" contentType="text/html; charset=utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Sign Up</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String username = URLEncoder.encode(request.getParameter("username"),"utf-8");
    String password = URLEncoder.encode(request.getParameter("password"),"utf-8");
    String fullname = URLEncoder.encode(request.getParameter("fullname"),"utf-8");
    String classroom = URLEncoder.encode(request.getParameter("classroom"),"utf-8");
    String qq = URLEncoder.encode(request.getParameter("qq"),"utf-8");
    String phone = URLEncoder.encode(request.getParameter("phone"),"utf-8");
    try {
        SetValue.signup(fullname,username,password,classroom,qq,phone);
        out.print("<script type='text/javascript'>alert('注册成功');document.location.href='login.jsp';</script>");
    }catch(Exception e){
        out.print("<script type='text/javascript'>alert('注册失败');document.location.href='login.jsp';</script>");
    }
%>
</body>
</html>
