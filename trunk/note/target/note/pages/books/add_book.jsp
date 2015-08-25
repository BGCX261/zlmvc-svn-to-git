<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>添加图书</title>
</head>
<body>

<form action="saveBook.htm" method="post" enctype="multipart/form-data">
<div id="wrapper">
	<div class="clearfix" id="main">
		<div class="msger">
        <div class="notice_message r7" style="display: inline-block;"><s:actionerror/></div>
        <script type="text/javascript">
          $(".notice_message").fadeOut().fadeIn();    
        </script>
      </div>
		<div class="box">
  <div class="inner clearfix signup">
  	<div class="form">
  		<h2 class="gray">添加书籍 &nbsp; <span><a href="/books">&gt; 查看所有书籍</a></span></h2>
  		<p class="gips">我们拒绝任何以政治或色情为目的的书籍！</p>

      <form method="post" id="new_book" enctype="multipart/form-data" class="new_book" action="/books" accept-charset="UTF-8"><div style="margin:0;padding:0;display:inline"><input type="hidden" value="✓" name="utf8"><input type="hidden" value="hDIjgjZb684CihDYR6DV9f/4rViQmAqD5nIAP087pVk=" name="authenticity_token"></div>

	<br><br>
	<table cellspacing="0" cellpadding="5" border="0">
		<tbody><tr>
			<td width="80" align="right"><label for="book_title">书名</label></td>
			<td width="400" align="left"><input type="text" value="" size="30" name="book.title" id="book_title" class="sl"></td>
		</tr>
		<tr>
			<td width="80" align="right"><label for="book_sub_title">副标题</label></td>
			<td width="400" align="left"><input type="text" size="30" name="book.subtitle" id="book_sub_title" class="sl"></td>
		</tr>
		<tr>
			<td width="80" align="right"><label for="book_cached_authors">作者</label></td>
			<td width="400" align="left"><input type="text" size="30" name="book.author" id="book_cached_authors" class="sl"></td>
		</tr>
		<tr>
			<td width="80" align="right"><label for="book_temp_tags">标签</label></td>
			<td width="400" align="left"><input type="text" value="" size="30" name="book.tags" id="book_temp_tags" class="sl"> <span class="gray">（以逗号分隔）</span></td>
		</tr>
		<tr>
			<td width="80" align="right"><label for="book_cover">上传封面</label></td>
			<td width="400" align="left"><input type="file" name="file" id="book_cover"></td>
		</tr>
		<tr>
    	<td width="80" align="right"><label for="book_isbn">ISBN</label></td>
    	<td width="400" align="left"><input type="text" size="30" name="book.isbn" id="book_isbn" class="sl msl"> <span class="gray">（如果有就尽可能填写哦）</span></td>
    </tr>
		<tr>
			<td width="80" align="right"><label for="book_intro">简介</label></td>
			<td width="400" align="left"><textarea style="width: 450px" rows="20" name="book.summary" id="book_intro" cols="60" class="sl"></textarea></td>
		</tr>
		<tr>
			<td width="80" align="right"><label for="book_publisher">出版社</label></td>
			<td width="400" align="left"><input type="text" size="30" name="book.publisher" id="book_publisher" class="sl"></td>
		</tr>
		<tr>
			<td width="80" align="right"></td>
			<td width="400" align="left"><input type="submit" value="提交书籍" name="commit" id="book_submit" class="super normal button"></td>
		</tr>
	</tbody></table>
	<br>
</form>
    </div>
  </div>
</div>
	</div>
</div>
</form>
</body>
</html>