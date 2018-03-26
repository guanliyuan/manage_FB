<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<head>
    <meta charset="UTF-8" />
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="../css/login.css">
</head>
<style>
    * {
        margin: 0px;
        padding: 0px;
    }
    div {
        display: block;
    }

    html, body {
        width: 100%;
        font-family: 微软雅黑;
        background-color: #fffdf9;
    }
    #login{
        width: 332px;
        height: 680px;
        margin: 114px auto 0 auto;
    }
    .lg{
        width: 90px;
        height: 90px;
        margin: auto;
        background-size: 100% auto;
        background-repeat: no-repeat;
        background-image: url("img/blue-logo.png");
    }
    .p1{
        font-size: 24px;
        color: #198aed;
        margin: 31px auto 5px auto;
        text-align: center;
    }
    .p2{
        font-size: 18px;
        color: #198aed;
        margin-bottom: 130px;
        text-align: center;
    }
    .p3{
        text-align: center;
        margin: 38px auto 0 auto;
    }
    .p3 a{
        font-size: 14px;
        color: #1988ec;
        text-decoration: none;

    }
    input[type="text"]{
        width: 332px;
        height: 62px;
        outline: none;
        font-size: 14px;
        text-align: center;
        margin-bottom: 36px;
        border-radius: 31px;
        border: 1px solid #198aed;
        background-color: #F5F5F5;
    }
    input[type="password"]{
        width: 332px;
        height: 62px;
        outline: none;
        font-size: 14px;
        text-align: center;
        margin-bottom: 36px;
        border-radius: 31px;
        border: 1px solid #198aed;
        background-color: #F5F5F5;
    }
    input::-webkit-input-placeholder{
        color: #198aed;
    }
    input:-moz-placeholder{
        color: #198aed;
    }
    input::-moz-placeholder{
        color: #198aed;
    }
    input:-ms-input-placeholder{
        color: #198aed;
    }
    button{
        width: 170px;
        height: 56px;
        margin: auto;
        outline: none;
        color: #ffffff;
        display: block;
        cursor: pointer;
        font-size: 17px;
        border-style: none;
        border-radius: 28px;
        background-color: #198aed;
    }
    #ts{
        width: 200px;
        height: 50px;
        margin: auto;
        color: red;
        text-align: center;
    }
</style>
<script type="text/javascript" rel="stylesheet">
    history.go(1);
    function formCheck() {
        var account = document.getElementById("account").value;
        var pwd = document.getElementById("pwd").value;
        var mypwd = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/;
        if (account.length < 6) {
            document.getElementById("ts").innerHTML = "请输入6位有效员工号！";
            return false;
        } else if (pwd.length < 8) {
            document.getElementById("ts").innerHTML = "密码长度不能小于8位！";
            return false;
        } else if (pwd.length > 16) {
            document.getElementById("ts").innerHTML = "密码长度不能大于16位！";
            return false;
        } else if (!mypwd.test(pwd)) {
            document.getElementById("ts").innerHTML = "请输入正确的密码格式(数字+字母)！"
            return false;
        }
        return true;
    }
</script>
<body>
<div id="login">
    <form action="user/login" method="post" onsubmit="return formCheck()">
        <div class="lg"></div>
        <p class="p1">泛贝&nbsp;OA&nbsp;系统登录</p>
        <p class="p2">FANBEI&nbsp;&nbsp;OA&nbsp;&nbsp;LOGN&nbsp;&nbsp;SYSTEM</p>
        <input id="account" type="text" name="tel" value="" placeholder="输入登录账号" required="required">
        <input id="pwd" type="password" name="password" value="" placeholder="请输入密码" required="required">
        <p class="p3"><a href="#">忘记密码请联系管理员</a></p>
        <div id="ts"></div>
        <button type="submit">完成</button>
    </form>
</div>
</body>


</html>