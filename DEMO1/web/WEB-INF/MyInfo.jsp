<%--
  Created by IntelliJ IDEA.
  User: atony
  Date: 19-3-3
  Time: 下午6:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Info</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/weui/1.1.3/style/weui.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jquery-weui/1.2.1/css/jquery-weui.min.css">
    <script src="https://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery-weui/1.2.1/js/jquery-weui.min.js"></script>
</head>
<body>
<main>
    <div class="container container-header">
        <div class="columns">
            <div class="column col-xs-12 col-4 author_info card-footer bg-gray hide-xs"
                 style="border-color: transparent;background-color: transparent;">
                <form action=" " method="post"
                      style="border-color: transparent;background-color: transparent;">
                    <div class="weui-form-preview"
                         style="border-color: transparent;background-color: transparent;">
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">姓名</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="text" name="fullname"/>
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">帐号</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="text" name="username" pattern="[0-9]*" placeholder="仅数字，建议使用学号"/>
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">密码</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="password" name="password"/>
                            </div>
                        </div>
                        <div class="weui-cell weui-cell_select weui-cell_select-after">
                            <div class="weui-cell__hd">
                                <label class="weui-label">班级</label>
                            </div>
                            <div class="weui-cell__bd">
                                <select class="weui-select" name="classroom">
                                    <option value="软工1班">软工1班</option>
                                    <option value="软工2班">软工2班</option>
                                    <option value="软工3班">软工3班</option>
                                    <option value="软工4班">软工4班</option>
                                    <option value="软工5班">软工5班</option>
                                    <option value="软工6班">软工6班</option>
                                </select>
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">QQ</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="text" name="qq" pattern="[0-9]*"/>
                            </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">手机号</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="text" name="phone" pattern="[0-9]*" />
                            </div>
                        </div>
                        <div class="weui-form-preview__ft">
                            <button type="submit" class="weui-form-preview__btn weui-form-preview__btn_default"
                                    href="javascript:">确认注册
                            </button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</main>
</body>
</html>
