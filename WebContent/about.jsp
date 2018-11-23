<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.gugu.dao.AboutDao"  %>
<%@ page import="com.gugu.pojo.GgUser"  %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href=" <%=basePath%>">
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <title>关于</title>
  <link rel="stylesheet" type="text/css" href="res/layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="res/css/main.css">
</head>
 <body>
  <div class="header">
    <div class="menu-btn">
      <div class="menu"></div>
    </div>
    <h1 class="logo">
      <a href="index.jsp">
        <span>MYBLOG</span>
        <img src="res/img/logo.png">
      </a>
    </h1>
    <div class="nav">
      <a href="index.jsp">文章</a>
      <a href="whisper.jsp">微语</a>
      <a href="leacots.jsp">留言</a>
      <a href="album.jsp">相册</a>
      <a href="about.jsp" class="active">关于</a>
    </div>
    <ul class="layui-nav header-down-nav">
      <li class="layui-nav-item"><a href="index.jsp">文章</a></li>
      <li class="layui-nav-item"><a href="whisper.jsp">微语</a></li>
      <li class="layui-nav-item"><a href="leacots.jsp">留言</a></li>
      <li class="layui-nav-item"><a href="album.jsp">相册</a></li>
      <li class="layui-nav-item"><a href="about.jsp" class="active">关于</a></li>
    </ul>
    <p class="welcome-text">
     ${userName} , 欢迎来到<span class="name">阎某</span>的博客~
    </p>
  </div>
  
  <%
  	String userName = "pulaige";
  	GgUser user =  new AboutDao().getUserInfo(userName);
  %>
  
  
  

  <div class="about-content">
    <div class="w1000">
      <div class="item info">
        <div class="title">
          <h3>我的介绍</h3>
        </div>
        <div class="cont">
          <img src="res/img/xc_img1.jpg">
          <div class="per-info">
            <p>
              <span class="name"><%=user.getUserName() %></span><br />
              
              <span class="age"><%=user.getUserAge() %></span><br />
              
              <span class="Career"><%=user.getUserSex() %></span><br />
              
              <span class="interest"><%=user.getUserHobby() %></span>
              
            </p>
          </div>
        </div>
      </div>
      
      <div class="item contact">
        <div class="title">
          <h3>联系方式</h3>
        </div>
        <div class="cont">
          <img src="res/img/erweima.jpg">
          <div class="text">
            <p class="WeChat">微信：<span><%=user.getUserWeChat() %></span></p>
            <p class="qq">qq：<span><%=user.getUserQq() %></span></p>
            <p class="iphone">电话：<span><%=user.getUserTel() %></span></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <script type="text/javascript" src="res/layui/layui.js"></script>
  <script type="text/javascript">
    layui.config({
      base: 'res/js/util/'
    }).use(['element','laypage','form','layer','menu'],function(){
      element = layui.element,laypage = layui.laypage,form = layui.form,layer = layui.layer,menu = layui.menu;
      menu.init();
    })
  </script>
</body>
</html>