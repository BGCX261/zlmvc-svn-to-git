<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="authz"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title><s:property value="book.title" />-读书笔记</title>
</head>
<body>
<form action="addNote.htm" method="post">
<div id="wrapper">
<div class="clearfix" id="main">
<div class="msger">
<div class="notice_message r7" style="display: inline-block;"><s:actionerror /></div>
<script type="text/javascript">
          $(".notice_message").fadeOut().fadeIn();    
        </script></div>
<div class="box">
<div class="inner clearfix signup books">
<div class="fl form">
<h2 class="gray">《<s:property value="book.title" />》读书笔记
<img src="http://img3.douban.com/pics/add-review.gif">
<a class="download" href="toAddNote.htm?bookid=<s:property value="book.id"/>">接着写笔记</a>    
</h2>

<br>
<div id="comments2" class="sep5"></div>
<div class="cell_comments"
	id="Book_4eb55b536cccb33760000c14_cell_comments">
	
	<s:iterator value="book.noteSet" id="note">
	<div class="comment clearfix">
	<div class="fl body">
	<br>
	<s:if test="page!=null">
	<font color="#336699">第<s:property value='page'/>页</font> 
	</s:if>
	<s:if test="chapter!=null&&chapter!=''">
	<font color="#336699">章节名 <s:property value='chapter'/></font> 
	</s:if>

	<br>
	<p><s:property value="content" /></p>
	
	<div class="meta">
	 发表于 <abbr title="2011-11-07 19:56:24 +0800" class="timeago">
	<s:property value="createDate" />
	</abbr>
	</div>
	<br>
	<div class="the-body fs14">
	</div>
	</div>
	</div>
</s:iterator>
<br>
</div>

</div>

<div class="fr">
<p class="title"><em>&gt;&gt;</em> <a
	href="bookInfor.htm?bookid=<s:property value='book.id'/>">
	《<s:property value="book.title" />》</a></p>
<br>
<p><a href="bookInfor.htm?bookid=<s:property value='book.id'/>"><img
	src="http://img.lianwu.us/bookcover/4ecbdd2c6cccb348c8002cef/medium_4ecbdd2c6cccb348c8002cef_s4130040.jpg"
	alt="Medium_4ecbdd2c6cccb348c8002cef_s4130040"></a></p>
<div class="book">
<span class="gray">作者:
</span><s:property value="book.author" /><br>
<span class="gray">ISBN: </span><s:property value="book.isbn" /><br>
<span class="gray">添加于: </span><abbr title="2011-11-23 01:34:36 +0800"
	class="timeago">1天前</abbr><br>
</div>
</div>
</div>
</div>
</div>
</div>
</form>
</body>
</html>