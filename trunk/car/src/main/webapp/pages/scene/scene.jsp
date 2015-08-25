<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="authz"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>自驾游景区</title>
</head>
<body>
	<div id="wrapper">
		<div class="clearfix" id="main">

			<div class="box">
				<div class="inner clearfix signup">
					<div class="fl form">
						<h2 class="gray">新成员注册</h2>
						<p class="gips">加入书，分享你的阅读。</p>

						<form method="post" id="person_new" action="member!save.htm">
							<br>
							<table cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td width="650" align="left" text-align="left"><div>
											<img src="eg_tulip.jpg" alt="上海鲜花港 - 郁金香" height="200"
												width="300" style="float: left; padding-right: 10px" /> <span
												class="fs12 gray">
											content
											</span> <br>
											<br>
											<font>标签:娱乐,体育,教育</font>
											<a href="toAddScene.htm">添加景点</a>
										</div></td>
								</tr>

							</table>
							<br>




						</form>
					</div>

					<div class="fl form">
						<div class="mod TopicList" id="HomeJobTopicPanel">
							<h2>
								<span class="right"> <a href="/question/ask?catalog=100">发布求职信息?</a>
								</span> <a class="title" href="/question?catalog=100">职业生涯</a>
							</h2>
							<div class="body">
								<table cellspacing="0" cellpadding="0" width="100%"
									id="job_list_$ipage">
									<tbody>
										<tr>
											<td class="thread"><a class="thread_type_1"
												title="请问作为实习生，是应该选择公司的老项目来做还是新项目来做？" target="_blank"
												href="http://www.oschina.net/question/657578_63382">请问作为实习生，是应该选择公司的老项目来做还是新...</a><span
												class="stat">32分钟前 By 穿衣服比较麻烦</span></td>
											<td class="last_post">12评/645阅</td>
										</tr>
										<tr>
											<td class="thread"><a class="thread_type_1"
												title="问个问题，遇到一个大家都不喜欢的领导怎么办！" target="_blank"
												href="http://www.oschina.net/question/104204_63663">问个问题，遇到一个大家都不喜欢的领导怎么办！</a><span
												class="stat">36分钟前 By 宏哥</span></td>
											<td class="last_post">12评/604阅</td>
										</tr>
										<tr>
											<td class="thread"><a class="thread_type_1"
												title="北京的公积金社保都怎么上的" target="_blank"
												href="http://www.oschina.net/question/141138_64004">北京的公积金社保都怎么上的</a><span
												class="stat">1小时前 By fei</span></td>
											<td class="last_post">10评/227阅</td>
										</tr>
										<tr>
											<td class="thread"><a class="thread_type_1"
												title="上海j2ee六年研发经验求兼职" target="_blank"
												href="http://www.oschina.net/question/658536_63623">上海j2ee六年研发经验求兼职</a><span
												class="stat">1小时前 By jiangtao</span></td>
											<td class="last_post">4评/353阅</td>
										</tr>
										<tr>
											<td class="thread"><a class="thread_type_1"
												title="有没有愿意一起做个网站项目的，一起规划、一起开发、共同享有项目经验。ok？"
												target="_blank"
												href="http://www.oschina.net/question/659170_63840">有没有愿意一起做个网站项目的，一起规划、一起开发...</a><span
												class="stat">3小时前 By 章鱼哥</span></td>
											<td class="last_post">27评/1145阅</td>
										</tr>
										<tr>
											<td class="thread"><a class="thread_type_1"
												title="某外资公司招聘客户端，服务器端主程-猎头职位(年薪30万）" target="_blank"
												href="http://www.oschina.net/question/567882_64046">某外资公司招聘客户端，服务器端主程-猎头职位(年薪...</a><span
												class="stat">3小时前 By 何浩贤</span></td>
											<td class="last_post">0评/69阅</td>
										</tr>
										<tr>
											<td class="thread"><a class="thread_type_1"
												title="接活，或者加入团队" target="_blank"
												href="http://www.oschina.net/question/233545_63818">接活，或者加入团队</a><span
												class="stat">3小时前 By Lake#</span></td>
											<td class="last_post">5评/484阅</td>
										</tr>
										<tr>
											<td class="thread"><a class="thread_type_1"
												title="初入公司，看些什么书对以后的职业规划比较好？" target="_blank"
												href="http://www.oschina.net/question/589682_63455">初入公司，看些什么书对以后的职业规划比较好？</a><span
												class="stat">4小时前 By 陶明凯</span></td>
											<td class="last_post">26评/1196阅</td>
										</tr>
										<tr>
											<td class="thread"><a class="thread_type_1"
												title="求职：5年web前端开发" target="_blank"
												href="http://www.oschina.net/question/581481_63696">求职：5年web前端开发</a><span
												class="stat">昨天(22:17) By sin</span></td>
											<td class="last_post">6评/496阅</td>
										</tr>
										<tr>
											<td class="thread"><a class="thread_type_2"
												title="推荐哪里有UI设计师实体聚会的地方？" target="_blank"
												href="http://www.oschina.net/question/659686_63960">推荐哪里有UI设计师实体聚会的地方？</a><span
												class="stat">昨天(19:07) By kimmysumm...</span></td>
											<td class="last_post">0评/115阅</td>
										</tr>
									</tbody>
								</table>
								<div id="jobs_area" class="area_more">
									<a class="more" href="/question?catalog=100">进入职业生涯版块&nbsp;?</a>
									<div class="clear"></div>
								</div>
							</div>
						</div>
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
								<li class="tsina"><a href="/auth/tsina"><img
										align="absmiddle" title="新浪微博"
										src="http://a.lianwu.us/images/login_sina_01.png"
										alt="Login_sina_01"></a></li>
								<li class="t163"><a href="/auth/t163"><img
										align="absmiddle" title="网易微博"
										src="http://a.lianwu.us/images/login_wangyi.png"
										alt="Login_wangyi"></a></li>
								<li class="t163"><a href="/auth/taobao"><img
										align="absmiddle" title="淘宝帐号"
										src="http://a.lianwu.us/images/login_taobao.png"
										alt="Login_taobao"></a></li>
								<li class="google"><a href="/auth/google"><img
										align="absmiddle" title="Google帐号"
										src="http://a.lianwu.us/images/login_google.png"
										alt="Login_google"></a></li>
							</ul>
						</div>

					</div>
				</div>
			</div>


		</div>
	</div>
</body>
</html>