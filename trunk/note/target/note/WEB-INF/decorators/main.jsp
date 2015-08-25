<!DOCTYPE html PUBLIC 
	"-//W3C//DTD XHTML 1.1 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title><decorator:title default="Struts Starter" /></title>
<decorator:head />
<link href="book.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.6.4.js"></script>
<script type="text/javascript" src="js/ga.js"></script>
</head>
<body>


<div id="header_wrapper">

<div class="clearfix" id="header">
<div class="fl" id="logo"><a href="index.htm">书</a> <span
	class="fs12 gray">我书故我在</span></div>
<div class="fl" id="search"><input type="text"
	placeholder="输入书籍名或好友昵称搜索" class="sl ac_input" id="q" value="" name="q"
	autocomplete="off"> <a rel="tipsy"
	onclick="location.href='index!toAddBook.htm?title=' + $('#q').val();return false;"
	href="index!toAddBook.htm" original-title="添加书籍前先搜索，看看书籍是不是已经有人添加过了">添加书籍</a>
</div>
<%
if(session.getAttribute("loginMemberUsername")==null){
	out.println("<ul class='fr clearfix' id='nav'>");
	out.println("<li><a href='/login'>微博登录</a></li>");
	out.println("<li><a href='member!toRegister.htm'>注册</a></li>");
	out.println("<li><a href='/forum'>论坛</a></li>");
	out.println("<li><a href='/people'>成员</a></li>");
	out.println("<li><a href='/tags'>标签</a></li>");
	out.println("<li data-dropdown='dropdown' class='dropdown'><a");
	out.println("class='dropdown-toggle' href='index.htm'>书籍</a>");
	out.println("<ul class='dropdown-menu'>");
	out.println("<li><a href='/'>所有书籍</a></li>");
	out.println("<li class='divider'></li>");
	out.println("<li><a href='/books/waiting_for_upload'>待上传书籍</a></li>");
	out.println("</ul>");
	out.println("</li>");
	out.println("</ul>");
}else{
	String username = session.getAttribute("loginMemberUsername").toString();
	//String id=session.getAttribute("loginMemberId").toString();
	//out.println(id);
	out.println("<ul class='fr clearfix' id='nav'>");
	out.println("<li data-dropdown='dropdown' class='dropdown'><a");
	out.println("class='dropdown-toggle' href='/people/4eae08506cccb30a1100045c'>"+username+"</a>");
	out.println("<ul class='dropdown-menu'>");
	out.println("<li><a href='/people/4eae08506cccb30a1100045c'>我的书</a></li>");
	out.println("<li><a href='showNotes.htm'>我的笔记</a></li>");
	out.println("<li><a href='/settings'>设置</a></li>");
	out.println("<li class='divider'></li>");
	out.println("<li><a href='/logout'>注销</a></li>");
	out.println("</ul>");
	out.println("</li>");
	out.println("<li><a href='/forum'>论坛</a></li>");
	out.println("<li><a href='/people'>成员</a></li>");
	out.println("<li><a href='/tags'>标签</a></li>");
	out.println("<li data-dropdown='dropdown' class='dropdown'>");
	out.println("<a class='dropdown-toggle' href='read.htm'>书籍</a>");
	out.println("<ul class='dropdown-menu'>");
	out.println("<li><a href='/'>我关注的书籍</a></li>");
	out.println("<li><a href='/books/all'>所有书籍</a></li>");
	out.println("<li class='divider'></li>");
	out.println("<li><a href='/books/waiting_for_upload'>待上传书籍</a></li>");
	out.println("</ul>");
	out.println("</li>");
	out.println("</ul>");
	
}
%> 
</div>
</div>

<decorator:body />

<div id="footer_wrapper">
<div id="footer">
<div align="right" style="padding-top: 10px;" class="fr"><a
	target="_blank"
	href="http://www.linode.com/?r=f10747c7cbcd37246a0d3ebd0c0a7af36c3b2e65"><img
	align="absmiddle" title="Powered by Linode VPS"
	src="http://a.lianwu.us/images/logo.linode.png" alt="Logo.linode"></a>
&nbsp; <a target="_blank" href="http://aws.amazon.com"><img
	align="absmiddle" title="Powered by Amazon Web Services"
	src="http://a.lianwu.us/images/logo.aws.png" alt="Logo.aws"></a></div>

<strong><a class="dark" href="/about">关于Shu.im</a></strong> &nbsp; |
&nbsp; <strong><a class="dark" href="/faq">常见问题</a></strong> &nbsp; |
&nbsp; <strong><a class="dark" href="/disclaimer">免责声明</a></strong>
&nbsp; | &nbsp; <strong><a class="dark"
	href="mailto:nowazhu@gmail.com">联系我们</a></strong>

<div class="sep5"></div>
<div class="sep10"></div>
<span class="gray">我书故我在</span>
<div class="sep5"></div>
<span class="gray">&copy; 2011, A website by <a target="_blank"
	href="http://www.zlmind.com">layne</a>. Made On A Mac </span></div>
</div>
</body>
</html>
