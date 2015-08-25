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
<div id="comments2" class="sep5"></div>
<div class="cell_comments"
	id="Book_4eb55b536cccb33760000c14_cell_comments">
	
	<s:iterator value="noteList" >
	<div class="comment clearfix">

	<div class="fl body">
	<font size="3">
	<a href="showNotes.htm?bookid=<s:property value='book.id'/>">
	<s:property value="book.title" />
	</a>
	</font>
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
	<div class="the-body fs14">
	</div>
	</div>
	</div>
	<br>
</s:iterator>
<br>
</div>

</div>

<div class="fr">
<h3 class="gray">我的笔记  · · · · · · </h3>

<h3 class="gray">笔记导出备份 </h3>

</div>



</div>
</div>
</div>
</div>
</form>
</body>
</html>