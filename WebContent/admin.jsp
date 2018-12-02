<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>Admin</title>
  <link rel="stylesheet" href="res/layui/css/layui.css">
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
            <dd><a href="page/leaDel.jsp">留言管理</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">关于</a>
          <dl class="layui-nav-child">
            <dd><a href="page/about.jsp">关于管理</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="page/user.jsp">用户管理</a>
        </li>
      </ul>
    </div>
  </div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">欢迎来到 咕咕后台管理</div>
  </div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © gugu's blog - 
  </div>
</div>
<script src="res/layui/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>
</body>
</html>