<%@ page language="java" import="java.util.*,java.net.*,info.*" contentType="text/html; charset=utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/materialize/1.0.0-rc.2/css/materialize.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
    <link href="//cdn.muicss.com/mui-0.9.41/css/mui.min.css" rel="stylesheet" type="text/css"/>
    <script src="//cdn.muicss.com/mui-0.9.41/js/mui.js"></script>
    <script src="https://cdn.bootcss.com/marked/0.6.1/marked.min.js"></script>

</head>
<body style="background-color:#F8F9FA;">
<%
    Cookie[] cookies = request.getCookies();
    String user_name = "";
    String pass_word = "";
    if (cookies != null && cookies.length > 0) {
        for (Cookie c : cookies) {
            if (c.getName().equals("username")) {
                user_name = URLDecoder.decode(c.getValue(), "utf-8");
            }
            if (c.getName().equals("password")) {
                pass_word = URLDecoder.decode(c.getValue(), "utf-8");
            }
        }
    }
    User user = User.findByAccount(user_name);
    int id = user.getProject();
    Project project = Project.findById(id);
    List<User> member = User.findAllByProject(user.getProject());
    String doc = project.getDocument();
%>

<div class="mui-container">
    <div class="col s12 m7">
        <div class="card medium">
            <div class="card-image">
                <img src="https://ws3.sinaimg.cn/large/a74cb9c0ly1g0vhhmiyhsj20sg0lcaen.jpg">
                <span class="card-title"><h1><%=project.getName()%></h1><div class="chip">ID: <%=project.getId()%></div></span>
            </div>
            <div class="card-content">
                <p><%=project.getDetail()%>
                </p>
            </div>
            <a class="btn-floating halfway-fab waves-effect waves-light btn-large blue"><i class="material-icons">people</i></a>
            <div class="card-action">
                <%
                    for (User u : member) {
                        out.print("<div class=\"chip\">" + u.getName() + "</div>");
                    }

                %>
            </div>
        </div>
    </div>
</div>
<br/>

<div class="mui-container">
    <div class="mui-panel">
        <ul class="mui-tabs__bar mui-tabs__bar--justified">
            <li class="mui--is-active"><a data-mui-toggle="tab" data-mui-controls="pane-justified-1">项目文档</a></li>
            <li><a data-mui-toggle="tab" data-mui-controls="pane-justified-2">项目工程</a></li>
            <li><a data-mui-toggle="tab" data-mui-controls="pane-justified-3">评分信息</a></li>
        </ul>
        <div class="mui-tabs__pane mui--is-active" id="pane-justified-1"><%=doc%>
        </div>
        <div class="mui-tabs__pane" id="pane-justified-2"><a class="waves-effect waves-light btn blue"><i
                class="material-icons right">play_for_work</i>下载</a></div>
        <div class="mui-tabs__pane" id="pane-justified-3">评分信息</div>
    </div>
</div>
<div style="position: relative; height: 80px;">
    <div class="fixed-action-btn horizontal" style="position: absolute; display: inline-block; right: 30px;">
        <a class="btn-floating btn-large blue" title="编辑项目">
            <i class="large material-icons">mode_edit</i>
        </a>
        <a class="btn-floating btn-large red" title="退出项目">
            <i class="large material-icons">exit_to_app</i>
        </a>
    </div>
</div>
<script>
    var txx = document.getElementById('pane-justified-1').innerText.replace(/\\n/g,'\n');
    document.getElementById('pane-justified-1').innerHTML =
        marked(txx);
</script>
</body>
</html>