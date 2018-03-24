<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<head>
    <meta charset="UTF-8" />
    <title>登录</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css"></link>
</head>
<style>

</style>
<script type="text/javascript" rel="stylesheet">
    history.go(1);
    function formCheck() {
        var account = document.getElementById("account").value;
        var pwd1 = document.getElementById("pwd").value;
        var pwd2 = document.getElementById("pwd1").value;
        var mypwd = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;
        if (account.length < 6) {
            document.getElementById("ts").innerHTML = "请输入6位有效员工号！";
            return false;
        } else if (pwd1 != pwd2) {
            document.getElementById("ts").innerHTML = "两次输入的密码不一致！";
            return false;
        } else if (pwd1.length < 8 || pwd2.length < 8) {
            document.getElementById("ts").innerHTML = "密码长度不能小于8位！";
            return false;
        } else if (pwd1.length > 16 || pwd2.length > 16) {
            document.getElementById("ts").innerHTML = "密码长度不能大于16位！";
            return false;
        } else if (!mypwd.test(pwd1) || !mypwd.test(pwd2)) {
            document.getElementById("ts").innerHTML = "请输入正确的密码格式(数字+字母)！";
            return false;
        }
        return true;
    }
</script>
<body>
<div id="login">
    <form action="#" method="post" onsubmit="return formCheck()">
    <div class="lg"></div>
    <p class="p1">泛贝&nbsp;OA&nbsp;系统登录</p>
    <p class="p2">FANBEI&nbsp;&nbsp;OA&nbsp;&nbsp;LOGN&nbsp;&nbsp;SYSTEM</p>
    <input id="account" type="text" name="" value="" placeholder="输入登录账号" required="required">
    <input id="pwd" type="password" name="" value="" placeholder="请输入密码" required="required">
    <input id="pwd1" type="password" name="" value="" placeholder="请确认密码" required="required">
    <div id="ts"></div>
    <button type="submit">完成</button>
    </form>
</div>
</body>
</html>