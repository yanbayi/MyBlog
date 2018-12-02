<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.gugu.dao.AboutDao"  %>
<%@ page import="com.gugu.pojo.GgUser"  %>
<%@ page import="java.util.ArrayList"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
<base href=" <%=basePath%>">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>Admin</title>
  <script src="http://cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
  <script src="layer/layer.js"></script>
  <link rel="stylesheet" href="res/layui/css/layui.css"   media="all">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">gugu-后台管理</div>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="res/img/header2.png" class="layui-nav-img">
          阎某
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree">
        
        <li class="layui-nav-item">
          <a href="javascript:;">微语</a>
          <dl class="layui-nav-child">
            <dd><a href="page/whisper/write.jsp">写微语</a></dd>
            <dd><a href="page/whisper/manage.jsp">微语管理</a></dd>
            <dd><a href="page/whisper/comment.jsp">评论管理</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">留言</a>
          <dl class="layui-nav-child">
            <dd><a href=" page/leaDel.jsp">留言管理</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item  layui-nav-itemed">
          <a href="javascript:;">关于</a>
          <dl class="layui-nav-child">
            <dd><a href="  page/about.jsp">关于管理</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="page/user.jsp">用户管理</a>
        </li>
      </ul>
    </div>
  </div>
	<div class="layui-body" style="padding: 15px;">
    <%
     GgUser user =  new AboutDao().getUserInfo("pulaige");
 	%>
 
       	<div class="layui-form">
  			<table class="layui-table">
  			<colgroup>
     			<col width="90">
     			<col width="90">
     			<col width="90">
      			<col>
      			<col width="90">
      			
    		</colgroup>
    		<thead>
      		<tr>
      			<th>昵称</th>
      			<th>年龄</th>
       			<th>性别</th>
        		<th>个性签名</th>
        		<th>修改</th>
      		</tr> 
    		</thead>
    		<tbody>				
 				<tr>
 					<td><%=user.getUserName() %></td>
        			<td><%=user.getUserAge() %></td>
        			<td><%=user.getUserSex() %></td>
        			<td><%=user.getUserHobby() %></td>
        			<td><button data-method="notice" class="layui-btn" id="parentIframe">修改</button></td>
      			</tr>
     		</tbody>
     		</table>
     	</div> 
	</div>
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © gugu's blog - 2018
  </div>

</div>
<script src="res/layui/layui.js"></script>
<script>
$('#parentIframe').on('click', function(){
	layer.open({
	      type: 2,
	      title: '修改',
	      maxmin: false,
	      shadeClose: true, //点击遮罩关闭层
	      area : ['300px' , '300px'],
	      content: 'page/abchange.jsp'
	    });
  });
</script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>