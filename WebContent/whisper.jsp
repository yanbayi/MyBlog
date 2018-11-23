<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.gugu.dao.WisShowDao"  %>
<%@ page import="com.gugu.dao.WisComShowDao"  %>
<%@ page import="com.gugu.pojo.GgNote"  %>
<%@ page import="com.gugu.pojo.GgNoteCom"  %>
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
  <title>whisper</title>
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
      <a href="whisper.jsp"  class="active">微语</a>
      <a href="leacots.jsp">留言</a>
      <a href="album.jsp">相册</a>
      <a href="about.jsp">关于</a>
    </div>
    <ul class="layui-nav header-down-nav">
      <li class="layui-nav-item"><a href="index.jsp">文章</a></li>
      <li class="layui-nav-item"><a href="whisper.jsp"  class="active">微语</a></li>
      <li class="layui-nav-item"><a href="leacots.jsp">留言</a></li>
      <li class="layui-nav-item"><a href="album.jsp">相册</a></li>
      <li class="layui-nav-item"><a href="about.jsp">关于</a></li>
    </ul>
    <p class="welcome-text">
      ${userName} , 欢迎来到<span class="name">阎某</span>的博客~
    </p>
  </div>


  <div class="content whisper-content">
    <div class="cont">
    
      <%
      ArrayList<GgNote> notes =  new WisShowDao().getcomInfo();
 	  if (notes == null){
 		 notes = new ArrayList();
 	  }
 	  int k = 0;
 	  int p = notes.size();
 	  %>
 	  <%
 		for (GgNote note:notes){	
 			
 	  %>
      <div class="whisper-list">
        <div class="item-box">
          <div class="item">
            <div class="whisper-title">
              <i class="layui-icon layui-icon-date"></i><!-- <span class="hour">12:25</span> --><span class="date"><%=note.getNoteDate()%></span>
            </div>
            
            <p class="text-cont">
             <%=note.getNoteContent()%>
            </p>
            <div class="img-box">
            
              <img src="<%=note.getNotePhoto()%>">
            </div>
            <div class="op-list">
              <p class="like"><i class="layui-icon layui-icon-praise"></i><span><%=note.getNoteLike()%></span></p> 
              <p class="edit"><i class="layui-icon layui-icon-reply-fill"></i><span><%=k%></span></p>
              <p class="off"><span>展开</span><i class="layui-icon layui-icon-down"></i></p>
            </div>
          </div>
          <div class="review-version layui-hide">
              <div class="form">
                <img src="res/img/header2.png">
                
                <form class="layui-form" action="">
                  <div class="layui-form-item layui-form-text">
                    <div class="layui-input-block">
                      <textarea name="desc" class="layui-textarea"></textarea>
                    </div>
                  </div>
                  <div class="layui-form-item">
                    <div class="layui-input-block" style="text-align: right;">
                      <button class="layui-btn definite">確定</button>
                    </div>
                  </div>
                </form>
                
                
              </div>
              <%
     			 ArrayList<GgNoteCom> coms =  new WisComShowDao().getcomInfo(note.getNoteId());
 	 			 if (coms == null){
 						coms = new ArrayList();
 				 }
 				 k = coms.size()+1;
 			  %>
 			  <%
 				 for (GgNoteCom com:coms){			 
 	 		  %>
              <div class="list-cont">

                <div class="cont">
                  <div class="img">
                    <img src="res/img/header.png" alt="">
                  </div>
                  <div class="text">
                    <p class="tit"><span class="name"><%=com.getNoteComName() %></span><span class="data"><%=com.getNoteComDate() %></span></p>
                    <p class="ct"><%=com.getNoteComContent()%></p>
                  </div>
                </div>
                <hr>

              </div>
              	<% 
      				}
 	  			%>
          </div>
        </div>
      </div>
      <% 
      	}
 	  %>
      <div id="demo" style="text-align: center;"></div>
    </div>
  </div>
  <script type="text/html" id="laytplCont">
    <div class="cont">
      <div class="img">
        <img src="{{d.avatar}}" alt="">
      </div>
      <div class="text">
        <p class="tit"><span class="name">{{d.name}}</span><span class="data">2018/06/06</span></p>
        <p class="ct">{{d.cont}}</p>
      </div>
    </div>
  </script>
  
  
  <div class="footer-wrap" style="background:#1003">
    <div class="footer w1000">
     <p style="text-align:center">© 2018 gugu's blog</p>
     <p style="text-align:center">Welcome to visit gugu blog</p>
    </div>
  </div>
  <script type="text/javascript" src="res/layui/layui.js"></script>
  <script type="text/javascript">
   layui.config({
      base: 'res/js/util/'
    }).use(['element','laypage','form','menu'],function(){
      element = layui.element,laypage = layui.laypage,form = layui.form,menu = layui.menu;
      laypage.render({
        elem: 'demo'
        ,count: 70 //数据总数，从服务端得到
      });
      menu.init();
      menu.off();
      menu.submit()
    })
  </script>
</body>
</html>