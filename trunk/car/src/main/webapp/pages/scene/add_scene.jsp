<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags" %>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 
<html>
<head>
<title>添加景区</title>
</head>
<body>

<form action="saveScene.htm" method="post" enctype="multipart/form-data">
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

    
  
	<br><br>
	<table cellspacing="0" cellpadding="5" border="0">

		<tr>
			<td colspan="2" width="480" align="left">
				<table>
					<tr>

						<td width="80" align="right"><label for="person_email">省</label></td>

						<td><input type="text" size="30" name="scene.province"
							id="person_username" class="sl ssl" /></td>
						<td><label for="person_email">市</label></td>
						<td><input type="text" size="30" name="scene.city"
							id="person_username" class="sl ssl" /></td>
						<td><label for="person_email">区</label></td>
						<td><input type="text" size="30" name="scene.district"
							id="person_username" class="sl ssl" /></td>
					</tr>
				</table>
			</td>


		</tr>
		<tr>
			<td width="80" align="right"><label for="person_email">景区名称</label></td>
			<td width="400" align="left"><input type="email" size="30"
				name="scene.name" id="ddd" class="sl msl"></td>
		</tr>
		<tr>
			<td width="80" align="right">图片</td>
			<td width="400" align="left"></td>
		</tr>

		<tr>
			<td width="80" align="right"><label for="person_password">介绍</label></td>
			<td width="400" align="left"><textarea
					style="width: 450px" rows="10" name="scene.instruction"
					id="book_intro" cols="60" class="sl"></textarea></td>
		</tr>
		<tr>
			<td width="80" align="right"><label
				for="person_password_confirmation">标签</label></td>
			<td width="400" align="left"><input type="text" size="30"
				name="ddd"
				id="person_password_confirmation" class="sl msl"></td>
		</tr>
		<tr>
			<td width="80" align="right"></td>
			<td width="400" align="left"><input type="submit"
				value="提交" name="commit" id="person_submit"
				class="super normal button"></td>
		</tr>

	</table>
	<br>

    </div>
  </div>
</div>
	</div>
</div>
</form>
</body>
</html>