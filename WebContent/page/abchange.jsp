<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href=" <%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


<title>修改</title>
</head>
<body>
<div>
<form action="AboutUpServlet" method="post">
<input type="text" name="age" />年龄<br>
<input type="radio" name="gender" value="男"> 男<br>
<input type="radio" name="gender" value="女"> 女<br>
<input type="text" name="content" value="个性签名"/><br>
<input type="submit" value="提交"/><br>
</form>
</div>
</body>
</html>