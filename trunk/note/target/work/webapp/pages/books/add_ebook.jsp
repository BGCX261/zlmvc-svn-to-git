<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>添加图书</title>
</head>
<body>
<form action="addEbook.htm" method="post" enctype="multipart/form-data">
<div id="wrapper">
	<div class="clearfix" id="main">
	<div class="msger">
        <div class="notice_message r7" style="display: inline-block;"><s:actionerror/></div>
        <script type="text/javascript">
          $(".notice_message").fadeOut().fadeIn();    
        </script>
      </div>
		<div class="box">
  <div class="inner clearfix signup books">
  	<div class="fl form">
  		<h2 class="gray">为《教授与疯子》上传电子版</h2>
  		<p class="gips">你可以上传如下格式的文件：pdf txt rtf doc docx html zip mobi prc chm epub umd jar pdb djv djvu</p>
      
      <form method="post" id="new_ebook" enctype="multipart/form-data" class="new_ebook" action="addEbook.htm" accept-charset="UTF-8"><div style="margin:0;padding:0;display:inline"><input type="hidden" value="✓" name="utf8"><input type="hidden" value="JEgqtO3dFpl5XCqUwOPksuPqkrcJDnbOQDiVO8Nqg9A=" name="authenticity_token"></div>

  <br><br>
	<table cellspacing="0" cellpadding="5" border="0">
		<tbody><tr>
			<td width="80" align="right"><label for="ebook_title">标题</label></td>
			<td width="400" align="left"><input type="text" size="30" name="ebook.title" id="ebook_title" class="sl msl"> <span class="gray">（如：6寸PDF等）</span></td>
		</tr>
		<tr>
			<td width="80" align="right"><label for="ebook_local">电子版文件</label></td>
			<td width="400" align="left"><input type="file" name="file" id="ebook_local"> <span class="gray">（最大可上传30MB的文件）</span></td>
		</tr>
		<tr>
			<td width="80" align="right"></td>
			<td width="400" align="left"><input type="submit" value="上传" name="commit" id="ebook_submit" class="super normal button"></td>
		</tr>
	</tbody></table>
	<br>
</form>
    </div>
    
    <div class="fr">
      <p class="title"><em>&gt;&gt;</em> <a href="/books/4ecbdd2c6cccb348c8002cef">《教授与疯子》</a></p><br>
      <p><a href="/books/4ecbdd2c6cccb348c8002cef"><img src="http://img.lianwu.us/bookcover/4ecbdd2c6cccb348c8002cef/medium_4ecbdd2c6cccb348c8002cef_s4130040.jpg" alt="Medium_4ecbdd2c6cccb348c8002cef_s4130040"></a></p>
      <div class="book">
      
      	<input type="text" name="ebook.book.id" value="<s:property value='book.id'/>"/>
      	
        <span class="gray">作者: </span> [英]西蒙·温切斯特<br>
        <span class="gray">ISBN: </span>9787208086180<br>
        <span class="gray">添加者: </span><a href="/people/4ea779786cccb35213000a56">其他两位国家领导人打飞机时突然</a><br>
        <span class="gray">添加于: </span><abbr title="2011-11-23 01:34:36 +0800" class="timeago">1天前</abbr><br>
      </div>
    </div>
  </div>
</div>
	</div>
</div>
</form>
</body>
</html>