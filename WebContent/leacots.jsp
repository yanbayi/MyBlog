<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.gugu.dao.LeaShowDao"  %>
<%@ page import="com.gugu.pojo.Ggcom"  %>
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
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <title>留言</title>
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
      <a href="leacots.jsp"  class="active">留言</a>
      <a href="album.jsp">相册</a>
      <a href="about.jsp">关于</a>
    </div>
    <ul class="layui-nav header-down-nav">
      <li class="layui-nav-item"><a href="index.jsp">文章</a></li>
      <li class="layui-nav-item"><a href="whisper.jsp">微语</a></li>
      <li class="layui-nav-item"><a href="leacots.jsp"  class="active">留言</a></li>
      <li class="layui-nav-item"><a href="album.jsp">相册</a></li>
      <li class="layui-nav-item"><a href="about.jsp">关于</a></li>
    </ul>
    <p class="welcome-text">
     ${userName} , 欢迎来到<span class="name">阎某</span>的博客~
    </p>
  </div>


  <div class="content whisper-content leacots-content">
    <div class="cont w1000">
      <div class="whisper-list">
        <div class="item-box">
          <div class="review-version">
              <div class="form-box">
                <img class="banner-img" src="res/img/liuyan.jpg">
                <div class="form">
                  <form class="layui-form" action="LeacotsServlet.do" method="POST">
                 	<div class="layui-form-item layui-form-text">
                      <div class="layui-input-block">
                      	<textarea name="content" id="content" placeholder="既然来了，就说几句" class="layui-textarea"></textarea>
                        <!-- <input type="text" id="content" name="content" placeholder="既然来了，就说几句" class="layui-textarea"/> -->
                      </div>
                    </div>
                    <div class="layui-form-item">
                      <div class="layui-input-block" style="text-align: right;">
                        <input class="layui-btn definite" type="submit" value="确定"/>
                      </div>
                    </div>
                  </form>
                </div>
                
                
                
              </div>
               <%
                    	ArrayList<Ggcom> coms =  new LeaShowDao().getcomInfo();
 					 	if (coms == null){
 					 		coms = new ArrayList();
 					 	}
 					 	int p = coms.size();
 				%>
              <div class="volume">
                全部留言 <span><%=coms.size() %></span>
              </div>
              <div class="list-cont">        
                <div class="cont">
                  
 					 <%
 					 for (Ggcom com:coms){
 						 
 					 %>
 					 <hr class="layui-bg-cyan">
 					 
 					 <div class="img">
                    	<img src="res/img/header.png" alt="">
                 	 </div>
                 	 <div class="text">
                   	 	<p class="tit"><span class="name" style="font-size:18px">#<%=p%>   <%=com.getUserName()%></span><span class="data"><%=com.getComDate()%></span></p>
                    	<p class="ct"><%=com.getComContent()%></p><br/>
                  	 </div>
     				<%
     				p--;
     				}%>
      
                </div>
              </div>
          </div>
        </div>
      </div>
      <div id="demo" style="text-align: center;"></div>
    </div>
  </div>


  <div class="footer-wrap" style="background:#1003">
    <div class="footer w1000">
     <p style="text-align:center">© 2018 gugu's blog</p>
     <p style="text-align:center">Welcome to visit gugu blog</p>
    </div>
  </div>
  <script type="text/javascript" src="res/layui/layui.js"></script>
  <script type="text/javascript">
  layui.config({
      base: '../res/js/util/'
    }).use(['element','laypage',],function(){
      element = layui.element,laypage = layui.laypage;
      laypage.render({
        elem: 'demo'
        ,count: 70 //数据总数，从服务端得到
      });
    })
  </script>
</body>
</html>