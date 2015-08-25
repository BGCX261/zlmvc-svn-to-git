<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags" %>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 
<html>
<head>
<title>添加景区</title>

</head>
<body>

<form action="saveScene.htm" method="post" enctype="multipart/form-data">

<div class="container_12">
        <div class="grid_12">
        <div id="message" class="alert alert-success">
           <s:actionerror/>       
           </div>
    </div>
    <div class="clear"></div>
    
        <div class="grid_8">
    <h2>添加景区</h2>
    <form accept-charset="UTF-8" action="http://17startup.com/startup/validateAdd" method="POST">
	<table>
		<tr>
			<td align="right"><label for="person_email">省&nbsp;</label></td>
			<td><input type="text" class="span_2" name="scene.province"
				id="person_username" class="sl ssl" />&nbsp;</td>
			<td><label for="person_email">市&nbsp;</label></td>
			<td><input type="text" class="span_2" name="scene.city"
				id="person_username" class="sl ssl" />&nbsp;</td>
			<td><label for="person_email">区&nbsp;</label></td>
			<td><input type="text" class="span_2" name="scene.district"
				id="person_username" class="sl ssl" /></td>
		</tr>
	</table>
	<label for="name">名称</label>    
    <input type="text" id="name" value="" name="scene.name" class="span_7">    
    <label for="url">图片</label>    
    <input type="file"  class="span_7" ></input>
    <label for="url">介绍</label>    
    <textarea cols="50" rows="10" id="desc" name="scene.instruction" class="span_7"></textarea> 
    <label for="category">标签</label>  
    <input type="text" id="url" value="" name="scene.instruction" class="span_7">    
    <p class="less-important">标签以逗号分开，最多可以填写5个标签</p>
    <div class="sep-10"></div>
    <input type="submit" value="添加">    </form></div>
<div class="grid_4">
    <h2>常见问题</h2>
    <p class="less-important">
        17Startup致力于成为最全面的初创公司数据库，毫无疑问，这里需要大家的参与。 如果您发现的网站，应用或者公司，都欢迎您在这里提交。 如果您自己是初创公司的创始人，我们十分希望你的项目能加入17Startup的数据库。
    </p>
    <div class="sep-10"></div>

    <h6>我提交的网站什么时候能显示？</h6>
    <p class="less-important">为了保证网站的质量，我们会对所有网站进行简单的人工审核和编辑，完成之后你提交的项目就会正式进入数据库。</p>
    <div class="sep-10"></div>

    <h6>你们接受哪些种类的项目？</h6>
    <p class="less-important">我们不限制项目的语言，只要是有创意，有意思的初创公司、网站、应用、产品等等，都可以提交给我们。</p>
    <div class="sep-10"></div>

    <h6>如果一个公司有多个项目怎么办？</h6>
    <p class="less-important">如果项目之间有一定的独立性，我们建议你可以分别提交每一个项目，同时也可以提交公司本身。只要与现有的网站或者项目不重复，我们都会收录。</p>
    <div class="sep-10"></div>

    <h6>为什么我收不到审核通过的提醒邮件？</h6>
    <p class="less-important">如果你收不到提醒邮件，可能是被反垃圾邮件系统错误的过滤了，可以去垃圾邮件里找找，更保险的办法是把@17startup.com的邮件加入白名单。</p>
    <div class="sep-10"></div>
</div>    <div class="clear"></div>
</div>



</form>
</body>
</html>