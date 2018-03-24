<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-compatibla" content="IE=edge,chrome=1">
    <meta name="viewprot" content="width=device-width,initial-scale=1">
    <title>泛贝OA系统首页</title>
    <script rel="script" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script rel="script" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <!--=============账户余额==================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/threePage.css"></link>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/threePage.js"></script>
    <!--=============工资账单===================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fourPage.css"></link>
    <!--=============基础信息==================-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/twoPage.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/twoPage.css"></link>
    <!--=============日历=============-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/calendar.js"></script>
    <!--================日志=======================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sixPage.css"></link>
    <script src="${pageContext.request.contextPath}/js/sixPage.js"></script>
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
        background-color: #F5F5F5;
    }

    .head {
        width: 100%;
        min-width: 1150px;
        height: 100px;
        position: absolute;
        background-color: #9c9c9c;
    }

    .head .head_content {
        width: 1090px;
        height: 52px;
        margin: 46px auto;
    }

    .head_left {
        width: 152px;
        height: 52px;
        float: left;
        background-image: url("${pageContext.request.contextPath}/img/logo.png");
        background-repeat: no-repeat;
        background-size: 100% auto;
    }

    .head_right {
        width: 450px;
        height: 30px;
        float: right;
        margin-top: 4px;
        font-size: 17px;
    }

    .head_right ul li {
        display: block;
        width: 100px;
        height: 50px;
        text-align: center;
        list-style-type: none;
        float: left;
        position: relative;
    }

    .nav_title > li:after {
        content: "";
        width: 0;
        height: 8px;
        background: #ffffff;
        position: absolute;
        bottom: 0;
        left: 0;
        transition: all 0.5s ease 0s;
    }

    .nav_title > li:hover:after {
        width: 100%;
    }

    .head_right ul li a {
        font-size: 17px;
        color: #080808;
        font-family: 微软雅黑;
        text-decoration: none;
    }

    .center {
        width: 1140px;
        height: 845px;
        margin: auto;
    }

    /*========左侧导航栏======*/
    .center_left {
        width: 224px;
        height: 845px;
        float: left;
        position: absolute;
        background-color: #ededed;
    }

    .center_left .one {
        background-color: #ffffff;
    }

    .icon {
        width: 224px;
        height: 180px;
    }

    .t_icon {
        width: 98px;
        height: 98px;
        border-radius: 49px;
        background-image: url("${pageContext.request.contextPath}/img/title.png");
        background-repeat: no-repeat;
        background-size: 100% auto;
        margin: auto;
        margin-top: 40px;
    }
    .nav{

    }
    .nav ul li {
        width: 224px;
        height: 88px;
        display: block;
        text-align: center;
        list-style-type: none;
    }

    .nav ul li a {
        font-family: 微软雅黑;
        color: #8d8d8d;
        font-size: 16px;
        text-decoration: none;
        line-height: 88px;
        display: block;
    }

    /*=======右侧部分内容======*/
    .center_right {
        width: 916px;
        height: 845px;
        float: right;
    }

    .Hpage {
        width: 871px;
        height: 845px;
        margin-left: 50px;
        margin-top: 14px;
        background-color: #F5F5F5;
    }

    /*===左侧===*/
    .Hpage .bos {
        width: 416px;
        float: left;
    }

    .bos .bulletin {
        width: 416px;
        height: 416px;
        background-color: #ffffff;
    }

    .bulletin .gg-titlt {
        width: 416px;
        height: 44px;
        background-color: #ededed;
        position: absolute;
    }

    .gg-titlt span {
        font-size: 18px;
        margin-top: 10px;
        margin-left: 20px;
        display: block;
    }

    .bulletin .tz-box {
        width: 416px;
        height: 371px;
        margin-top: 44px;
        position: absolute;
    }

    .gg-table {
        font-size: 14px;
        margin-top: 30px;
        margin-left: 14px;
    }

    .gg-table table {
        width: 100%;
        border: 1px solid #e5e5e5;
        border-collapse: collapse;
    }

    .gg-table tr {
        height: 40px;
    }

    .gg-table .td2 {
        width: 90px;
        text-align: center;
        margin-left: 10px;
        margin-right: 20px;
    }

    /*=============事后修改===================*/
    .gg-table .td3 {
        width: 200px;
        height: 20px;
        text-overflow: ellipsis;
    }

    .td2 a {
        text-decoration: none;
        color: #1a87ec;
    }

    .bos .wait {
        width: 416px;
        height: 416px;
        margin-top: 16px;
        background-color: #ffffff;
    }

    .wait .w-left {
        width: 127px;
        height: 416px;
        float: left;
    }

    .wait .w-top {
        width: 127px;
        height: 208px;
        background-color: #1a87ec;
    }

    .wait .w-bottom {
        width: 127px;
        height: 208px;
        background-color: #ededed;
    }

    .w-top p {
        display: block;
        margin-left: 80px;
        font-size: 12px;
        color: #ffffff;
    }

    .w-left .to {
        display: block;
        margin-left: 20px;
        margin-top: 140px;
        font-family: 微软雅黑;
        color: #ffffff;
        font-size: 18px;
    }

    .w-top .number {
        color: #ffffff;
        font-size: 24px;
    }

    .w-bottom p {
        display: block;
        margin-left: 80px;
        font-size: 12px;
        color: #080808;
    }

    .w-bottom .to {
        display: block;
        margin-left: 20px;
        margin-top: 140px;
        font-family: 微软雅黑;
        color: #080808;
        font-size: 18px;
    }

    .w-bottom .number {
        color: #1a87ec;
        font-size: 24px;
    }

    .w-right {
        width: 286px;
        height: 416px;
        float: right;

    }

    .todo, .tobe {
        width: 286px;
        height: 416px;
    }

    .todo table {
        width: 230px;
        margin-left: 40px;
        margin-top: 30px;
        border-collapse: collapse;
    }

    .todo table tr {
        height: 20px;
    }

    /* .todo table td{
         border: 1px solid #e5e5e5;
     }*/
    .tdone:before {
        content: url("${pageContext.request.contextPath}/img/dx.png");
        vertical-align: middle;
        background-size: 100% auto;
        background-repeat: no-repeat;
    }

    /*===右侧===*/
    .Hpage .boxone {
        width: 416px;
        height: 848px;
        float: right;
        border: 1px solid #e5e5e5;
    }

    .boxone .top {
        width: 415px;
        height: 118px;
        background-color: #ffffff;
        position: absolute;
    }

    .top .day {
        font-size: 48px;
        color: #1a87ec;
        margin-left: 62px;
        margin-top: 40px;
        display: block;
    }
    .today, .refresh {
        width: 50px;
        height: 21px;
        border: 1px solid #e5e5e5;
        float: left;

    }

    .today {
        font-size: 14px;
        text-align: center;
        color: #9c9c9c;
    }

    .refresh {
        background-color: #ffffff;
        outline: none;
        background-image: url("${pageContext.request.contextPath}/img/sx.png");
        background-size: 100% 100%;
        background-repeat: no-repeat;
        margin-left: 13px;
    }

    .top .de {
        width: 140px;
        height: 68px;
        display: block;
        margin-left: 220px;
        margin-top: -80px;
        position: relative;
        border: 1px solid #ffffff;
    }

    #calen {
        width: 415px;
        height: 409px;
        margin-top: 119px;
        font-size: 12px;
        background-color: #ffffff;
        position: absolute;
    }

    .boxone .bottom {
        width: 415px;
        height: 320px;
        margin-top: 529px;
        position: absolute;
        background-color: #ffffff;
    }

    .bottom span {
        font-size: 24px;
        color: #9c9c9c;
        display: block;
        margin-top: 150px;
        text-align: center;
    }

    #onePage hr {
        width: 100%;
        height: 1px;
        border: none;
        background-color: #8d8d8d;
    }

    /* !*尖角的实现*!
     .demo
     {
         width: 1.27rem;
         height: 2.08rem;
         background-color: #1a87ec;
         position: relative;
         font-size: 0.12rem;
     }
     .demo:before, .demo:after
     {
         border: solid transparent;
         content: ' ';
         height: 0px;
         width: 0px;
         left: 100%;
         position: absolute;
     }
     .demo:before {
         border-width: 0.12rem;
         border-left-color: #1a87ec;
         top: 1.5rem;
     }*/
    #twoPage {
        width: 956px;
        height: 2052px;
    }
    .center_content {
        width: 100%;
        min-width: 1150px;
        margin-top: 100px;
        height: auto !important;
        min-height: 800px;
        position: absolute;
    }
    .fileinput-button {
        position: relative;
        display: inline-block;
        overflow: hidden;
        margin-left: 28px;
        margin-top: 22px;
        width: 80px;
        height: 28px;
        color: #ffffff;
        font-size: 16px;
        text-align: center;

        background-color: #1998ec;
    }
    .fileinput-button input{
        position:absolute;
        right: 0px;
        top: 0px;
        opacity: 0;
        -ms-filter: 'alpha(opacity=0)';
        font-size: 200px;
    }
    .nav .shadow{
        position: absolute;
        box-shadow: 0px 5px 5px #888888;
    }
</style>
<script type="text/javascript">
    /*改变背景色 */
    $(function () {
        $(".center_left li").on("click", function () {
            $(".center_left li").css('background-color', '#ededed');
            $(this).css('background-color', '#ffffff')
        })
    })
    $(function () {
        $(".center_left ul li a").on("click", function () {
            $(".center_left ul li a").css('color', '#8d8d8d');
            $(this).css('color', '#1a87ec')
        })
    })
    /*========待办，待阅==========*/
    $(function () {
        $(".dv").on("click", function () {
            $(".dv").css('background-color', '#ededed')
            $(this).css('background-color', '#1a87ec')
        })
    })
    $(function () {
        $(".dv").on("click", function () {
            $(".to").css('color', '#080808')
            $(this).css('color', '#ffffff')
        })
    })
    /*实现点击div跳转到相应的界面*/
    $(function () {
        $("#one").click(function () {
            $(".d1").toggle(true);
            $(".d2,.d3,.d4,.d6").hide();
        })
        $("#two").click(function () {
            $(".d2").toggle(true);
            $(".d1,.d3,.d4,.d6").hide();
        })
        $("#three").click(function () {
            $(".d3").toggle(true);
            $(".d1,.d2,.d4,.d6").hide();

        })
        $("#four").click(function () {
            $(".d4").toggle(true);
            $(".d1,.d2,.d3,.d6").hide();

        })
        $("#six").click(function () {
            $(".d6").toggle(true);
            $(".d1,.d2,.d3,.d4").hide();
        })
    })
    $(function () {
        $(".w-top").click(function () {
            $(".todo").toggle(true);
            $(".tobe").hide();
        })
        $(".w-bottom").click(function () {
            $(".tobe").toggle(true);
            $(".todo").hide();
        })
    })

    /*获取系统的当前时间*/
    function showTime() {
        var date = new Date();
        var year = date.getFullYear();//年
        var month = date.getMonth() + 1;//月
        var day = date.getDate();//日
        var hour = date.getHours();//时
        var minute = date.getMinutes();//分
        var second = date.getSeconds();//秒
        /*var dateStr = year + "年" + month + "月" + day + "日" + hour + "时" + minute + "分" + second + "秒";*/
        /*var dateStr = year +"-"+month+"-"+day;*/
        var dateDay = day;
        $(".day").html(day);
    }
    $(function () {
        showTime()
    })
    /*提取金额验证*/
    function clearNoNum(obj) {
        //修复第一个字符是小数点 的情况.
        if (obj.value != '' && obj.value.substr(0, 1) == '.') {
            obj.value = "";
        }
        obj.value = obj.value.replace(/^0*(0\.|[1-9])/, '$1');//解决 粘贴不生效
        obj.value = obj.value.replace(/[^\d.]/g, "");  //清除“数字”和“.”以外的字符
        obj.value = obj.value.replace(/\.{2,}/g, "."); //只保留第一个. 清除多余的
        obj.value = obj.value.replace(".", "$#$").replace(/\./g, "").replace("$#$", ".");
        obj.value = obj.value.replace(/^(\-)*(\d+)\.(\d\d).*$/, '$1$2.$3');//只能输入两个小数
        if (obj.value.indexOf(".") < 0 && obj.value != "") {//以上已经过滤，此处控制的是如果没有小数点，首位不能为类似于 01、02的金额
            if (obj.value.substr(0, 1) == '0' && obj.value.length == 2) {
                obj.value = obj.value.substr(1, obj.value.length);
            }
        }
    }
</script>
<body>
<div class="allcontent">
    <div class="head">
        <div class="head_content">
            <div class="head_left"></div>
            <div class="head_right">
                <ul class="nav_title">
                    <li><a href="HomePage.HomePage.jsp" style="color: #ffffff">首页</a></li>
                    <li><a href="Administrative.Administrative.jsp">行政</a></li>
                    <li><a href="Personnel.Personnel.jsp">人事</a></li>
                    <li><a href="Financial.Financial.jsp">财务</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="center_content">
        <div class="center">
            <div class="center_left">
                <div class="icon">
                    <div class="t_icon"></div>
                </div>
                <div class="nav">
                    <ul>
                        <li id="one" class="one"><a href="#" style="color: #1a87ec">首页</a></li>
                        <li id="two"><a href="#">基础信息</a></li>
                        <li id="three"><a href="#">账户信息</a></li>
                        <li id="four"><a href="#">工资账单</a></li>
                        <li id="six"><a href="#">日志</a></li>
                    </ul>
                </div>
            </div>
            <div class="center_right">
                <!--==============首页=======================-->
                <div id="onePage" class="d1">
                    <div class="Hpage">
                        <!--===左侧===-->
                        <div class="bos">
                            <div class="bulletin">
                                <div class="gg-titlt"><span>公司公告</span></div>
                                <div class="tz-box">
                                    <table class="gg-table" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td class="td1"><img style="display: block" src="${pageContext.request.contextPath}/img/dian.png"></td>
                                            <td class="td2"><a href="#">[会议公告]</a></td>
                                            <td class="td3">周二下午进行全体员工会议</td>
                                        </tr>
                                        <tr>
                                            <td><img src="${pageContext.request.contextPath}/img/dian.png"></td>
                                            <td class="td2"><a href="#">[会议公告]</a></td>
                                            <td>每周四周二进行网络部员工会议</td>
                                        </tr>
                                        <tr>
                                            <td><img src="${pageContext.request.contextPath}/img/dian.png"></td>
                                            <td class="td2"><a href="#">[通知公告]</a></td>
                                            <td>人力资源部培训通知</td>
                                        </tr>
                                        <tr>
                                            <td><img src="${pageContext.request.contextPath}/img/dian.png"></td>
                                            <td class="td2"><a href="#">[通知公告]</a></td>
                                            <td>集团成立分公司</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="wait">
                                <div class="w-left">
                                    <div class="w-top dv">
                                        <p><span class="number">1</span>/条</p>
                                        <span class="to">待办</span>
                                    </div>
                                    <div class="w-bottom dv">
                                        <p><span class="number">1</span>/条</p>
                                        <span class="to">待阅</span>
                                    </div>
                                </div>
                                <div class="w-right">
                                    <div class="todo">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <!--<td><img style="vertical-align: middle" src="img/dx.png"></td>-->
                                                <td class="tdone" colspan="2" style="font-size: 0.12rem;color: #080808">
                                                    &nbsp;&nbsp;你有<span>一</span>条需要处理待办
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><img style="vertical-align: text-top" src="${pageContext.request.contextPath}/img/title1.png"></td>
                                                <td style="font-size: 0.12rem;color: #080808;vertical-align: text-top">
                                                    请你处理任务：完成财富模块的工能按钮设计(指派人：xxx)<br/>
                                                    小红 2017-01-5<a href="#">任务安排</a></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="tobe" style="display: none">待阅</div>
                                </div>
                            </div>
                        </div>
                        <!--===右侧===-->
                        <div class="boxone">
                            <div class="top">
                                <span class="day"></span>
                                <div class="de">
                                    <span><div class="today">今天</div></span>
                                    <span><button class="refresh" type="button"></button></span>
                                </div>
                            </div>
                            <hr/>
                            <div id='calen'>

                            </div>
                            <hr/>
                            <div class="bottom">
                                <span>暂无工作事项</span>
                            </div>
                        </div>
                    </div>

                </div>
                <!--==============基础信息=======================-->
                <div id="twoPage" class="d2" style="display: none">
                    <div class="title">
                        <span>我的信息</span>
                    </div>
                    <div class="information">
                        <div class="container">
                            <div class="c_title">
                                <span>基础信息</span>
                                <span class="edit" style="cursor: pointer">编辑</span>
                            </div>

                            <!--===========table1==============-->
                            <div class="table1">
                                <form action="#" method="post">
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td class="t1"><span>姓名</span></td>
                                            <td style="width: 2.81rem"><input class="input" type="text" name=""
                                                                              value="某某某">
                                            </td>
                                            <td class="t1"><span>年龄</span></td>
                                            <td style="width: 2.81rem"><input type="text" name="" value="25"></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>性别</span></td>
                                            <td>
                                                <input class="male" type="radio" value="男" name="sex" checked="true">&nbsp;&nbsp;男
                                                <input class="female" type="radio" value="女" name="sex">&nbsp;&nbsp;女
                                            </td>
                                            <td class="t1"><span>民族</span></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>出生日期</span></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td class="t1"><span>身高</span></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>手机号码</span></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td class="t1"><span>体重</span></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>办公电话</span></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td class="t1"><span>婚姻状况</span></td>
                                            <td>
                                                <input class="not" type="radio" value="未婚" name="marriage"
                                                       checked="true">&nbsp;&nbsp;未婚
                                                <input class="has" type="radio" value="已婚" name="marriage">&nbsp;&nbsp;已婚
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>电子邮箱</span></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td class="t1"><span>参加工作时间</span></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>部门职位</span></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td rowspan="2" class="t1"><span>现家庭住址</span></td>
                                            <td rowspan="2"><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>工号</span></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>QQ</span></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td class="t1"><span>籍贯</span></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>微信</span></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td class="t1"><span>户口所在地</span></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>紧急联络人</span></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td class="t1"><span>户口性质</span></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>学历程度：</span></td>
                                            <td colspan="3"><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>身体健康状况：</span></td>
                                            <td colspan="3"><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>档案所在单位：</span></td>
                                            <td colspan="3"><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>是否上过医疗保险：</span></td>
                                            <td colspan="3">
                                                <input class="no" type="radio" value="否" name="whether" checked="true">&nbsp;&nbsp;否
                                                <input class="is" type="radio" value="是" name="whether">&nbsp;&nbsp;是
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="t1"><span>是否上过社会保险：</span></td>
                                            <td colspan="3">(养老、失业、生育、工伤)：
                                                <input class="no" type="radio" value="否" name="whether_o"
                                                       checked="true">&nbsp;&nbsp;否
                                                <input class="is" type="radio" value="是" name="whether_o">&nbsp;&nbsp;是
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4"><input type="submit" value="保存"></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                            <!--===============技能训练程度或职称===================-->
                            <div class="table2">
                                <form action="#" method="post">
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td colspan="4" style="background-color: #EEEEEE;height: 0.38rem">
                                                <span class="s1">技能训练程度或职称</span>
                                                <span class="s2">曾得到的专业证照</span>
                                                <span class="edit1" style="cursor: pointer">编辑</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 1.94rem">考试类别</td>
                                            <td style="width: 2.08rem">考试机构</td>
                                            <td style="width: 1.92rem">考试日期</td>
                                            <td style="width: 2.37rem">证件照名称字号</td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td colspan="4">
                                                <button type="submit">保存</button>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                            <div class="table3">
                                <form action="#" method="post">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr style="background-color: #EEEEEE;height: 0.38rem">
                                            <td style="width: 1.3rem">姓名</td>
                                            <td style="width: 1.22rem">与本人关系</td>
                                            <td style="width: 5.84rem">年龄</td>
                                            <td style="width: 2.56rem" colspan="2">居住地</td>
                                            <td style="width: 2.38rem"><span class="s2">联系电话</span><span class="edit2" style="cursor: pointer">编辑</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td colspan="2"><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td colspan="2"><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                            <td colspan="2"><input type="text" name="" value=""></td>
                                            <td><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><span>是否在本公司任过职位</span></td>
                                            <td colspan="4"><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><span>是否有朋友亲属在本公司工作</span></td>
                                            <td colspan="4"><input type="text" name="" value=""></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><span>姓名</span><input class="name" type="text" name=""
                                                                                  value="">
                                            </td>
                                            <td style="width: 1.64rem" colspan="2"><span>部门：</span>
                                                <input class="dept" type="text" name="" value="">
                                            </td>
                                            <td style="width: 1.86rem"><span>职位：</span>
                                                <input class="position" type="text" name="" value="">
                                            </td>
                                            <td style="width: 2.27rem"><span>关系：</span>
                                                <input class="concern" type="text" name="" value="">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="6">
                                                <button type="submit">保存</button>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                            <!--============个人资料=======================-->
                            <div class="title-data">
                                <span class="s1">个人资料</span>
                                <span class="s2">尽可能完善自己的资料,让大家更了解你</span>
                                <span class="spanStyle">编辑</span>
                            </div>
                            <div class="data" style="display: none;">
                                <form action="#" method="post">
                                    <div class="workjl">
                                        <span class="work">工作经历</span>
                                        <span class="cancel" style="cursor: pointer">取消</span>
                                        <span class="save" style="cursor: pointer">保存</span>
                                    </div>
                                    <div class="experience">
                                        <textarea name=""></textarea>
                                    </div>
                                </form>

                                <div class="training">
                                    <span class="px">培训经历</span>
                                    <span class="edit3" style="cursor: pointer">收起</span>
                                </div>
                                <div class="pxjl">
                                    <textarea name=""></textarea>
                                </div>
                                <div class="grjl">
                                    <span class="jl">个人简历</span>
                                    <span class="up" style="cursor: pointer">收起</span>
                                </div>
                                <div class="resume">

                                <span class="btn btn-success fileinput-button">
                                <span>上传</span>
                                <input type="file">
                                </span>
                                <span style="vertical-align: middle;display: inline-block;margin-top: -20px">选择要上传的文件</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--==============账户信息=======================-->
                <div id="threePage" class="d3" style="display: none">
                    <div class="balance">
                        <div class="round">
                            <span class="s1">余额</span>
                            <span class="number">0.00</span>
                        </div>
                        <div class="center-table">
                            <table border="0" cellspacing="0" cellpadding="0">
                                <caption>公司公积</caption>
                                <tr style="height: 45px;background-color: #e5e5e5;text-align: center">
                                    <td style="width: 104px">资金量</td>
                                    <td style="width: 143px">收益支出</td>
                                    <td style="width: 145px;">福利抵扣</td>
                                    <td style="width: 136px">年度结余</td>
                                    <td style="width: 132px">年年分配</td>
                                    <td style="width: 160px">员工所占资金量</td>
                                </tr>
                                <tr style="height: 79px">
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </table>
                            <div class="withdrawal">
                                <div class="money">
                                    <input type="text" name="" value="" placeholder="请输入提现金额" maxlength="10"
                                    onkeyup="clearNoNum(this)"/>
                                </div>
                                <div class="tx-money">
                                    <input style="cursor: pointer" type="button" name="" value="提现"/>
                                </div>
                            </div>
                            <div class="withdrawal-table">
                                <table class="table1" border="0" cellpadding="0" cellspacing="0">
                                    <tr style="height: 24px;background-color: #bfbfbf">
                                        <td style="font-size: 16px;color: #ffffff">提现至</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;&nbsp;<span>储蓄银行卡</span>
                                            <input type="text" name="" value="" placeholder="卡号后四位">
                                            <input type="text" name="" value="" placeholder="银行名称">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;&nbsp;微信</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;&nbsp;支付宝</td>
                                    </tr>
                                </table>
                                <table class="table2" border="0" cellspacing="0" cellpadding="0">
                                    <tr style="height: 24px;background-color: #bfbfbf">
                                        <td colspan="2" style="font-size: 16px;color: #ffffff">请添加银行卡</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 60px;background-color: #EEEEEE">&nbsp;&nbsp;持卡人</td>
                                        <td><input type="text" name="" value="" placeholder="请输入持卡人姓名"/></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 60px;background-color: #EEEEEE">&nbsp;&nbsp;卡号</td>
                                        <td><input type="text" name="" value="" placeholder="请输入银行卡号"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><input type="submit" name="" value="保存"/></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!--==============工资账单=======================-->
                <div id="fourPage" class="d4" style="display: none">
                    <div id="t-div2">
                        <span class="s1">&nbsp;&nbsp;薪资历史信息</span>
                        <table class="tb1" cellspacing="0" cellpadding="0">

                            <tr id="tr1">
                                <td><span>薪资套账</span></td>
                                <td><span>加入日期</span></td>
                                <td><span>操作人</span></td>
                                <td><span>备注</span></td>
                            </tr>
                            <tr>
                                <td><input type="text" value="基础员工套餐" disabled></td>
                                <td><input type="text" value="2017-12-27" disabled></td>
                                <td><input type="text" value="小名" disabled></td>
                                <td><input type="text" value="暂无备注" disabled></td>
                            </tr>
                        </table>
                        <span class="s2">&nbsp;&nbsp;社保信息</span>
                        <table class="tb2">
                            <tr id="tr2">
                                <td><span>社保套账</span></td>
                                <td><span>参保日期</span></td>
                                <td><span>退保日期</span></td>
                                <td><span>社保账号</span></td>
                                <td><span>社保代扣地</span></td>
                            </tr>
                            <tr>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                            </tr>
                        </table>
                        <div>
                <span class="s3">&nbsp;&nbsp;历史发放信息
                <select>
                    <option value="">2017</option>
                    <option value="">2018</option>
                </select>
                </span>
                        </div>

                        <table>
                            <tr id="tr3">
                                <td><span>时间</span></td>
                                <td><span>基本工资</span></td>
                                <td><span>提成奖励</span></td>
                                <td><span>应发工资</span></td>
                                <td><span>社保公积金</span></td>
                                <td><span>个人所得税</span></td>
                                <td><span>实发工资</span></td>
                            </tr>
                            <tr>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                            </tr>
                            <tr>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                                <td><input type="text" value="" disabled></td>
                            </tr>

                        </table>
                    </div>
                </div>
                <!--=============日志==============================-->
                <div id="sixPage" class="d6" style="display: none">
                    <div class="lod-title">
                        <ul>
                            <li class="out"><span>发日志</span></li>
                            <li class="myout"><span>我发出的</span></li>
                            <li class="look-log"><span>看日志</span></li>
                        </ul>
                    </div>
                    <div class="container">
                        <!--======发日志=======-->
                        <div class="left-container">
                            <div class="template"><p>选择模板：<span>(当前模板为：<span id="dayreport">日报</span>)</span></p></div>
                            <div class="list-title" id="test">
                                <ul>
                                    <li>
                                        <button type="button" class="dayreport" value="日报">日报</button>
                                    </li>
                                    <li>
                                        <button type="button" class="weeksreport" value="周报"
                                                onclick="myreport()">周报
                                        </button>
                                    </li>
                                    <li>
                                        <button type="button" class="monthreport" value="月报">月报</button>
                                    </li>
                                    <li>
                                        <button type="button" class="yearreport" value="年度工作汇报">年度工作汇报
                                        </button>
                                    </li>
                                    <li>
                                        <button type="button" class="seasonreport" value="季度汇报">季度汇报
                                        </button>
                                    </li>
                                    <li>
                                        <button type="button" class="technicalreport" value="技术汇报">技术汇报
                                        </button>
                                    </li>
                                    <li>
                                        <button type="button" class="visitrecord" value="拜访记录">拜访记录</button>
                                    </li>
                                    <li>
                                        <button type="button" class="resultsreport" value="业绩日报">业绩日报
                                        </button>
                                    </li>
                                </ul>
                            </div>
                            <div class="center-work">
                                <!--=====日报=====-->
                                <form action="#" method="post">
                                    <div class="report1">
                                        <div class="daywork">
                                            <span>今日完成工作</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male"
                                                                           class="chooseBtn"/>
                                                <label for="male" class="choose-label"></label>
                                            </div>
                                            <div class="done">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="unfinishedwork">
                                            <span>未完成工作</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male1"
                                                                           class="chooseBtn"/>
                                                <label for="male1" class="choose-label"></label>
                                            </div>
                                            <div class="notdiv">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="coordinatework">
                                            <span>需协调工作</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male2"
                                                                           class="chooseBtn"/>
                                                <label for="male2" class="choose-label"></label>
                                            </div>
                                            <div class="c-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="note">
                                            <span>备注</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male3"
                                                                           class="chooseBtn"/>
                                                <label for="male3" class="choose-label"></label>
                                            </div>
                                            <div class="no-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="bottom-work">
                                            <div class="attachment">
                                                <span style="float: left">附件</span><input style="white-space: nowrap;display: inline-block;float: right" type="file" value="添加附件">
                                                <span style="display: inline-block;margin-left: 45px;font-size: 16px;color: #1998ec;margin-top: -24px;">添加附件</span>
                                            </div>
                                            <div class="send">
                                                <span>发给谁</span><span class="heads">(点击头像可删除)</span>
                                            </div>
                                            <div class="addressee">
                                                <ul>
                                                    <li><a href="#">
                                                        <div class="add">
                                                            <div class="add-img"></div>
                                                        </div>
                                                    </a></li>
                                                </ul>
                                            </div>
                                            <div class="submit">
                                                <button type="submit">提交</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <!--=====周报=====-->
                                <form action="#" method="post">
                                    <div class="report2" style="display: none">
                                        <div class="daywork">
                                            <span>本周完成工作</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male4"
                                                                           class="chooseBtn"/>
                                                <label for="male4" class="choose-label"></label>
                                            </div>
                                            <div class="done">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="unfinishedwork">
                                            <span>本周工作总结</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male5"
                                                                           class="chooseBtn"/>
                                                <label for="male5" class="choose-label"></label>
                                            </div>
                                            <div class="notdiv">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="coordinatework">
                                            <span>下周工作计划</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male6"
                                                                           class="chooseBtn"/>
                                                <label for="male6" class="choose-label"></label>
                                            </div>
                                            <div class="c-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="help">
                                            <span>需协调与帮助</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male7"
                                                                           class="chooseBtn"/>
                                                <label for="male7" class="choose-label"></label>
                                            </div>
                                            <div class="help-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="note">
                                            <span>备注</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male8"
                                                                           class="chooseBtn"/>
                                                <label for="male8" class="choose-label"></label>
                                            </div>
                                            <div class="no-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="bottom-work">
                                            <div class="attachment">
                                                <span style="float: left">附件</span><input style="white-space: nowrap;display: inline-block;float: right" type="file" value="添加附件">
                                                <span style="display: inline-block;margin-left: 45px;font-size: 16px;color: #1998ec;margin-top: -24px;">添加附件</span>
                                            </div>
                                            <div class="send">
                                                <span>发给谁</span><span class="heads">(点击头像可删除)</span>
                                            </div>
                                            <div class="addressee">
                                                <ul>
                                                    <li><a href="#">
                                                        <div class="add">
                                                            <div class="add-img"></div>
                                                        </div>
                                                    </a></li>
                                                </ul>
                                            </div>
                                            <div class="submit">
                                                <button type="submit">提交</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <!--=====月报=====-->
                                <form action="#" method="post">
                                    <div class="report3" style="display: none">
                                        <div class="daywork">
                                            <span>本月完成工作</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male9"
                                                                           class="chooseBtn"/>
                                                <label for="male9" class="choose-label"></label>
                                            </div>
                                            <div class="done">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="unfinishedwork">
                                            <span>本月工作总结</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male10"
                                                                           class="chooseBtn"/>
                                                <label for="male10" class="choose-label"></label>
                                            </div>
                                            <div class="notdiv">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="coordinatework">
                                            <span>下月工作计划</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male11"
                                                                           class="chooseBtn"/>
                                                <label for="male11" class="choose-label"></label>
                                            </div>
                                            <div class="c-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="help">
                                            <span>需帮助与支持</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male12"
                                                                           class="chooseBtn"/>
                                                <label for="male12" class="choose-label"></label>
                                            </div>
                                            <div class="help-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="note">
                                            <span>备注</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="male13"
                                                                           class="chooseBtn"/>
                                                <label for="male13" class="choose-label"></label>
                                            </div>
                                            <div class="no-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="bottom-work">
                                            <div class="attachment">
                                                <span style="float: left">附件</span><input style="white-space: nowrap;display: inline-block;float: right" type="file" value="添加附件">
                                                <span style="display: inline-block;margin-left: 45px;font-size: 16px;color: #1998ec;margin-top: -24px;">添加附件</span>
                                            </div>
                                            <div class="send">
                                                <span>发给谁</span><span class="heads">(点击头像可删除)</span>
                                            </div>
                                            <div class="addressee">
                                                <ul>
                                                    <li><a href="#">
                                                        <div class="add">
                                                            <div class="add-img"></div>
                                                        </div>
                                                    </a></li>
                                                </ul>
                                            </div>
                                            <div class="submit">
                                                <button type="submit">提交</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <!--=====年度工作汇报=====-->
                                <form action="#" method="post">
                                    <div class="report4" style="display: none">
                                        <div class="daywork">
                                            <span>本年度工作汇报</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="sw"
                                                                           class="chooseBtn"/>
                                                <label for="sw" class="choose-label"></label>
                                            </div>
                                            <div class="done">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="unfinishedwork">
                                            <span>本年度工作总结</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="sw1"
                                                                           class="chooseBtn"/>
                                                <label for="sw1" class="choose-label"></label>
                                            </div>
                                            <div class="notdiv">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="coordinatework">
                                            <span>建议</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="sw2"
                                                                           class="chooseBtn"/>
                                                <label for="sw2" class="choose-label"></label>
                                            </div>
                                            <div class="c-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="note">
                                            <span>备注</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="sw3"
                                                                           class="chooseBtn"/>
                                                <label for="sw3" class="choose-label"></label>
                                            </div>
                                            <div class="no-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="bottom-work">
                                            <div class="attachment">
                                                <span style="float: left">附件</span><input style="white-space: nowrap;display: inline-block;float: right" type="file" value="添加附件">
                                                <span style="display: inline-block;margin-left: 45px;font-size: 16px;color: #1998ec;margin-top: -24px;">添加附件</span>
                                            </div>
                                            <div class="send">
                                                <span>发给谁</span><span class="heads">(点击头像可删除)</span>
                                            </div>
                                            <div class="addressee">
                                                <ul>
                                                    <li><a href="#">
                                                        <div class="add">
                                                            <div class="add-img"></div>
                                                        </div>
                                                    </a></li>
                                                </ul>
                                            </div>
                                            <div class="submit">
                                                <button type="submit">提交</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <!--=====季度汇报=====-->
                                <form action="#" method="post">
                                    <div class="report5" style="display: none">
                                        <div class="daywork">
                                            <span>本季度工作汇报</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="a"
                                                                           class="chooseBtn"/>
                                                <label for="a" class="choose-label"></label>
                                            </div>
                                            <div class="done">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="unfinishedwork">
                                            <span>本季度工作总结</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="b"
                                                                           class="chooseBtn"/>
                                                <label for="b" class="choose-label"></label>
                                            </div>
                                            <div class="notdiv">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="coordinatework">
                                            <span>下季度工作计划</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="c"
                                                                           class="chooseBtn"/>
                                                <label for="c" class="choose-label"></label>
                                            </div>
                                            <div class="c-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="help">
                                            <span>需要帮助与支持</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="d"
                                                                           class="chooseBtn"/>
                                                <label for="d" class="choose-label"></label>
                                            </div>
                                            <div class="help-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="note">
                                            <span>备注</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="e"
                                                                           class="chooseBtn"/>
                                                <label for="e" class="choose-label"></label>
                                            </div>
                                            <div class="no-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="bottom-work">
                                            <div class="attachment">
                                                <span style="float: left">附件</span><input style="white-space: nowrap;display: inline-block;float: right" type="file" value="添加附件">
                                                <span style="display: inline-block;margin-left: 45px;font-size: 16px;color: #1998ec;margin-top: -24px;">添加附件</span>
                                            </div>
                                            <div class="send">
                                                <span>发给谁</span><span class="heads">(点击头像可删除)</span>
                                            </div>
                                            <div class="addressee">
                                                <ul>
                                                    <li><a href="#">
                                                        <div class="add">
                                                            <div class="add-img"></div>
                                                        </div>
                                                    </a></li>
                                                </ul>
                                            </div>
                                            <div class="submit">
                                                <button type="submit">提交</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <!--=====技术汇报=====-->
                                <form action="#" method="post">
                                    <div class="report6" style="display: none">
                                        <div class="daywork">
                                            <span>开发项目</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="m"
                                                                           class="chooseBtn"/>
                                                <label for="m" class="choose-label"></label>
                                            </div>
                                            <div class="done">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="unfinishedwork">
                                            <span>项目进展/取得效果/遗留问题(项目进展明细需上传附件)</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="n"
                                                                           class="chooseBtn"/>
                                                <label for="n" class="choose-label"></label>
                                            </div>
                                            <div class="notdiv">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="coordinatework">
                                            <span>解救方案和建议</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="o"
                                                                           class="chooseBtn"/>
                                                <label for="o" class="choose-label"></label>
                                            </div>
                                            <div class="c-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="help">
                                            <span>需要帮助与支持</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="p"
                                                                           class="chooseBtn"/>
                                                <label for="p" class="choose-label"></label>
                                            </div>
                                            <div class="help-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="note">
                                            <span>备注</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="q"
                                                                           class="chooseBtn"/>
                                                <label for="q" class="choose-label"></label>
                                            </div>
                                            <div class="no-div" contenteditable="true">

                                            </div>
                                        </div>
                                        <div class="bottom-work">
                                            <div class="attachment">
                                                <span style="float: left">附件</span><input style="white-space: nowrap;display: inline-block;float: right" type="file" value="添加附件">
                                                <span style="display: inline-block;margin-left: 45px;font-size: 16px;color: #1998ec;margin-top: -24px;">添加附件</span>
                                            </div>
                                            <div class="send">
                                                <span>发给谁</span><span class="heads">(点击头像可删除)</span>
                                            </div>
                                            <div class="addressee">
                                                <ul>
                                                    <li><a href="#">
                                                        <div class="add">
                                                            <div class="add-img"></div>
                                                        </div>
                                                    </a></li>
                                                </ul>
                                            </div>
                                            <div class="submit">
                                                <button type="submit">提交</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <!--=====拜访记录=====-->
                                <form action="#" method="post">
                                    <div class="report7" style="display: none">
                                        <div class="daywork">
                                            <span>拜访对象</span>
                                            <div class="object">
                                                <input class="contacts" type="text" name="" value=""
                                                       placeholder="请填写或选择">
                                                <div class="adbook"><img src="${pageContext.request.contextPath}/img/Address-book.png"></div>
                                            </div>
                                        </div>
                                        <div class="unfinishedwork">
                                            <span>拜访方式</span>
                                            <div class="down-list">
                                                <select style="display: block">
                                                    <option value="1">-请选择-</option>
                                                    <option value="2">当面拜访</option>
                                                    <option value="3">电话拜访</option>
                                                    <option value="4">聊天软件拜访</option>
                                                    <option value="5">其他</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="coordinatework">
                                            <span>主要事宜</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="f"
                                                                           class="chooseBtn"/>
                                                <label for="f" class="choose-label"></label>
                                            </div>
                                            <div class="c-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="help">
                                            <span>拜访结果</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="j"
                                                                           class="chooseBtn"/>
                                                <label for="j" class="choose-label"></label>
                                            </div>
                                            <div class="help-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="note">
                                            <span>备注</span>
                                            <div class="switch">图文模式<input type="checkbox" name="sex" id="h"
                                                                           class="chooseBtn"/>
                                                <label for="h" class="choose-label"></label>
                                            </div>
                                            <div class="no-div">
                                                <textarea name="" placeholder="请输入文字"></textarea>
                                            </div>
                                        </div>
                                        <div class="bottom-work">
                                            <div class="attachment">
                                                <span style="float: left">附件</span><input style="white-space: nowrap;display: inline-block;float: right" type="file" value="添加附件">
                                                <span style="display: inline-block;margin-left: 45px;font-size: 16px;color: #1998ec;margin-top: -24px;">添加附件</span>
                                            </div>
                                            <div class="send">
                                                <span>发给谁</span><span class="heads">(点击头像可删除)</span>
                                            </div>
                                            <div class="addressee">
                                                <ul>
                                                    <li><a href="#">
                                                        <div class="add">
                                                            <div class="add-img"></div>
                                                        </div>
                                                    </a></li>
                                                </ul>
                                            </div>
                                            <div class="submit">
                                                <button type="submit">提交</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <!--=====业绩日报=====-->
                                <div class="report8" style="display: none">
                                    <div class="dayturnover">
                                        <span>今日营业额</span>
                                        <input type="text" maxlength="15" name="" value="" placeholder="请输入数字">
                                    </div>
                                    <div class="dayturnover">
                                        <span>今日客户数</span>
                                        <input type="text" name="" value="" placeholder="请输入数字">
                                    </div>
                                    <div class="dayturnover">
                                        <span>月累计营业额</span>
                                        <input type="text" name="" value="" placeholder="请输入数字">
                                    </div>
                                    <div class="dayturnover">
                                        <span>本月业绩目标</span>
                                        <input type="text" name="" value="" placeholder="请输入数字">
                                    </div>
                                    <div class="coordinatework">
                                        <span>今日思考</span>
                                        <div class="switch">图文模式<input type="checkbox" name="sex" id="k"
                                                                       class="chooseBtn"/>
                                            <label for="k" class="choose-label"></label>
                                        </div>
                                        <div class="c-div">
                                            <textarea name="" placeholder="请输入文字"></textarea>
                                        </div>
                                    </div>
                                    <div class="note">
                                        <span>备注</span>
                                        <div class="switch">图文模式<input type="checkbox" name="sex" id="l"
                                                                       class="chooseBtn"/>
                                            <label for="l" class="choose-label"></label>
                                        </div>
                                        <div class="no-div">
                                            <textarea name="" placeholder="请输入文字"></textarea>
                                        </div>
                                    </div>
                                    <div class="bottom-work">
                                        <div class="attachment">
                                            <span style="float: left">附件</span><input style="white-space: nowrap;display: inline-block;float: right" type="file" value="添加附件">
                                            <span style="display: inline-block;margin-left: 45px;font-size: 16px;color: #1998ec;margin-top: -24px;">添加附件</span>
                                        </div>
                                        <div class="send">
                                            <span>发给谁</span><span class="heads">(点击头像可删除)</span>
                                        </div>
                                        <div class="addressee">
                                            <ul>
                                                <li><a href="#">
                                                    <div class="add">
                                                        <div class="add-img"></div>
                                                    </div>
                                                </a></li>
                                            </ul>
                                        </div>
                                        <div class="submit">
                                            <button type="submit">提交</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--========我发出的=========-->
                        <div class="right-container" style="display: none">
                            <div class="title">
                                <span>按模板筛选&nbsp;&nbsp;</span>
                                <input type="text" name="" value="" placeholder="点击选择模板" disabled>
                                <span class="date">时间</span>
                                <input type="text" name="" value="" placeholder="开始时间" onclick="J.calendar.get();">
                                <!--<hr style="width: 115px;height: 1px;border: none;background-color: #e5e5e5">-->
                                <input type="text" style="width: 107px;height: 0px;border: 1px solid #e5e5e5">
                                <input type="text" name="" value="" placeholder="结束时间" onclick="J.calendar.get()">
                            </div>
                            <div class="log-container">
                                <div class="log-to">
                                    <div class="log-title">
                                        <div class="round-title">
                                            <span>劲言</span>
                                        </div>
                                        <span class="log-name">陈劲言</span>
                                        <span class="log-type">日报</span>
                                    </div>
                                    <input type="text"
                                           style="width: 320px;height: 0px;border: 1px solid #e5e5e5;margin-left: 17px;display: block">
                                    <div class="log-center">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td class="td1">今日完成工作：</td>
                                                <td class="td2">签到页面设计完成</td>
                                            </tr>
                                            <tr>
                                                <td class="td1">未完成工作</td>
                                                <td class="td2"></td>
                                            </tr>
                                            <tr>
                                                <td class="td1">需协调工作</td>
                                                <td class="td2"></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="log-bottom">
                                        <ul>
                                            <li><span class="dy">01月15日</span></li>
                                            <li><span>17:00</span></li>
                                            <li><a href="#" class="delete">删除</a></li>
                                            <li><a href="#">修改</a></li>
                                            <li><a href="#" class="details">查看详情</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--========看日志==========-->
                        <div class="readlog" style="display: none">
                            <div class="title">
                                <span>按模板筛选&nbsp;&nbsp;</span>
                                <input type="text" name="" value="" placeholder="点击选择模板" disabled>
                                <span class="sender">发送人</span>
                                <input type="text" name="" value="" placeholder="点击选择发送人">
                                <span class="date">时间</span>
                                <input type="text" name="" value="" placeholder="开始时间" onclick="J.calendar.get()">
                                <!--<hr style="width: 115px;height: 1px;border: none;background-color: #e5e5e5">-->
                                <input type="text" style="width: 52px;height: 0px;border: 1px solid #e5e5e5">
                                <input type="text" name="" value="" placeholder="结束时间" onclick="J.calendar.get()">
                            </div>
                            <div class="readlog-center">
                                <div class="r_readlog">
                                    <div class="log_top">
                                        <div class="r_title">
                                            <span>小明</span>
                                        </div>
                                        <div class="log_title">
                                            <p><span>小明</span>的日报</p>
                                            <p class="p_date"><span>昨天</span><span>5:35</span></p>
                                        </div>
                                    </div>
                                    <table>
                                        <tr>
                                            <td style="width: 150px">今日工作目标:</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>今日完成工作:</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>今日未完成工作:</td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                                <hr style="width: 750px;height: 1px;border: none;background-color: #e5e5e5;margin: auto"/>
                                <div class="read">
                                    <p><span>1</span>人已读</p>
                                    <div class="read_round"></div>
                                </div>
                                <div class="r_bottom">
                                    <input type="text" name="" value="">
                                    <input type="submit" name="" value="评论">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<script>
    //只需实例化calendar实例即可，传入的参数为html对象的id，举个例子如下
    new calendar('calen');
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lhgcore.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lhgcalendar.js"></script>