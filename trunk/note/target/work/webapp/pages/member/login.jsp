<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="authz"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>登录</title>
</head>
<body>
<div id="wrapper">
<div class="clearfix" id="main">
		<div class="msger">
        <div class="notice_message r7" style="display: inline-block;"><s:actionerror/></div>
        <script type="text/javascript">
          $(".notice_message").fadeOut().fadeIn();    
        </script>
      </div>

         
<div class="box">
<div class="inner clearfix signup login">
<div class="fl form">
<h2 class="gray">登录· · · 书</h2>

<form method="post" id="person_new" action="member!login.htm" >

<br>
<br>
<table cellspacing="0" cellpadding="5" border="0">
	<tbody>
		<tr>
			<td width="80" align="right"><label for="person_login">昵称
			或 邮箱</label></td>
			<td width="300" align="left"><input type="text" size="30"
				name="member.userName" id="person_login" class="sl"></td>
		</tr>
		<tr>
			<td width="80" align="right"><label for="person_password">密码</label></td>
			<td width="300" align="left"><input type="password" value=""
				size="30" name="member.password" id="person_password" class="sl"></td>
		</tr>
		<tr>
			<td width="80" align="right"></td>
			<td width="300" align="left"><input type="hidden" value="0"
				name="member.rememberMe"><input type="checkbox" value="1"
				name="meber.rememberMe" id="person_remember_me"> <label
				for="person_remember_me">两周内自动登录</label> &nbsp; ➜ <a
				href="/people/password/new">忘记密码了？</a></td>
		</tr>
		<tr>
			<td width="80" align="right"></td>
			<td width="300" align="left"><input type="submit" value="登录"
				name="commit" id="person_submit"></td>
		</tr>
		<tr>
			<td width="80" align="right"></td>
			<td width="300" align="left">
			<div class="sep20"></div>
			<p class="gips">你也可以用以下方式登录：</p>
			<div class="sep5"></div>
			<ul class="third-login">
				<li class="douban"><a href="/auth/douban"><img title="豆瓣"
					src="http://a.lianwu.us/images/login_douban_01.png"
					alt="Login_douban_01"></a></li>
				<!-- <li class="tqq"><a href="/auth/tqq">QQ帐号(腾讯微博)</a></li> -->
				<li class="tsina"><a href="/auth/tsina"><img title="新浪微博"
					src="http://a.lianwu.us/images/login_sina_01.png"
					alt="Login_sina_01"></a></li>
				<li class="t163"><a href="/auth/t163"><img title="网易微博"
					src="http://a.lianwu.us/images/login_wangyi.png" alt="Login_wangyi"></a></li>
				<li class="t163"><a href="/auth/taobao"><img title="淘宝帐号"
					src="http://a.lianwu.us/images/login_taobao.png" alt="Login_taobao"></a></li>
				<li class="google"><a href="/auth/google"><img
					title="Google帐号" src="http://a.lianwu.us/images/login_google.png"
					alt="Login_google"></a></li>
			</ul>
			</td>
		</tr>
	</tbody>
</table>
<br>
</form>
</div>
<div class="fr">
<p class="gips">还没有账号？</p>
<ul class="devise-links">

	<li><a href="member!toRegister.htm">注册</a></li>

	<li><a href="/people/password/new">忘记密码</a></li>

</ul>
</div>
</div>
</div>
</div>
</div>
</body>
</html>