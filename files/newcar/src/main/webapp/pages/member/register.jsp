<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="authz"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>添加图书</title>
</head>
<body>
<div id="wrapper">
<div class="clearfix" id="main">

<div class="box">
<div class="inner clearfix signup">
<div class="fl form">
<h2 class="gray">新成员注册</h2>
<p class="gips">加入书，分享你的阅读。</p>

<form method="post" id="person_new" action="member!save.htm"><br>
<table cellspacing="0" cellpadding="5" border="0">
	<tbody>
		<tr>
			<td width="80" align="right"><label for="member.userName">登录名</label></td>
			<td width="400" align="left"><input type="text" size="30"
				rel="fipsy" name="member.userName" id="person_username"
				class="sl ssl" original-title="必填。可中英文，仅仅用来登录"></td>
		</tr>
		<tr>
			<td width="80" align="right"><label for="person_email">邮箱</label></td>
			<td width="400" align="left"><input type="email" size="30"
				name="member.email" id="person_email" class="sl msl"></td>
		</tr>
		<tr>
			<td width="80" align="right"><label for="person_password">密码</label></td>
			<td width="400" align="left"><input type="password" size="30"
				name="member.password" id="person_password" class="sl msl"></td>
		</tr>
		<tr>
			<td width="80" align="right"><label
				for="person_password_confirmation">确认密码</label></td>
			<td width="400" align="left"><input type="password" size="30"
				name="member.passwordConfirmation" id="person_password_confirmation"
				class="sl msl"></td>
		</tr>
		<tr>
			<td width="80" align="right"></td>
			<td width="400" align="left"><input type="submit" value="注册"
				name="commit" id="person_submit" class="super normal button"></td>
		</tr>
	</tbody>
</table>
<br>
</form>
</div>
<div class="fr">
<p class="gips">已有发烧账号？</p>
<ul class="devise-links">
	<li><a href="member!toLogin.htm">登录</a></li>


	<li><a href="/people/password/new">忘记密码</a></li>



</ul>

<div class="sep20"></div>
<div id="omniauth_links" class="box">
<h2>用其他平台的帐号登陆</h2>
<ul class="third-login">
	<li class="douban"><a href="/auth/douban"><img
		align="absmiddle" title="豆瓣"
		src="http://a.lianwu.us/images/login_douban_01.png"
		alt="Login_douban_01"></a></li>
	<!-- <li class="tqq"><a href="/auth/tqq">QQ帐号(腾讯微博)</a></li> -->
	<li class="tsina"><a href="/auth/tsina"><img align="absmiddle"
		title="新浪微博" src="http://a.lianwu.us/images/login_sina_01.png"
		alt="Login_sina_01"></a></li>
	<li class="t163"><a href="/auth/t163"><img align="absmiddle"
		title="网易微博" src="http://a.lianwu.us/images/login_wangyi.png"
		alt="Login_wangyi"></a></li>
	<li class="t163"><a href="/auth/taobao"><img align="absmiddle"
		title="淘宝帐号" src="http://a.lianwu.us/images/login_taobao.png"
		alt="Login_taobao"></a></li>
	<li class="google"><a href="/auth/google"><img
		align="absmiddle" title="Google帐号"
		src="http://a.lianwu.us/images/login_google.png" alt="Login_google"></a></li>
</ul>
</div>

</div>
</div>
</div>


</div>
</div>
</body>
</html>