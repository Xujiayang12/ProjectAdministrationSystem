<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Set Project</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <%--<link rel="stylesheet" href="css/style.css"/>--%>
    <link rel="stylesheet" href="../css/editormd.css"/>
</head>
<body style="background-color:#F8F9FA;">
<form action="" method="post" enctype="application/x-www-form-urlencoded">
    <div class="input-group mb-3 input-group-lg">
        <div class="input-group-prepend">
            <span class="input-group-text">项目名称</span>
        </div>
        <input type="text" class="form-control" placeholder="请输入" id="usr" name="projectname">
    </div>
    <h5>项目简介</h5>
    <div class="form-group ">
        <textarea class="form-control" rows="2" id="detail"></textarea>
    </div>
    <div class="custom-file mb-3">
        <input type="file" class="custom-file-input" id="customFile" name="filename">
        <label class="custom-file-label" for="customFile">选择项目工程</label>
    </div>
    <h5>项目文档</h5>
    <div class="form-group">
        <div id="test-editormd">
            <textarea style="display:none;" placeholder="项目简介" name="document"></textarea>
        </div>
    </div>

    <button type="submit" class="btn btn-primary">确认提交</button>
</form>
<script src="js/jquery.min.js"></script>
<script src="../editormd.min.js"></script>
<script type="text/javascript">
    var testEditor;

    $(function () {
        testEditor = editormd("test-editormd", {
            width: "100%",
            height: 540,
            syncScrolling: "single",
            path: "../lib/"
        });
    });
</script>
</body>
</html>