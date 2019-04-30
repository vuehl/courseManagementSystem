<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<% 
   String basepath=request.getContextPath()+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>注册</title>
	<link rel="stylesheet" href="css/css/ZYQ_Register.css" type="text/css" />
</head>
<body>
	<div id="whole">
		<div id="welcome">
			<table width="600px">
				<tr>
					<td width="200px"></td>
					<td width="400px">
						<p style="color: gray">立即注册<img src="./img/logo2.png"></p>
					</td>
				</tr>
			</table>
		</div>
		<div id="rejist">
			<div id="aa"></div>
			<div id="bb">
				<form action="${pageContext.request.contextPath}/user/register" method="post">
					<div id ="a"></div>
					<div id="b"></div>
					<div id="c">
						<div id="d"></div>
						<div id="e">
							<p>账 号:<input type="text" name="userName" placeholder="请输入用户名" /></p>
						</div>
						<div id="f">
							<p>密 码:<input type="password" name="userPwd" placeholder="请输入密码" /></p>
						</div>
						<div id="h">
							
							<input type="radio" name="userSex" value="男" checked="checked">男
							
							<input type="radio" name="userSex" value="女">女
						</div>
						<div id="g">
							<table>
								<tr>
									<td width="48px"></td>
									<td width="48px"></td>
									
									<td width="48px">
										<input type="submit" value="注册" />
									</td>
									<td width="48px"></td>
									<td width="48px"></td>
								</tr>
							</table>
							
						</div>
						
						<div id="m">
							<a href="javascript:void(0)">其他操作</a>
						</div>
				</form>
				</div>
			</div>
			<div id="cc">
				
			</div>
		</div>
	</div>
</body>
</html>