<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   String basepath=request.getContextPath()+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>登录</title>
	<link rel="stylesheet" href="../css/css/ZYQ_Login.css" type="text/css" />
</head>
<body>
	<div id="whole">
	
		<div id="welcome">
			<table width="600px">
				<tr>
					<td width="200px"></td>
					<td width="400px">
						<p style="color: gray">欢迎登录<img src="./img/logo2.png"></p>
					</td>
				</tr>
			</table>
		</div>

		<div id="login">
			<div id="aa"></div>
			<div id="bb">
				<div id="a"></div>
				<div id="b"></div>
				<div id="c">
					<form action="" method="post" >
						<div id="d">
							
						</div>
						<div id="e">
							<p>账号:<input type="text" name="userName" placeholder="请输入账号" /><a href="register.html"><small>注册账号</small></a></p>
						</div>
						<div id="f">
							<p>密码:<input type="password" name="passWord" placeholder="请输入密码" /><a href="#"><small>找回密码</small></a></p>
						</div>
						<div id="g">
							<table>
								<tr height="19px" class="zz">
									<td>
										<input type="checkbox">记住密码
									</td>
									
								</tr>
								<tr class="yy">
									<td width="48px"></td>
									<td width="48px" align="center">
										<input type="submit" value="登录">
									</td>
									<td width="48px"></td>
									<td width="48px" align="center">
										<input type="submit" value="取消">
									</td>
									<td width="48px"></td>
								</tr>
							</table>
							
						</div>
					</form>
					<div id="h">
						<table>
							<tr width="280px" height="30px"></tr>
							<tr>
								<td width="120px">其它登录方式</td>
								<td width="50px">
									<a href="#">
										<img src="./img/2.png" />
									</a>
								</td>
								<td width="50px">
									<a href="#">
										<img src="./img/3.png">
									</a>
								</td>
								<td width="50px">
									<a href="#">
										<img src="./img/4.png">
									</a>
								</td>
							</tr>
						</table>

					</div>
					<div id="m">

					</div>

				</div>
			</div>
			<div id="cc">
				
			</div>
		</div>
	</div>
</body>
</html>