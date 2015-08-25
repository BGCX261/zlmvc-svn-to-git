<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="authz"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<link href="../style/style.css" rel="stylesheet" type="text/css" />
<title>自驾游景区</title>
</head>
<body>
<div class="container_12">
    
 <div class="grid_8">
    <h2>
     	   景区<span class="less-important left-margin-10 small">(一共5330个景区，每页显示10个)</span>
    </h2>
    <ul class="startup-one-col">
    	<s:iterator value="sceneList" id="scene">
	    	<li>
		        <div class="left">
		            <a href="http://17startup.com/startup/view/5963"><img alt="巧拼车" class="screenshot" src="http://api.17startup.com/upload/5963_160.png"></a>
		        </div>
		        <div class="right">
		            <h4>
		                <a href="scene/sceneIndex.htm?id=<s:property value="id"/>"><s:property value="name"/></a>
		                <span class="less-important small">qiaopinche.com</span>
		            </h4>
		            <a href="http://17startup.com/startup/category/1"><s:property value="city"/></a>            ·
		            <a href="http://17startup.com/startup/location/2"><s:property value="district"/></a>            ·
		            3分
		            <span class="less-important">(1人评价)</span>
		            <br>
		            <span class="less-important">发布人：</span><s:property value="createMember"/> 
		             <br>  
		            <span class="less-important">发布日期：</span><s:property value="createDate"/>
		            <br>  
		            <span class="less-important">标签：</span>南山，美景 
		            <br>
		            <span class="less-important">简介：</span>巧拼车是一个专业的用车共享服务平台，提供租车拼车服务等。        </div>
		        <div class="clear"></div>
	   		</li>
		</s:iterator>
    </ul>    
    <div class="pagination"><span class="previous_page disabled">← 上一页</span> <span class="current">1</span> <a href="http://17startup.com/startup?page=2">2</a> <a href="http://17startup.com/startup?page=3">3</a> <a href="http://17startup.com/startup?page=4">4</a> <a href="http://17startup.com/startup?page=5">5</a> <a href="http://17startup.com/startup?page=6">6</a> <span class="dots">...</span> <a href="http://17startup.com/startup?page=532">532</a> <a href="http://17startup.com/startup?page=533">533</a> <a class="next_page" href="http://17startup.com/startup?page=2">下一页 →</a></div></div>

<div class="grid_4">

    <h2>欢迎</h2>
<p>
    <a class="btn" href="http://17startup.com/startup/add">添加公司/产品</a>
    <a class="btn" href="http://17startup.com/user/startuplist">创建公司专辑</a>
</p>
<p>

</p>
<form accept-charset="UTF-8" action="http://17startup.com/user/login" method="POST"><div class="control">
    <label for="email">电邮</label>    <input type="text" id="email" value="" name="email" class="span_3" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhEAAQAPZVADsBAkECBFEGCmQDBGoEB3UIDWcOEn0dHnZGRnhBQntbXIILEoIMEoENFI8QGI0UHJMQGKERGqURGq4QGIsaIZ4fJq8WI68YJrQXJLIZJbgZJ7gZKLwcK74dLa4gKq4iLLUgLaApMLwpNrwsOKUzOcAfL8EhMcUjM8YkNMgoOJw+QKY8QtA5Sdo/T6dARa5FS6tOUr9MUqRRVrRVWY9pa5BmaZBqbMRKVNlRYclud/14iLyIiKuoqNGbneyPmfOAkPeElNGvsNO3t+aorfGjq+y/w8zMzNXU1N3S0t7W1t3a2uLR0e3U1vLd4OLh4ejo6Png4/bx8ff09Pr5+f7+/v///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAFYALAAAAAAQABAAAAfEgFaCVlCFhoWDgzk6QD+Oj0A6OYMyLSwdJR2amywtMoITKZgbFRsYIRqaKROCEpgZO1IkMFM7GJgSghGZKEVVQktVQyclJRG6JR8uM1NVVVEvKx7GyDHO11VUVTHUVgEECUlIR+RHSUoJBAGCAAMHKgpO8koIKgcDAIICCwwGRk89gjzhUYABAwGCGly4IIIIkxE3mvgAkeFCA0EPMBQ7gcNEio7FMDwQVAOCBQ6bNnGwAKHGIBoUHMicKZOCjUQ4cw4KBAA7&quot;); padding-right: 18px; background-repeat: no-repeat; background-attachment: scroll; background-position: right center; border: 1px solid rgb(192, 31, 47); width: 257px;"></div>
<div class="control">
    <label for="password">密码</label>    <input type="password" id="password" name="password" class="span_3" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhEAAQAPZVADsBAkECBFEGCmQDBGoEB3UIDWcOEn0dHnZGRnhBQntbXIILEoIMEoENFI8QGI0UHJMQGKERGqURGq4QGIsaIZ4fJq8WI68YJrQXJLIZJbgZJ7gZKLwcK74dLa4gKq4iLLUgLaApMLwpNrwsOKUzOcAfL8EhMcUjM8YkNMgoOJw+QKY8QtA5Sdo/T6dARa5FS6tOUr9MUqRRVrRVWY9pa5BmaZBqbMRKVNlRYclud/14iLyIiKuoqNGbneyPmfOAkPeElNGvsNO3t+aorfGjq+y/w8zMzNXU1N3S0t7W1t3a2uLR0e3U1vLd4OLh4ejo6Png4/bx8ff09Pr5+f7+/v///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAFYALAAAAAAQABAAAAfEgFaCVlCFhoWDgzk6QD+Oj0A6OYMyLSwdJR2amywtMoITKZgbFRsYIRqaKROCEpgZO1IkMFM7GJgSghGZKEVVQktVQyclJRG6JR8uM1NVVVEvKx7GyDHO11VUVTHUVgEECUlIR+RHSUoJBAGCAAMHKgpO8koIKgcDAIICCwwGRk89gjzhUYABAwGCGly4IIIIkxE3mvgAkeFCA0EPMBQ7gcNEio7FMDwQVAOCBQ6bNnGwAKHGIBoUHMicKZOCjUQ4cw4KBAA7&quot;); padding-right: 18px; background-repeat: no-repeat; background-attachment: scroll; background-position: right center; border: 1px solid rgb(192, 31, 47); width: 257px;"></div>
<div class="control">
    <input type="checkbox" value="1" name="remember">    <label for="remember">在这台电脑上记住我的登录</label>    <a href="http://17startup.com/user/forget">忘记密码？</a></div>
<div class="control">
    <input type="submit" value="登录"></div>
</form><hr class="dashed">
<h2>注册</h2>
<p><a class="mini-btn" href="http://17startup.com/user/new">立即加入</a>    最全的初创公司数据库和点评社区</p>
<p><a href="http://17startup.com/weibo/connect"><img alt="微博登陆" src="http://17startup.com/img/icon/weibo_login.png"></a>
</p><div class="sep-20"></div>

    <h2>分类</h2>
    <ul class="two-col">
        <li>
        <span class="less-important small">1395 · </span><a href="http://17startup.com/startup/category/1">电子商务</a>    </li>
        <li>
        <span class="less-important small">117 · </span><a href="http://17startup.com/startup/category/2">搜索引擎</a>    </li>
        <li>
        <span class="less-important small">663 · </span><a href="http://17startup.com/startup/category/3">SNS社会化媒体</a>    </li>
        <li>
        <span class="less-important small">183 · </span><a href="http://17startup.com/startup/category/4">网络营销</a>    </li>
        <li>
        <span class="less-important small">509 · </span><a href="http://17startup.com/startup/category/5">网络工具</a>    </li>
        <li>
        <span class="less-important small">273 · </span><a href="http://17startup.com/startup/category/6">多媒体</a>    </li>
        <li>
        <span class="less-important small">1331 · </span><a href="http://17startup.com/startup/category/7">移动互联网</a>    </li>
        <li>
        <span class="less-important small">367 · </span><a href="http://17startup.com/startup/category/8">游戏</a>    </li>
        <li>
        <span class="less-important small">27 · </span><a href="http://17startup.com/startup/category/9">NGO公益</a>    </li>
        <li>
        <span class="less-important small">145 · </span><a href="http://17startup.com/startup/category/10">其他</a>    </li>
        <li>
        <span class="less-important small">79 · </span><a href="http://17startup.com/startup/category/11">博客论坛</a>    </li>
        <li>
        <span class="less-important small">46 · </span><a href="http://17startup.com/startup/category/12">支付募捐</a>    </li>
        <li>
        <span class="less-important small">195 · </span><a href="http://17startup.com/startup/category/13">媒体资讯</a>    </li>
        <div class="clear"></div>
</ul>
    <div class="round-box round-box-bg">
    <h2>活动</h2>
        <ul>
            <li>
            <a rel="nofollow" target="_blank" href="http://events.pedaily.cn/2012/ciifb/default.asp">第二届移动互联网投融资高峰论坛(清科集团)</a><br>
            <span class="less-important">2012年9月4日</span>
            · <span class="less-important">北京</span>
        </li>
            <li>
            <a rel="nofollow" target="_blank" href="http://www.suhehui.com/messages/new">苏河汇育成计划创业团队招募</a><br>
            <span class="less-important">2012年8月31日</span>
            · <span class="less-important">上海</span>
        </li>
        </ul>
</div>
    <h2>专辑</h2>
    <ul class="dot-sep">
        <li>
        <a href="http://17startup.com/startuplist/view/4183">海银资本(王煜全)所投资的公司和产品</a><br>
        <span class="less-important small">创建者：<a href="http://17startup.com/user/view/1103">17Startup</a></span>
        <span class="less-important left-margin-10 small">13个公司</span>
    </li>
        <li>
        <a href="http://17startup.com/startuplist/view/4182">盛大所投资的公司</a><br>
        <span class="less-important small">创建者：<a href="http://17startup.com/user/view/1103">17Startup</a></span>
        <span class="less-important left-margin-10 small">17个公司</span>
    </li>
        <li>
        <a href="http://17startup.com/startuplist/view/4180">农业信息相关服务网站及电商</a><br>
        <span class="less-important small">创建者：<a href="http://17startup.com/user/view/2">wenfeixiang</a></span>
        <span class="less-important left-margin-10 small">11个公司</span>
    </li>
        <li>
        <a href="http://17startup.com/startuplist/view/4128">纪源资本(GGV Capital)所投资的公司</a><br>
        <span class="less-important small">创建者：<a href="http://17startup.com/user/view/1103">17Startup</a></span>
        <span class="less-important left-margin-10 small">7个公司</span>
    </li>
        <li>
        <a href="http://17startup.com/startuplist/view/3945">交通出行相关的服务网站</a><br>
        <span class="less-important small">创建者：<a href="http://17startup.com/user/view/1221">透明体TMT</a></span>
        <span class="less-important left-margin-10 small">40个公司</span>
    </li>
    </ul>
    <div class="round-box round-box-bg">
    <h2>相关</h2>
    <p>
        移动版本 ·
        <a target="_blank" href="http://itunes.apple.com/app/17startup/id482765092">iPhone</a> /
        <a target="_blank" href="http://blog.17startup.com/?p=90">Android</a> /
        <a target="_blank" href="http://m.17startup.com/index/1">手机浏览器</a>
    </p>
    <p>
        内容服务 ·
        <a target="_blank" href="http://blog.17startup.com/?cat=17">周报</a> /
        <a target="_blank" href="http://blog.17startup.com/">博客</a> /
        <a target="_blank" href="http://weibo.com/17startup/">微博</a> /
        <a target="_blank" href="http://blog.17startup.com/?p=219">创业工具</a>
    </p>
</div></div>    <div class="clear"></div>
</div>

<table cellspacing="0" cellpadding="0" width="100%" id="job_list_$ipage">
	<tr>
		<s:iterator value="sceneList" id="scene">
			<s:property value="name"/>
		</s:iterator>
		<td class="thread"><a class="thread_type_1"
			title="请问作为实习生，是sceneIndex？" target="_blank"
			href="http://www.oschina.net/question/657578_63382">请问作为实习生，是应该选择公司的老项目来做还是新...</a><span
			class="stat">32分钟前 By 穿衣服比较麻烦</span></td>
		<td class="last_post">12评/645阅</td>
	</tr>
</table>

</body>
</html>