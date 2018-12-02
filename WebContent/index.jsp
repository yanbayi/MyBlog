<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <title>咕咕blog</title>
  <link rel="stylesheet" type="text/css" href="res/layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="res/css/main.css">
  
  <script src="http://cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
  <script src="layer/layer.js"></script>
  
  
  
</head>
<body>
  <body>
  <div class="header">
    <div class="menu-btn">
      <div class="menu"></div>
    </div>
    <h1 class="logo">
      <a href="index.jsp">
        <img src="res/img/logo.png">
      </a>
    </h1>
    <div class="nav">
      <a href="index.jsp" class="active">文章</a>
      <a href="whisper.jsp">微语</a>
      <a href="leacots.jsp">留言</a>
      <a href="about.jsp">关于</a>
    </div>
    <ul class="layui-nav header-down-nav">
      <li class="layui-nav-item"><a href="index.html" class="active">文章</a></li>
      <li class="layui-nav-item"><a href="whisper.html">微语</a></li>
      <li class="layui-nav-item"><a href="leacots.html">留言</a></li>
      <li class="layui-nav-item"><a href="about.jsp">关于</a></li>
    </ul>
    <p class="welcome-text">
    	<c:if test="${empty userName}">
    		<a class="layui-nav-item" href="login.jsp">登入</a>
		</c:if>
      ${userName} , 欢迎来到<span class="name">阎某</span>的博客~  <a class="layui-nav-item" href="admin.jsp">管理</a>  
    </p>
  </div>
  <div class="banner">
    <div class="cont w1000">
      <div class="title">
        <h4>GUGU</h4>
        <br />
        <h3>BLOG</h3>
        <h4>I fight for a bright tomorrow.</h4>
      </div>
      <!-- <div class="amount">
        <p><span class="text">访问量</span><span class="access">1000</span></p>
        <p><span class="text">日志</span><span class="daily-record">1000</span></p>
      </div> -->
    </div>
  </div>

  <div class="content">
    <div class="cont w1000">
      <!-- <div class="title">
        <span class="layui-breadcrumb" lay-separator="|">
          <a href="javascript:;" class="active">设计文章</a>
          <a href="javascript:;">前端文章</a>
          <a href="javascript:;">旅游杂记</a>
        </span>
      </div> -->
  
      <div class="list-item">
        <div class="item">
          <div class="layui-fluid">
            <div class="layui-row">
              <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">
                <div class="img"><img src="res/img/sy_img1.jpg" alt=""></div>
              </div>
              <input type="hidden" name="textid" id="textid" value="1"/>
              <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">
                <div class="item-cont">
                  <h3>大雁塔游记<button class="layui-btn layui-btn-danger new-icon">new</button></h3>
                  <h5>游记</h5>
                  <p>大雁塔美丽极了！
大雁塔共分七层，每层都装有四个小巧而精致的小窗户。一层有个禅房，禅房里放有佛经、佛像，其中有如来佛像和观世音菩萨的佛像等。</p>
                  <a style="cursor: pointer;"  id="parentIframe" class="go-icon" ></a>
                </div>
            </div>
            </div>
           </div>
        </div>
        
        <div class="item">
          <div class="layui-fluid">
            <div class="layui-row">
              <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">
                <div class="img"><img src="res/img/sy_img2.jpg" alt=""></div>
              </div>
              <input type="hidden" name="textid" id="textid" value="1"/>
              <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">
                <div class="item-cont">
                  <h3>共产主义小组的建立<button class="layui-btn layui-btn-danger new-icon">new</button></h3>
                  <h5>历史</h5>
                  <p>中国共产党的最早组织是在上海首先建立的。1920年8月，上海共产党早期组织正式成立。参加者有陈独秀、李汉俊、李达、陈望道、俞秀松等，陈独秀任书记。
               </p>
                  <a style="cursor: pointer;"  id="parentIframe2" class="go-icon" ></a>
                </div>
            </div>
            </div>
           </div>
        </div>
        
        <div class="item">
          <div class="layui-fluid">
            <div class="layui-row">
              <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">
                <div class="img"><img src="res/img/sy_img3_2.jpg" alt=""></div>
              </div>
              <input type="hidden" name="textid" id="textid" value="1"/>
              <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">
                <div class="item-cont">
                  <h3>背影<button class="layui-btn layui-btn-danger new-icon">new</button></h3>
                  <h5>文章</h5>
                  <p>朱自清</p>
                  <a style="cursor: pointer;"  id="parentIframe3" class="go-icon" ></a>
                </div>
            </div>
            </div>
           </div>
        </div>
        
        <div class="item">
          <div class="layui-fluid">
            <div class="layui-row">
              <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">
                <div class="img"><img src="res/img/sy_img4.jpg" alt=""></div>
              </div>
              <input type="hidden" name="textid" id="textid" value="1"/>
              <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">
                <div class="item-cont">
                  <h3>糖醋里脊</h3>
                  <h5>美食</h5>
                  <p>由来，做法，点评</p>
                  <a style="cursor: pointer;"  id="parentIframe4" class="go-icon" ></a>
                </div>
            </div>
            </div>
           </div>
        </div>
        
        
        
      </div>
     <!--  <div id="demo" style="text-align: center;"></div> 页数-->
    </div>
  </div>
  <div class="footer-wrap" style="background:#1003">
    <div class="footer w1000">
     <p style="text-align:center">© 2018 gugu's blog</p>
     <p style="text-align:center">Welcome to visit gugu blog</p>
    </div>
  </div>
  <script type="text/javascript" src="res/layui/layui.js"></script>
  <script>
//页面一打开就执行，放入ready是为了layer所需配件（css、扩展模块）加载完毕
$('#parentIframe').on('click', function(){
    layer.open({
      textid:  $("#textid").text(),
      type: 2,
      title: '文章内容',
      maxmin: true,
      shadeClose: true, //点击遮罩关闭层
      area : ['800px' , '520px'],
      content: 'detial1.jsp'
    });
  });
  
$('#parentIframe2').on('click', function(){
    layer.open({
      textid:  $("#textid").text(),
      type: 2,
      title: '文章内容',
      maxmin: true,
      shadeClose: true, //点击遮罩关闭层
      area : ['800px' , '520px'],
      content: 'detial2.jsp'
    });
  });
  
$('#parentIframe3').on('click', function(){
    layer.open({
      textid:  $("#textid").text(),
      type: 2,
      title: '文章内容',
      maxmin: true,
      shadeClose: true, //点击遮罩关闭层
      area : ['800px' , '520px'],
      content: 'detial3.jsp'
    });
  });
  
$('#parentIframe4').on('click', function(){
    layer.open({
      textid:  $("#textid").text(),
      type: 2,
      title: '文章内容',
      maxmin: true,
      shadeClose: true, //点击遮罩关闭层
      area : ['800px' , '520px'],
      content: 'detial4.jsp'
    });
  });
</script>
  <script type="text/javascript">
    layui.config({
      base: 'res/js/util/'
    }).use(['element','laypage','jquery','menu'],function(){
      element = layui.element,laypage = layui.laypage,$ = layui.$,menu = layui.menu;
      laypage.render({
        elem: 'demo'
        ,count: 70 //数据总数，从服务端得到
      });
      menu.init();
    })
  </script>
</body>
</html>