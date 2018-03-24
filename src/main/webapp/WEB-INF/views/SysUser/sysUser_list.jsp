<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>楼宇用户管理 - 办公大楼智能设备管理后台</title>
	<!-- 脚本 -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript"
			src="${pageContext.request.contextPath}/easyui1.4/jquery.min.js"></script>
	<script type="text/javascript"
			src="${pageContext.request.contextPath}/easyui1.4/jquery.easyui.min.js"></script>
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/easyui1.4/themes/default/easyui.css" />
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/easyui1.4/themes/icon.css" />
</head>
<script>
    $(function() {
        $('#data').datagrid({
            url : "${pageContext.request.contextPath}/SysUser/getList",
            columns : [ [ {
                field : 'loginName',
                title : '登录名',
                width : "20%"
            }, {
                field : 'name',
                title : '真实姓名',
                width : "20%"
            }, {
                field : 'type',
                title : '账号类型',
                width : "20%",
				formatter : function (value,row,index) {
					if(value == 1){
                        return "系统用户"
                    }
                    if ( value == 2){
                        return "大楼管理员"
                    }
                }
            }, {
                field : 'tel',
                title : '手机号',
                width : "20%"
            }, {
                field : 'email',
                title : '邮箱',
                width : "20%"
            }, {
                field : 'id',
                title : '操作',
                width : 300,
				hidden:true,
                formatter : function(value,row,index) {
                    var dele='<a >删除</a>';
                    return dele;
                }
            } ]],
            nowrap:false,
            pagination : true,
            singleSelect : true,
        });

        $('#newBtn').click(

            function() {
                $('#userWin').window({
                    title : '新增用户',
                    left : '400px',
                    top : '10px',
                    width : 500,
                    height : 500,
                    modal:true,
                });
                $('#userWin').window('open');
                $('#userWin').form('clear');
            });
		/* 新增用户 */
        $('#userEditForm').form({
            url : "${pageContext.request.contextPath}/SysUser/insertUser",
            onSubmit : function() {
                return $('#userEditForm').form('validate');
            },
            success : function(data) {
                console.log(data)
                if(data == 1){
                    $('#userWin').window('close');
                    $('#data').datagrid('reload');
                    $.messager.alert('提示', '添加成功');
				}else if (data == 2){
                    $.messager.alert('提示', '手机号重复');
                    $('#userWin').window('close');
				}else if (data == 3){
                    $.messager.alert('提示', '用户名已存在');
                    $('#userWin').window('close');
				}else {
                    $.messager.alert('提示', '添加失败');
                    $('#userWin').window('close');
				}

            }
        });
        /* 删除用户 */
        $('#editBtn').click(function() {
            $("#userEditForm").form('reset');
            var user = $('#data').datagrid('getSelected');
            if (!!user) {
                $.messager.confirm('删除', '确定删除用户吗',function(r){
                    if (r){
                        $.getJSON('${pageContext.request.contextPath}/SysUser/sysUserDelete', {
                            'id' : user.id
                        }, function(data) {
                            if(data != 0){
                                $('#data').datagrid('reload');
                                $.messager.alert('提示', '删除成功',"info");
                            }else {
                                $.messager.alert('提示', '删除失败 ,检测到有未解绑大楼',"error");
                            }
                        });
					}
				});

            } else {
                $.messager.alert('提示', '请选择用户');
            }
        });
        //重新加载
        $('#doClientUserSearch').click(function() {
//            alert("tankuang")
           $('#data').datagrid('load', {
               loginName : $("#searchName").val(),
                tel : $("#searchtel").val()
            });
        });


		/* 绑定大楼 */
        $('#BuildingtoUser').click(function() {
            var user = $('#data').datagrid('getSelected');
          if(user.type == 1){
              alert("系统管理员无法绑定");
              $('#delectDevWin').window('close');
              return ;
		  }
            console.log(user);
            if (!!user) {
                $('#delectDevWin').window({
                    title : '大楼列表',
                    left : '400px',
                    top : '10px',
                    width : 500,
                    height : 500,
                    modal:true,
                });
                $('#submitDevToRoomResult').linkbutton({
                    width : '20%',
					height:30
                });
                $('#delectDevWin').window('open');
                $('#DevRoomTree').tree({
                    url : '${pageContext.request.contextPath}/builder/getBuildingTree',
//                        method : 'POST',
                    queryParams : {
                        id : user.id
                    },
                    checkbox : true,
                });
            } else {
                $.messager.alert('提示', '请选择用户');
            }

        });
		/*  提交绑定大楼  */
        $('#submitDevToRoomResult').click(function() {
          /*  var nodes = $('#DevRoomTree').tree('getChecked');*/
            var nodes = $('#DevRoomTree').tree('getChecked');
            var user = $('#data').datagrid('getSelected');
            var pipleList = '';
            $.each(nodes, function(i, t) {
                pipleList = pipleList + t.id + ','
            });
            console.log("building tree result"+pipleList);
            console.log("user result"+user.id);
			/*  大楼管理员绑定大楼  */
            $.get("${pageContext.request.contextPath}/builder/InsertBuildingToUser", {
                userid:user.id,
                buildid : pipleList
            }, function(result) {
                if (result != 0){
                    $('#delectDevWin').window('close');
                    $.messager.alert('提示', '操作成功',"info");
				}else{
                    $.messager.alert('提示', '操作失败,该用户为系统管理员',"error");
                    $('#delectDevWin').window('close');
				}

            }, "text");
        });



});
</script>

<body>
<!-- 1.2 正文 -->
<div class="grid-x  grid-padding-x">
	<!-- 1.2.1 页面内容  -->
	<div id="body-container"
		 class="cell medium-9 large-10 medium-order-2 large-order-2">

		<!-- 1.2.1.2 标题 -->
		<div class="datitle">账户管理</div>
		<div id="userSearchForm" class="userSearch">
			<span>登录名：</span><input id="searchName" name="loginName" />
			<span>手机号：</span><input id="searchtel" name="tel" />
			<button id="doClientUserSearch" class="doClientUserSearch easyui-linkbutton hover s">搜索</button>
		</div>
		<div class="top">
			<button id="newBtn" class="easyui-linkbutton  hover"
					data-options="iconCls:'icon-add'">新增</button>
			&nbsp;
			<button id="editBtn" class="easyui-linkbutton  hover"
					data-options="iconCls:'icon-remove'">删除</button>
			&nbsp;
			<button id="BuildingtoUser" class="easyui-linkbutton  hover"
					data-options="iconCls:'icon-save'">绑定大楼</button>
		</div>

		<!-- 1.2.1.3 正文表格 -->
		<table id="data" class="easyui-datagrid" style="height: 364px;"  width="100%" >
		</table>


		<%--绑定大楼--%>
		<div id="delectDevWin" class="easyui-window" closed="true">
			<div class="easyui-layout" fit="true">
				<div id="DevRoomTree" class="easyui-tree"
					 data-options="region:'north',height:'90%'"></div>
				<div style="text-align: center;"
					 data-options="align:'center',region:'center'">
					<div id="submitDevToRoomResult" class="easyui-linkbutton hover"
						 data-options="iconCls:'icon-ok'">绑定</div>
				</div>
			</div>
		</div>
		<%-- 添加用户 --%>
		<div id="userWin" class="easyui-window" style="width: 400px" closed="true">
			<div style="padding: 10px">
				<form id="userEditForm" method="post" title="添加用户" style="margin-top:50px;">
					<table style="font-size: 14px" class="tableadd">
						<tr>
							<td align="right" width="200px">登录名:</td>
							<td width="200px">
								<input class="easyui-textbox" style="width: 100%;height:30px;"
									   type="text" id="loginName" name="loginName" missingMessage="用户名必须填写"  data-options="required:true"></input></td>

							<td style="color:red">*</td>
						</tr>
						<tr>
							<td align="right" width="200px">真实姓名:</td>
							<td width="200px">
								<input class="easyui-textbox" style="width: 100%;height:30px;"
									   type="text" id="name" name="name" missingMessage="请填写真实姓名"  data-options="required:true"></input></td>
							<td style="color:red">*</td>
						</tr>
						<tr>
							<td align="right" width="200px">密码:</td>
							<td width="200px">
								<input class="easyui-textbox" style="width: 100%;height:30px;"
									   type="password" id="password" name="password" missingMessage="请输入密码"  data-options="validType:'pwdLength[8,12]',required:true"></input></td>
							<script>
                                $.extend($.fn.validatebox.defaults.rules, {
                                    equals: {
                                        validator: function(value,param){
                                            return value == $(param[0]).val();
                                        },
                                        message: 'Field do not match.'
                                    },
                                    pwdLength: {
                                        validator: function(value, param){
                                            //正则表达式需要动态传递参数，必须采用正则对象即构造器方式，传入拼接了动态参数的字符串的方式
                                            var re =new RegExp("^[a-zA-Z0-9]{" + param[0]+ "," + param[1] + "}$","g");
                                            return re.test(value);
                                        },
                                        //提示信息中也需要动态添加参数，此时获取param中的参数方式为{0}、{1}，分别代表param[0]，param[1]
                                        message: "密码长度要求为{0}-{1}位字母或数字!,建议字母加数字组合"
                                    }
                                });
                              /*  var pass = /^[a-zA-Z]\w{5,17}$/;
                                var input2 = $('#password').val();
                                if(!pass.test(input2)){
                                    $.messager.alert('提示', '密码长度要在6~18位之间,且必须以字母开头！',"info");
                                }*/
							</script>
							<td style="color:red">*</td>
						</tr>
						<tr>
							<td align="right" width="200px">手机号:</td>
							<td><input class="easyui-textbox" style="width: 100%;height:30px;"
									   type="text" id="tel" name="tel" missingMessage="请输入手机号"  validType="onlyNum"   data-options="required:true" ></input></td>
							<script>
                                $.extend($.fn.validatebox.defaults.rules, {
                                    equals: {
                                        validator: function(value,param){
                                            return value == $(param[0]).val();
                                        },
                                        message: 'Field do not match.'
                                    },
                                    onlyNum:{
                                        validator:function(value,param){
//											手机号验证
                                            var reg = /^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/;
                                            return reg.test(value);

                                        },
                                        message:  '请正确输入手机号'
                                    }
                                });
							</script>
							<td style="color:red">*</td>
						</tr>
						<tr>
							<td align="right" width="200px">邮箱:</td>
							<td><input class="easyui-textbox" style="width: 100%;height:30px;"
									   type="email" id="email" name="email" validtype="zipcode"  required="true" missingMessage="不能为空" invalidMessage="邮箱格式不正确" ></input></td>
							<script>
                                $.extend($.fn.validatebox.defaults.rules, {

                                    zipcode:{
                                        validator:function(value,param){
//											手机号验证
                                            var reg = /^[A-Za-zd0-9_-]+([-_.][A-Za-zd0-9_-]+)*@([A-Za-zd0-9_-]+[-.])+[A-Za-zd]{2,5}$/;
//                                            var reg = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
                                            return reg.test(value);

                                        },
                                        message:  '请输入正确的邮箱'
                                    }
                                });
							</script>
							<td style="color:red">*</td>
						</tr>
						<tr>
							<td align="right" width="200px">账号类型:</td>
							<td >
								<select name="type" required style="width: 100%;height:30px;">
									<option value="1">系统用户</option>
									<option selected = "selected" value="2">大楼管理员</option>
								</select>
							</td>
						</tr>
					</table>
					<div style="text-align: center; padding: 5px" style="with:200px">
						<input type="submit" value="提交" class="easyui-linkbutton submits"
							   data-options="iconCls:'icon-ok'"/>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>

</html>
