<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link href="${basePath}static/css/style.css" rel='stylesheet' type='text/css'/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>

</head>

<body>
<div class="main">
    <!-----start-main---->
    <h1>登录</h1>
    <form>
        <div class="lable">
            <input type="text" class="text" value="请输入你的账号" name="username" onfocus="this.value = '';"
                   onblur="if (this.value == '') {this.value = '请输入你的账号';}else{search(this.value)}"><%--search 查询账号--%>
            <%--先隐藏下列div 输入账号后，异步校验该账号是否存在，不存在则显示--%>
            <div id="searchUsername" style="color: red;display: none">当前用户不存在，请确认输入是否正确！</div>
            <input type="password" class="text" name="password" value="请输入你的密码" onfocus="this.value = '';"
                   onblur="if (this.value == '') {this.value = '请输入你的账号';}">
            <input type="text" class="text" value="请输入验证码" name="Vcode" onfocus="this.value = '';"
                   onblur="if (this.value == '') {this.value = '请输入你的账号';}"><%--check校验验证码--%>
            <%--先隐藏下列div 输入验证码后，异步校验验证码是否输入正确，不正确则显示--%>
            <div style="color: red;display: none">验证码输入错误，请重新输入！</div>
        </div>
        <div class="clear"></div>
        <h3>如果你还没有账号，并且想加入我们，请点击<a href="#">注册用户</a></h3>
        <div class="submit">
            <input type="submit" onclick="myFunction()" value="登录">
        </div>
        <div class="clear"></div>
    </form>
</div>
</body>
<script>
    $(function () {
        $("#username").blur(function () {
            alert("触发事件")
            $("#searchUsername").css(display = "block");
            var username = this.value();//取出关键字
            $.post("search", {'username': username}, function (data) {//发送异步请求
                data.$.parseJSON(data);
                if (data != null || data != "") {
                    document.getElementById("searchUsername").innerHTML = value[i] + "<br />";
                }
            });
        })
    })
</script>
</html>