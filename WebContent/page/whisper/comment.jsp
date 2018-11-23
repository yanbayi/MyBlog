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
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>Admin</title>
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
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a  href="javascript:;">文章</a>
          <dl class="layui-nav-child">
            <dd><a href=" ">写文章</a></dd>
            <dd><a href=" ">文章管理</a></dd>
            <dd><a href=" ">评论管理</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">微语</a>
          <dl class="layui-nav-child">
            <dd><a href="page/whisper/write.jsp">写微语</a></dd>
            <dd><a href="page/whisper/manage.jsp">微语管理</a></dd>
            <dd><a href="page/whisper/comment.jsp">评论管理</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">留言</a>
          <dl class="layui-nav-child">
            <dd><a href=" ">留言管理</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">相册</a>
          <dl class="layui-nav-child">
            <dd><a href=" ">相册管理</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">关于</a>
          <dl class="layui-nav-child">
            <dd><a href=" ">关于管理</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">用户管理</a>
        </li>
      </ul>
    </div>
  </div>
  
  
  
  
  
  <div class="layui-body" style="padding: 15px;">
    <!-- 内容主体区域 -->
    
    
    
    
    
     <%
      ArrayList<GgNote> notes =  new WisShowDao().getcomInfo();
 	  if (notes == null){
 		 notes = new ArrayList();
 	  }
 	  %>
 	  
 	  <div class="layui-form">
  		<table class="layui-table">
  			<colgroup>
     			<col width="90">
      			<col width="90">
      			<col >
      			<col width="200">
      			<col width="90">
      			
    		</colgroup>
    		<thead>
      		<tr>
       			<th>微语ID</th>
       			<th>评论人</th>
        		<th>内容</th>
        		<th>时间</th>
        		<th>删除</th>
      		</tr> 
    		</thead>
    		<tbody>
 	  <%
 		for (GgNote note:notes){	
 			
 	  %>
 	  
 	  
              <%
     			 ArrayList<GgNoteCom> coms =  new WisComShowDao().getcomInfo(note.getNoteId());
 	 			 if (coms == null){
 						coms = new ArrayList();
 				 }
 			  %>
 			  <%
 				 for (GgNoteCom com:coms){			 
 	 		  %>
              
              	<tr>
 					<td><%=note.getNoteId()%></td>
        			<td><%=com.getNoteComName() %></td>
        			<td><%=com.getNoteComContent()%></td>
        			<td><%=com.getNoteComDate() %></td>
        			<td><button class="layui-btn"  onclick="javascrtpt:window.location.href='WhiDelComServlet?noteComId=<%=com.getNoteComId() %>'"  >删除</button></td>
      			</tr>	               
              	<% 
      				}
 	  			%>

      <% 
      	}
 	  %>
    </tbody>
    </table>
   
  </div>






  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © gugu's blog - 2018
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