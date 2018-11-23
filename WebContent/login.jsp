<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>登录</title>
    <meta charset="utf-8">
</head>

<body>
        <div>
            <div>
                <h1><strong>咕咕博客登录</strong> </h1>
            </div>
            <div>
                <form role="form" method="POST" name="login" action="LoginServlet">
                    <input type="text" name="userName" placeholder="Admin..."/>
                    <input type="password" name="userPassword" placeholder="Password...">
                    <input type="submit" name="login" value="登录"/>
                </form>
            </div>
        </div>
        <div>
        	<form role="form" method="POST" name="Registe" action="RegisteServlet">
        		<input>
        	</form>
        </div>
        
        
        <br>
        
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
		</form>
		
		
		
		
		
</body>
</html>