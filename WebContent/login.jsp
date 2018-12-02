<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<base href=" <%=basePath%>">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <title>咕咕blog-login</title>
  <link rel="stylesheet" type="text/css" href="res/layui/css/layui.css">
  <link rel="stylesheet" type="text/css" href="res/css/main.css">
  <script src="http://cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
  <script src="layer/layer.js"></script>
</head>
<body>
        <div>  
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  				<legend>咕咕博客登录</legend>
			</fieldset>
            <!-- <div>
                <form role="form" method="POST" name="login" action="LoginServlet">
                    <input type="text" name="userName" placeholder="Admin..."/>
                    <input type="password" name="userPassword" placeholder="Password...">
                    <input type="text" name = "validationCode" >验证码
                    <img  src="ValidationCodeServlet" id="CreateCheckCode" onclick="change()"/>
                    <input type="submit" name="login" value="登录"/>
                </form>
            </div> -->
        </div>            
        <!-- <br>  
		<form id="form1" name="form1" method="post" action="testReg.do">
  			<p>注册并发送欢迎邮件测试  </p>
  			<p>姓名：
   				 <input type="text" id="username" name="username"/>
  			</p>
  			<p>密码：
   				 <input type="text" id="userpassword" name="userpassword"/>
  			</p>
  			<p>E-mail:
   				 <input type="text" id="email" name="email"/>
 			</p>
  			<p>
    			<input type="submit" value="提交" />    
   			</p>
		</form> -->
<div class="layui-container fly-marginTop">
  <div class="fly-panel fly-panel-user">
    <div class="layui-tab layui-tab-brief" >
      <ul class="layui-tab-title">
        <li class="layui-this">登入</li>
        <li><a href="reg.jsp">注册</a></li>
      </ul>
      <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
        <div class="layui-tab-item layui-show">
          <div class="layui-form layui-form-pane">
            <form role="form" method="POST" name="login" action="LoginServlet">
              <div class="layui-form-item">
               	<label for="L_username" class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                <input type="text" class="layui-input" name="userName" id="L_username" placeholder="Admin..."/>
                </div>
              </div>   
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                  <input class="layui-input" type="password" name="userPassword" placeholder="Password...">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_vercode" class="layui-form-label">验证码</label>
                <div class="layui-input-inline">
                  <input type="text" class="layui-input" placeholder="点击图片切换" autocomplete="off" required name = "validationCode" >
                </div>
                <div class="layui-form-mid">
                  <span><img  src="ValidationCodeServlet" id="CreateCheckCode" onclick="change()"/></span>
                </div>
              </div>
              <div class="layui-form-item">
                <input class="layui-btn" type="submit" name="login" value="登录"/>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

		
<script type="text/javascript">
function change(){ 
	document.getElementById("CreateCheckCode").src="ValidationCodeServlet?"+Math.random(); 
	} 
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