<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="authz"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>添加读书笔记</title>
</head>
<body>
<form action="addNote.htm" method="post">
<div id="wrapper">

<input type="hidden" name="note.book.id" value="<s:property value='book.id'/>"/>

<div class="clearfix" id="main">
<div class="msger">
<div class="notice_message r7" style="display: inline-block;"><s:actionerror /></div>
<script type="text/javascript">
          $(".notice_message").fadeOut().fadeIn();    
        </script></div>
<div class="box">
<div class="inner clearfix signup books">
<div class="fl form">
<h2 class="gray">为《<s:property value="book.title" />》写笔记</h2>
<br>
<div class="cell_comments_new"
	id="Book_4ea54e026cccb32073000027_cell_new_comment">
<form method="post" id="new_comment" action="addNote.htm">
	
<div style="margin: 0; padding: 0; display: inline">
<span class="fs12 gray">页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</span> 第 <input type="text" size="15"
	name="note.page" id="ebook_title" class="sl mslpage"> 页 
<span class="fs12 gray">章 节 名:</span> <input type="text" size="15"
	name="note.chapter" id="ebook_title" class="sl mslchapter"> 
<br><br>
<div class="row"><span class="fs12 gray">笔记内容:</span> 
<br>
<br>
<textarea style="width: 500px; height: 200px;" rows="20"
	name="note.content" id="comment_body" cols="40" class="sl"></textarea>
</div>
<div class="buttons"><input type="submit" value="发表" name="commit"
	id="comment_submit" class="super normal button"> <br>
</div>
</div>
</form>
</div>

</div>

<div class="fr">
<p class="title"><em>&gt;&gt;</em> <a
	href="/books/4ecbdd2c6cccb348c8002cef">《<s:property value="book.title" />》</a></p>
<br>
<p><a href="/books/4ecbdd2c6cccb348c8002cef"><img
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