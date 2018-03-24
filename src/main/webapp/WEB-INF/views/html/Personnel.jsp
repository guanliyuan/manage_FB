<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<head>
    <meta charset="UTF-8" />
    <title>人事</title>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/lhgcore.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/lhgcalendar.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/personner.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/personnel.css"></link>
</head>
<body>
<div class="allcontent">
    <div class="head">
        <div class="head_content">
            <div class="head_left"></div>
            <div class="head_right">
                <ul class="nav_title">
                    <li><a href="HomePage.HomePage.jsp">首页</a></li>
                    <li><a href="Administrative.Administrative.jsp">行政</a></li>
                    <li><a href="Personnel.Personnel.jsp" style="color: #ffffff">人事</a></li>
                    <li><a href="Financial.Financial.jsp">财务</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="center_content">
        <div class="center">
            <div class="center_left">
                <div class="nav">
                    <ul>
                        <li id="one" class="one"><a href="#" style="color: #1a87ec">招聘需求申请</a></li>
                        <li id="two"><a href="#">离岗</a></li>
                        <li id="three"><a href="#">出勤信息</a></li>
                        <li id="four"><a href="#">员工通讯录</a></li>
                    </ul>
                </div>
            </div>
            <div class="center_right">
                <!--=======招聘需求申请=========-->
                <div id="onePage" class="d1">
                    <span class="recruiting">招聘</span>
                    <form action="" method="post">
                    <div class="recruiting_content">
                        <table border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td style="width: 130px">需求岗位</td>
                                <td><input class="in1" type="text" name="" value=""></td>
                            </tr>
                            <tr>
                                <td>需求人数</td>
                                <td><input class="in1" type="text" name="" value=""></td>
                            </tr>
                            <tr>
                                <td>岗位基本素质要求</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="yq">学历<input style="width: 87px;margin-left: 12px;margin-right: 48px" type="text" name="" value="">
                                    性别<input style="width: 49px;margin-left: 12px;margin-right: 28px" type="text" name="" value="">
                                专业<input style="width: 158px;margin-left: 12px;margin-right: 10px" type="text" name="" value="">
                                    相关工作经验<input style="width: 49px" type="text" name="" value="">年以上
                                    <p class="td_p">年龄<input style="width:50px;" type="text" name="" value="">
                                        到<input style="width: 50px;" type="text" name="" value=""></p>
                                </td>
                            </tr>
                            <tr>
                                <td><span style="display: block;margin-top: -120px">专业素质要求</span></td>
                                <td><textarea class="demand" name=""></textarea></td>
                            </tr>
                            <tr>
                                <td>提供待遇标准</td>
                                <td><input class="in1" type="text" name="" value=""></td>
                            </tr>
                            <tr>
                                <td>其它招聘要求</td>
                                <td><input class="in1" type="text" name="" value=""></td>
                            </tr>
                            <tr>
                                <td>期望交付日期</td>
                                <td><input id="c3" type="text" name="" value="" disabled="disabled">
                                    <div class="calendar">
                                        <img style="cursor: pointer" align="absmiddle" src="${pageContext.request.contextPath}/img/calendar.png" onclick="J.calendar.get({id:'c3'});"/>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class="s_bottom">
                            <p style="font-size: 14px;color: #080808">审批人<span style="color: #1998ec;display: inline-block;margin-left: 20px;cursor: pointer">添加审批人</span></p>
                        </div>
                        <button type="submit">提交</button>
                    </div>
                </form>
                </div>
                <!--=======离岗=========-->
                <div id="twoPage" class="d2" style="display: none">
                    <span class="recruiting">离岗</span>
                    <form action="" method="post">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 130px">入职时间</td>
                                <td><input id="c4" type="text" name="" value="" disabled="disabled">
                                    <div class="calendar">
                                        <img style="cursor: pointer" align="absmiddle" src="${pageContext.request.contextPath}/img/calendar.png" onclick="J.calendar.get({id:'c4'});"/>
                                    </div></td>
                            </tr>
                            <tr>
                                <td>离职时间</td>
                                <td><input id="c5" type="text" name="" value="" disabled="disabled">
                                    <div class="calendar">
                                        <img style="cursor: pointer" align="absmiddle" src="${pageContext.request.contextPath}/img/calendar.png" onclick="J.calendar.get({id:'c5'});"/>
                                    </div></td>
                            </tr>
                            <tr>
                                <td>所属岗位</td>
                                <td><input style="width: 686px" type="text" name="" value=""></td>
                            </tr>
                            <tr>
                                <td>交接人员</td>
                                <td><input style="width: 686px" type="text" name="" value=""></td>
                            </tr>
                            <tr>
                                <td>劳动合同开始时间</td>
                                <td><input id="c6" type="text" name="" value="" disabled="disabled">
                                    <div class="calendar">
                                        <img style="cursor: pointer" align="absmiddle" src="${pageContext.request.contextPath}/img/calendar.png" onclick="J.calendar.get({id:'c6'});"/>
                                    </div></td>
                            </tr>
                            <tr>
                                <td>劳动合同结束时间</td>
                                <td><input id="c7" type="text" name="" value="" disabled="disabled">
                                    <div class="calendar">
                                        <img style="cursor: pointer" align="absmiddle" src="${pageContext.request.contextPath}/img/calendar.png" onclick="J.calendar.get({id:'c7'});"/>
                                    </div></td>
                            </tr>
                            <tr>
                                <td>离职原因</td>
                                <td>
                                    <textarea name=""></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>所需交接事项</td>
                                <td><textarea name=""></textarea></td>
                            </tr>
                        </table>
                        <div class="s_bottom">
                            <p style="font-size: 14px;color: #080808">审批人<span style="color: #1998ec;display: inline-block;margin-left: 20px;cursor: pointer">添加审批人</span></p>
                        </div>
                        <button type="submit">提交</button>
                    </form>
                </div>
                <!--=======出勤信息=========-->
                <div id="threePage" class="d3" style="display: none">
                    <span class="attendance">出勤</span>
                    <div class="att_date">
                        <input style="margin-left: 70px;margin-right: 30px" type="button" name="" value="每日">
                        <input type="button" name="" value="每月">
                        <span class="s1">日期</span>
                        <input id="a1" type="text" name="" value="" disabled="disabled">
                        <div class="calendar" style="display: inline-block;margin-left: 10px;">
                            <img style="cursor: pointer" align="absmiddle" src="${pageContext.request.contextPath}/img/calendar.png" onclick="J.calendar.get({id:'a1'});"/>
                        </div>
                        <span class="s1">部门/人员</span>
                        <input type="text" name="" value="">
                    </div>
                    <div class="att_content">
                        <span>每日</span>
                        <table border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <th>姓名</th>
                                <th>工号</th>
                                <th>职位</th>
                                <th>日期</th>
                                <th>打卡时间</th>
                                <th>结果</th>
                                <th>打卡时间</th>
                                <th>结果</th>
                            </tr>
                            <tr style="background-color: #f9f9f9">
                                <td>陈劲言</td>
                                <td>31220003</td>
                                <td>UI</td>
                                <td>2018-1-3</td>
                                <td>8:25</td>
                                <td>正常</td>
                                <td>5:30</td>
                                <td>正常</td>
                            </tr>
                            <tr>
                                <td>陈劲言</td>
                                <td>31220003</td>
                                <td>UI</td>
                                <td>2018-1-3</td>
                                <td>8:25</td>
                                <td>正常</td>
                                <td>5:30</td>
                                <td>正常</td>
                            </tr>
                            <tr style="background-color: #f9f9f9">
                                <td>崔文举</td>
                                <td>31220004</td>
                                <td>安卓开发</td>
                                <td>2018-1-3</td>
                                <td>8:25</td>
                                <td>正常</td>
                                <td>5:30</td>
                                <td>正常</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <!--=======员工通讯录=========-->
                <div id="fourPage" class="d4" style="display: none">
                    <div class="leftsidebar">
                        <ul>
                            <li><a class="inactive overall">全部</a>
                                <ul class="all">
                                    <li>1</li>
                                    <li>2</li>
                                    <li>3</li>
                                </ul>
                            </li>
                            <li><a class="inactive structure">组织结构</a>
                                <ul class="zxc">
                                    <li><a class="department">企业部</a>
                                        <ul>
                                            <li><button type="button">小C</button></li>
                                            <li><button type="button">小D</button></li>
                                        </ul>
                                    </li>
                                    <li><a class="department">投资部</a>
                                        <ul>
                                            <li><button type="button">小A</button></li>
                                            <li><button type="button">小B</button></li>
                                        </ul>
                                    </li>
                                    <li><a class="department">网络部</a>
                                        <ul>
                                            <li>
                                                <button type="button">劲言</button>
                                                <div class="d-btn">
                                                    <p class="p1">陈劲言</p>
                                                    <p class="p2">UI设计</p>
                                                </div>
                                            </li>
                                            <li>
                                                <button type="button">文举</button>
                                                <div class="d-btn">
                                                    <p class="p1">崔文举</p>
                                                    <p class="p2">安卓开发</p>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                    <div class="rightsidebar">
                        <table class="Verticalline">
                            <tr><td></td></tr>
                        </table>
                        <div class="rserrch">
                            <input id="in" type="text" name="" value="" placeholder="输入你想搜索人的姓名">
                            <button type="submit"></button>
                        </div>
                        <div class="information">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td colspan="2" style="height: 116px">
                                        <div class="ttitle">
                                            <span>劲言</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>姓名：</td>
                                    <td>陈劲言</td>
                                </tr>
                                <tr>
                                    <td>电话：</td>
                                    <td>12345678901</td>
                                </tr>
                                <tr>
                                    <td>微信：</td>
                                    <td>aaa123</td>
                                </tr>
                                <tr>
                                    <td>QQ：</td>
                                    <td>14785236</td>
                                </tr>
                                <tr>
                                    <td>部门：</td>
                                    <td>网络部</td>
                                </tr>
                                <tr>
                                    <td>职位：</td>
                                    <td>UI设计</td>
                                </tr>
                                <tr>
                                    <td>工号：</td>
                                    <td>312202</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>