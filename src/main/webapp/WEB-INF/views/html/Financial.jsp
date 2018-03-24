<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8" />
    <title>泛贝OA系统财务</title>
    <script rel="script" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/lhgcore.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/lhgcalendar.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/financial.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/financial.css"></link>
</head>
<body>
<div class="head">
    <div class="head_content">
        <div class="head_left"></div>
        <div class="head_right">
            <ul class="nav_title">
                <li><a href="HomePage.HomePage.jsp">首页</a></li>
                <li><a href="Administrative.Administrative.jsp">行政</a></li>
                <li><a href="Personnel.Personnel.jsp">人事</a></li>
                <li><a href="Financial.Financial.jsp" style="color: #ffffff">财务</a></li>
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
                <li id="l1" class="one"><a href="#" style="color: #1a87ec">付款申请</a></li>
                <li id="l2"><a href="#">费用报销申请</a></li>
                <li><a href="#" class="inactive">采购</a>
                    <ul>
                        <li id="l3"><a href="#" style="line-height: 48px"><span>采购清单</span></a></li>
                        <hr style="background-color: #ffffff;height: 1px;border: none"/>
                        <li id="l4"><a href="#" style="line-height: 48px"><span>采购申请</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="center_right">
        <!--==============付款申请=======================-->
        <div id="onePage" class="d1">
            <div class="payment">
                <span class="content">审批内容</span>
                <span class="edit">编辑</span>
                <div class="theme">
                    <div class="theme_one">
                        <span>主题<input class="zt" type="text" value="付款申请"></span>
                    </div>
                </div>
                <div class="payment_table">
                    <form action="#" method="post">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 109px;background-color: #EEEEEE"><span>申请人</span></td>
                            <td style="width: 192px"><input type="text" name="" value=""></td>
                            <td style="width: 107px;background-color: #EEEEEE"><span>申请部门</span></td>
                            <td style="width: 173px"><input type="text" name="" value=""></td>
                            <td style="width: 107px;background-color: #EEEEEE"><span>申请时间</span></td>
                            <td style="width: 192px"><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td style="background-color: #EEEEEE"><span>收款单位</span></td>
                            <td colspan="3"><input type="text" name="" value=""></td>
                            <td style="background-color: #EEEEEE"><span>单位负责人</span></td>
                            <td><input type="text" name="" value=""></td>

                        </tr>
                        <tr>
                            <td style="background-color: #EEEEEE"><span>账单</span></td>
                            <td colspan="5"><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td style="background-color: #EEEEEE"><span>开户行</span></td>
                            <td colspan="5"><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td style="background-color: #EEEEEE"><span>金额</span></td>
                            <td colspan="3"><input type="text" name="" value=""></td>
                            <td style="background-color: #EEEEEE"><span>付款方式</span></td>
                            <td><input class="money" type="radio" name="" value="">&nbsp;&nbsp;现金
                                <input class="transfer" type="radio" name="" value="">&nbsp;&nbsp;转账</td>
                        </tr>
                        <tr>
                            <td rowspan="2" style="background-color: #EEEEEE"><span>付款说明</span></td>
                            <td rowspan="2" colspan="5"><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                        </tr>
                        <tr>
                            <td style="background-color: #EEEEEE"><span>部门负责人</span></td>
                            <td colspan="5"><font style="margin-left: 116px">会计</font><input style="width: 150px" type="text" class="t_lower" name="" value="">
                                出纳<input style="width: 150px" type="text" class="t_lower" name="" value="">
                                领款人<input style="width: 150px" type="text" class="t_lower" name="" value=""></td>
                        </tr>
                        <tr>
                            <td colspan="6"><button type="submit">保存</button></td>
                        </tr>

                    </table>
                    </form>
                </div>
            </div>
        </div>
        <!--==============费用报销申请=======================-->
        <div id="twoPage" class="d2" style="display: none">
            <div class="reimburse">
                <span class="content">审批内容</span>
                <span class="edit1">编辑</span>
                <div class="title">
                    <span>主题<input class="title_input" type="text" value="费用报销申请"></span>
                </div>
                <div class="table">
                    <form action="#" method="post">
                        <table border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td colspan="2" style="width: 246px;background-color: #EEEEEE"><span>费用项目</span></td>
                                <td style="width: 124px;background-color: #EEEEEE"><span>类别</span></td>
                                <td style="width: 119px;background-color: #EEEEEE"><span>金额</span></td>
                                <td style="width: 89px"></td>
                                <td style="width: 107px;background-color: #EEEEEE"><span>申请时间</span></td>
                                <td style="width: 192px"><input type="text" name="" value=""></td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="text" name="" value=""></td>
                                <td><input type="text" name="" value=""></td>
                                <td><input type="text" name="" value=""></td>
                                <td></td>
                                <td style="background-color: #EEEEEE"><span>单位负责人</span></td>
                                <td><input type="text" name="" value=""></td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="text" name="" value=""></td>
                                <td><input type="text" name="" value=""></td>
                                <td><input type="text" name="" value=""></td>
                                <td colspan="3"><input type="text" name="" value=""></td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="text" name="" value=""></td>
                                <td><input type="text" name="" value=""></td>
                                <td><input type="text" name="" value=""></td>
                                <td colspan="3"><input type="text" name="" value=""></td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="text" name="" value=""></td>
                                <td><input type="text" name="" value=""></td>
                                <td><input type="text" name="" value=""></td>
                                <td></td>
                                <td style="background-color: #EEEEEE">付款方式</td>
                                <td>
                                    <input class="money" type="radio" name="money" value="" checked="checked">&nbsp;&nbsp;现金
                                    <input class="transfer" type="radio" name="money" value="">&nbsp;&nbsp;转账
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="text" name="" value=""></td>
                                <td><input type="text" name="" value=""></td>
                                <td><input type="text" name="" value=""></td>
                                <td colspan="3"><input type="text" name="" value=""></td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="text" name="" value=""></td>
                                <td><input type="text" name="" value=""></td>
                                <td><input type="text" name="" value=""></td>
                                <td colspan="3"><input type="text" name="" value=""></td>
                            </tr>
                            <tr>
                                <td style="width: 108px;background-color: #EEEEEE"><span>部门负责人</span></td>
                                <td style="width: 138px"><input type="text" name="" value=""></td>
                                <td><span>会计<input style="width: 60px" type="text" name="" value=""></span></td>
                                <td><span>出纳<input style="width: 60px" type="text" name="" value=""></span></td>
                                <td colspan="3"><span>领款人<input style="width: 200px" type="text" name="" value=""></span></td>
                            </tr>
                            <tr>
                                <td colspan="7"><button type="submit">保存</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>

        <!--==============采购清单=======================-->
        <div id="threePage" class="d3" style="display: none">
            <div class="shopping-list">
                <div class="left-title">
                    <span>采购清单</span>
                </div>
                <div class="shopping-content">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 110px"><span>店铺名称</span></td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td><span>区域</span></td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td><span>采购类型</span></td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td><span>申请事由</span></td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td><span>预计采购时间</span></td>
                            <td><input id="c3" type="text" name="" value="" disabled="disabled">
                                <div class="calendar">
                                    <img style="cursor: pointer" align="absmiddle" src="${pageContext.request.contextPath}img/calendar.png" onclick="J.calendar.get({id:'c3'});"/>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="purchase-requisition">
                    <table border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td class="shopping-title">采购(<span>1</span>)</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>名称</td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td>规格</td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td>单价(元)</td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td>数量</td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td>总价</td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                    </table>
                    <p>如需采购多种产品，请点击增加明细</p>
                    <button class="add-btn" type="button">增加明细</button>
                </div>
                <div class="shopping-bottom">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 110px">总价合计(元)</td>
                            <td><input type="text" name="" value="" placeholder=""></td>
                        </tr>
                        <tr>
                            <td>备注</td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td>图片</td>
                            <td><a>添加图片</a>&nbsp;&nbsp;<span>( 最多选择9张 )</span></td>
                        </tr>
                        <tr>
                            <td>审批人</td>
                            <td><a onclick="javascript:OpenDiv();" class="approval">添加审批人</a></td>
                        </tr>
                        <tr>
                            <td>抄送人</td>
                            <td>
                                <p>(审批通过后，通知抄送人)</p><br/>
                                <a onclick="javascript:OpenDiv();" class="approval">添加抄送人</a>
                            </td>
                        </tr>
                    </table>
                    <div id="div1" class="div1">
                        <div class="search">
                            <form action="" method="">
                                <div class="kuang"><input type="text" name="" value="" placeholder="搜索你要查找人的姓名"></div>
                                <div class="btn"><input class="submit" type="submit" name="" value=""/></div>
                            </form>
                        </div>
                        <div class="list">
                            <div class="left-list">

                            </div>
                            <!--<table style="height:247px;border-color:#e5e5e5;border-left-style:solid;border-width:1px;margin-left: 50%"><tr><td valign="top"></td></tr></table>-->
                            <div class="right-list">

                            </div>
                        </div>
                        <p>已选(&nbsp;<span class="people-number">0</span>&nbsp;)人</p>
                        <button type="submit" onclick="javascript:CloseDiv()">确认</button>
                    </div>
                    <button type="submit">提交</button>
                </div>
            </div>
        </div>
        <!--==============采购申请=======================-->
        <div id="fourPage" class="d4" style="display: none">
            <div class="shopping-list">
                <div class="left-title">
                    <span>采购申请</span>
                </div>
                <div class="shopping-content">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 110px"><span>申请事由</span></td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td><span>采购类型</span></td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td><span>期望交付日期</span></td>
                            <td><input id="c4" type="text" name="" value="" disabled="disabled">
                                <div class="calendar">
                                    <img style="cursor: pointer" align="absmiddle" src="${pageContext.request.contextPath}img/calendar.png" onclick="J.calendar.get({id:'c4'});"/>
                                </div>
                                <!--<a href=""><img src="img/calendar.png" style="vertical-align: middle"></a>-->
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="purchase-requisition">
                    <table border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td class="shopping-title">采购明细(<span>1</span>)</td>
                            <td><span class="shopping-delete">删除</span></td>
                        </tr>
                        <tr>
                            <td>名称</td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td>规格</td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td>单价(元)</td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td>数量</td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                        <tr>
                            <td>总价</td>
                            <td><input type="text" name="" value=""></td>
                        </tr>
                    </table>
                    <p>如需采购多种产品，请点击增加明细</p>
                    <button class="add-btn" type="button">增加明细</button>
                </div>
                <div class="shopping-bottom">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 110px;color: #080808">总价格</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td style="width: 110px">支付方式</td>
                            <td>
                                <select>
                                    <option value="">请选择</option>
                                    <option value="">现金</option>
                                    <option value="">汇款</option>
                                    <option value="">支付宝</option>
                                    <option value="">微信</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>备注</td>
                            <td><input class="shopping-note" type="text" name="" value="" placeholder="请输入"></td>
                        </tr>
                        <tr>
                            <td>图片</td>
                            <td><a>添加图片</a>&nbsp;&nbsp;<span>( 最多选择9张 )</span></td>
                        </tr>
                        <tr>
                            <td>审批人</td>
                            <td><a onclick="javascript:OpenDiv();" class="approval">添加审批人</a></td>
                        </tr>
                        <tr>
                            <td>抄送人</td>
                            <td>
                                <p>(审批通过后，通知抄送人)</p><br/>
                                <a onclick="javascript:OpenDiv();" class="approval">添加抄送人</a>
                            </td>
                        </tr>
                    </table>
                    <!--弹出的div-->
                    <div id="div2" class="div1">
                        <div class="search">
                            <form action="" method="">
                                <div class="kuang"><input type="text" name="" value="" placeholder="搜索你要查找人的姓名"></div>
                                <div class="btn"><input class="submit" type="submit" name="" value=""/></div>
                            </form>
                        </div>
                        <div class="list">
                            <div class="left-list">
                                <ul>
                                    <li><a class="inactive">企业部</a>
                                        <ul >
                                            <li><input type="checkbox" id="a"><label for="a"></label>A</li>
                                            <li><input type="checkbox">B</li>
                                            <li><input type="checkbox">C</li>
                                        </ul>
                                    </li>
                                    <li><a class="inactive">投资部</a>
                                        <ul>
                                            <li><input type="checkbox">D</li>
                                            <li><input type="checkbox">E</li>
                                            <li><input type="checkbox">F</li>
                                        </ul>
                                    </li>
                                    <li><a class="inactive">网络部</a>
                                        <ul>
                                            <li><input type="checkbox">G</li>
                                            <li><input type="checkbox">H</li>
                                            <li><input type="checkbox">I</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="right-list">
                                <ul class="rl1">
                                    <li><a class="inactive">全部</a>
                                        <ul>
                                            <li><input type="checkbox">员工1</li>
                                            <li><input type="checkbox">员工2</li>
                                            <li><input type="checkbox">员工3</li>
                                            <li><input type="checkbox">员工4</li>
                                            <li><input type="checkbox">员工5</li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <p>已选(&nbsp;<span class="people-number">0</span>&nbsp;)人</p>
                        <button type="submit" onclick="javascript:CloseDiv()">确认</button>
                    </div>
                    <button type="submit" class="sub">提交</button>
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