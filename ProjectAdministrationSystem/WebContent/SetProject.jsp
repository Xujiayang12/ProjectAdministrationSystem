<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>项目文档管理系统</title>
</head>
<body>
请根据您的项目要求，完善以下信息：
       <hr>
       <form action="" method="post"enctype="application/x-www-form-urlencoded">
       <p><h3>项目名称:</h3>
       <input type="text"name="uname"><br/>
       <p><h3>项目简介：</h3>
       <textarea name="content"  rows="6"style="OVERFLOW:   hidden">
       </textarea><br/>
       <span class="btn btn-success fileinput-button">
            <span>上传</span>
            <input type="file">
        </span>
       <br/><input type="submit"name="发布项目">
       </form>
</body>
</html>