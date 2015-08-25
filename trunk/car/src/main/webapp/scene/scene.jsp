<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="authz"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>自驾游景区</title>
<link href="../../style/rating.css" rel="stylesheet" type="text/css" />
<script src="../../js/rating.js"></script>
</head>

<body>

<div class="container_12">
    
        <div class="grid_8">
    <h1>
        <s:property value="scene.name"/>
        <span class="less-important left-margin-10">fenbi.com</span>
        <span class="less-important left-margin-10 small">(1113次浏览)</span>
    </h1>
    <div class="startup-left">
        <img alt="粉笔网" class="screenshot" src="http://api.17startup.com/upload/5946_160.png">        <div class="sep-10"></div>
        <p>
            <a class="even-less-important" href="http://17startup.com/startup/manage/5946">发布活动</a>
        </p>
        <p>
            <a class="even-less-important" target="_blank" href="http://api.17startup.com/upload/5946.png">攻略</a> ·
            <a class="even-less-important" href="http://17startup.com/startup/widget/5946">游记</a>
        </p>
    </div>
    <div class="startup-right">
       
       <span class="less-important">发布人：</span><s:property value="scene.createMember"/> 
       <br> 
       <span class="less-important">发布日期：</span><s:property value="scene.createDate"/>
       <br>  
       <span class="less-important">标签：</span>南山，美景 
       <br>
       <span class="less-important">简介：</span>巧拼车是一个专业的用车共享服务平台，提供租车拼车服务等。 
		            
         <div class="clear"></div>
       
        <!-- JiaThis Button BEGIN -->
        <div id="ckepop">
            <a class="jiathis_button_tsina" title="分享到新浪微博"><span class="jiathis_txt jtico jtico_tsina"></span></a>
            <a class="jiathis_button_tqq" title="分享到腾讯微博"><span class="jiathis_txt jtico jtico_tqq"></span></a>
            <a class="jiathis_button_douban" title="分享到豆瓣"><span class="jiathis_txt jtico jtico_douban"></span></a>
            <a class="jiathis_button_renren" title="分享到人人网"><span class="jiathis_txt jtico jtico_renren"></span></a>
            <a target="_blank" class="jiathis jiathis_txt jtico jtico_jiathis" href="http://www.jiathis.com/share"></a>
            <a class="jiathis_counter_style"><span class="jiathis_button_expanded jiathis_counter jiathis_bubble_style" id="jiathis_counter_30" title="累计分享1次">1</span></a>
        </div>
        <script type="text/javascript">
            var jiathis_config = {
                title:"#17Startup新站发现#",
                summary:"粉笔网是一个新的社会化、在线教育学习网站。",
                pic:"http://api.17startup.com/upload/5946.png",
                appkey:{
                    "tsina":"2970489606"
                },
                ralateuid:{
                    "tsina":"2288786090"
                }
            }
        </script>
        <script charset="utf-8" src="http://v2.jiathis.com/code/jia.js" type="text/javascript"></script><script charset="utf-8" src="http://v2.jiathis.com/code/plugin.client.js" type="text/javascript"></script><div style="position:absolute;width:0px;height:0px;"><object width="0" height="0" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab" id="JIATHISSWF" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"><param value="always" name="allowScriptAccess"><param value="true" name="swLiveConnect"><param value="http://www.jiathis.com/code/swf/m.swf" name="movie"><param value="z=a" name="FlashVars"><embed width="0" height="0" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" swliveconnect="true" allowscriptaccess="always" flashvars="z=a" src="http://www.jiathis.com/code/swf/m.swf" name="JIATHISSWF"></object></div>
        <!-- JiaThis Button END -->
    </div>
    <div class="clear"></div>

    <h5>自驾游攻略<span class="less-important left-margin-10 small">(2条)</span></h5>
    <ul class="margin-10">
                <li>
            <a target="_blank" href="http://www.showeb20.com/?p=3721">粉笔: 社会化的分享和获取知识的平台</a>                <span class="less-important small left-margin-10">
                    showeb20.com ·
                    2012年8月28日                </span>
        </li>
                <li>
            <a target="_blank" href="http://www.leiphone.com/fenbi.html">粉笔网上线，网易前高管欲打造教育领域的yelp</a>                <span class="less-important small left-margin-10">
                    leiphone.com ·
                    2012年8月27日                </span>
        </li>
            </ul>

    <h5>活动<span class="less-important left-margin-10 small">(1条)</span></h5>
    <ul class="margin-10">
                <li>
            <span class="less-important">2012年8月</span> ·
            8月27日，粉笔网上线        </li>
            </ul>

    <h5>自驾游记<span class="less-important left-margin-10 small">(2条)</span></h5>
    <ul class="margin-10">
                <li>
            <a href="http://17startup.com/startuplist/view/81">P2P教育交易及知识分享类的网站</a>            · <span class="less-important">知识无价，知识有价，看教育如何角逐互联网</span>
        </li>
                <li>
            <a href="http://17startup.com/startuplist/view/405">在线教育培训类网站</a>            · <span class="less-important">在线教育，英语、计算机、财会等等</span>
        </li>
            </ul>

    <h5>评论<span class="less-important left-margin-10 small">(3条)</span></h5>
    <ul class="dot-sep one-col-comment">
                <li>
            <div class="left"><img alt="wenfeixiang" src="http://tp4.sinaimg.cn/1661552451/50/5596891316/0"></div>
            <div class="right">
                <p>
                    <b><a href="http://17startup.com/user/view/2">wenfeixiang</a></b>                    · <span class="even-less-important">From idea to product</span><br>
                    <span class="comment-content autolink"><a href="http://17startup.com/search/user?keyword=van">@van</a>  好建议啊，这是网站专辑的另一大分类了。 粉笔网的人都好熟悉啊，加油</span>
                </p>
                <span class="even-less-important">2012年8月28日</span>
                <a class="less-important left-margin-10" href="http://17startup.com/startup/commentup/4557">赞同 (0)</a>
                                · <a class="comment-reply less-important" rel="wenfeixiang" href="#comment">回复</a>
                                · <a class="less-important" href="http://17startup.com/user/follow/2">关注评论者</a>
                · <a class="less-important" href="http://17startup.com/user/view/2/message">留言/私信</a>
                            </div>
            <div class="clear"></div>
        </li>
                <li>
            <div class="left"><img alt="quweiwang" src="http://www.gravatar.com/avatar/3e216b534035e4d25d17e6d5a1a98d7b?s=50&amp;d=mm&amp;r=g"></div>
            <div class="right">
                <p>
                    <b><a href="http://17startup.com/user/view/1453">quweiwang</a></b>                    · <span class="even-less-important">我在路上</span><br>
                    <span class="comment-content autolink">在线教育有很大的难度，看粉笔网怎么探索咯</span>
                </p>
                <span class="even-less-important">2012年8月27日</span>
                <a class="less-important left-margin-10" href="http://17startup.com/startup/commentup/4544">赞同 (0)</a>
                                · <a class="comment-reply less-important" rel="quweiwang" href="#comment">回复</a>
                                · <a class="less-important" href="http://17startup.com/user/follow/1453">关注评论者</a>
                · <a class="less-important" href="http://17startup.com/user/view/1453/message">留言/私信</a>
                            </div>
            <div class="clear"></div>
        </li>
                <li>
            <div class="left"><img alt="van" src="http://www.gravatar.com/avatar/f2175536f4c6735a2f02710cdbf28a80?s=50&amp;d=mm&amp;r=g"></div>
            <div class="right">
                <p>
                    <b><a href="http://17startup.com/user/view/7">van</a></b>                    · <span class="even-less-important">不知名产品经理</span><br>
                    <span class="comment-content autolink">网易系创业项目。。。<a href="http://17startup.com/search/user?keyword=wenfeixiang">@wenfeixiang</a> ，可以建新的网站专辑了，比如XX系创业公司，金山系、网易系、盛大系之类的，哈哈</span>
                </p>
                <span class="even-less-important">2012年8月27日</span>
                <a class="less-important left-margin-10" href="http://17startup.com/startup/commentup/4537">赞同 (0)</a>
                                · <a class="comment-reply less-important" rel="van" href="#comment">回复</a>
                                · <a class="less-important" href="http://17startup.com/user/follow/7">关注评论者</a>
                · <a class="less-important" href="http://17startup.com/user/view/7/message">留言/私信</a>
                            </div>
            <div class="clear"></div>
        </li>
                <li>
                            <div class="left"><img alt="zlmind" src="http://www.gravatar.com/avatar/72da7d2a8985c1e52b06ec102384478e?s=50&amp;d=mm&amp;r=g"></div>
                <div class="right">
                    <form accept-charset="UTF-8" action="http://17startup.com/startup/comment/5946" method="POST" id="comment">                        <p>
                            <b><a href="http://17startup.com/user/view/1449">zlmind</a></b>                            · <span class="less-important"></span>
                        </p>
                        <p><textarea cols="50" name="comment" rows="5" class="span_7"></textarea></p>
                        <p>
                                                        <span class="less-important">
                                评论支持 @用户名，以及 #公司名#，不支持任何HTML标签。
                            </span>
                        </p>
                        <p><input type="submit" value="提交" class="comment-submit"></p>
                    </form>                </div>
                        <div class="clear"></div>
        </li>
    </ul>
</div>

<div class="grid_4">

    <h2>收藏</h2>
        <a class="btn" href="http://17startup.com/startup/collect/5946">你尚未收藏，点击收藏</a>
    
    <div class="sep-10"></div>

    <h2>认领</h2>
        <a href="http://17startup.com/startup/claim/5946" class="btn">你尚未认领，点击认领</a>
        <hr class="dashed">

    <h2>同属 <a href="http://17startup.com/startup/category/1">南山区</a></h2>
    <ul class="startup-sidebar">
            <li>
            <div class="left">
                <a href="http://17startup.com/startup/view/948"><img alt="乐子铺" class="screenshot" src="http://api.17startup.com/upload/948_100.png"></a>
            </div>
            <div class="right">
                <h6>
                    <a href="http://17startup.com/startup/view/948">乐子铺</a>                    <span class="less-important small">lezipu.com</span>
                </h6>
                <a href="http://17startup.com/startup/category/1">电子商务</a>                <span class="less-important">·</span>
                <a href="http://17startup.com/startup/location/2">北京</a>                <span class="less-important">·</span>
                3分
                <br>
                <span class="less-important">团队：</span>施翼/联合创始人 明...
            </div>
            <div class="clear"></div>
        </li>
            <li>
            <div class="left">
                <a href="http://17startup.com/startup/view/116"><img alt="微博预定" class="screenshot" src="http://api.17startup.com/upload/116_100.png"></a>
            </div>
            <div class="right">
                <h6>
                    <a href="http://17startup.com/startup/view/116">微博预定</a>                    <span class="less-important small">weibofood.sinaapp.com</span>
                </h6>
                <a href="http://17startup.com/startup/category/1">电子商务</a>                <span class="less-important">·</span>
                <a href="http://17startup.com/startup/location/2">北京</a>                <span class="less-important">·</span>
                3分
                <br>
                <span class="less-important">团队：</span>暂无
            </div>
            <div class="clear"></div>
        </li>
            <li>
            <div class="left">
                <a href="http://17startup.com/startup/view/4575"><img alt="Bosslady薄蕾丝" class="screenshot" src="http://api.17startup.com/upload/4575_100.png"></a>
            </div>
            <div class="right">
                <h6>
                    <a href="http://17startup.com/startup/view/4575">Bosslady薄蕾丝</a>                    <span class="less-important small">bosslady.tw</span>
                </h6>
                <a href="http://17startup.com/startup/category/1">电子商务</a>                <span class="less-important">·</span>
                <a href="http://17startup.com/startup/location/35">台湾</a>                <span class="less-important">·</span>
                3.8分
                <br>
                <span class="less-important">团队：</span>暂无
            </div>
            <div class="clear"></div>
        </li>
        </ul>

    <h2>同在 <a href="http://17startup.com/startup/location/2">北京</a></h2>
    <ul class="startup-sidebar">
                <li>
            <div class="left">
                <a href="http://17startup.com/startup/view/3797"><img alt="美味书签" class="screenshot" src="http://api.17startup.com/upload/3797_100.png"></a>
            </div>
            <div class="right">
                <h6>
                    <a href="http://17startup.com/startup/view/3797">美味书签</a>                    <span class="less-important small">mei.fm</span>
                </h6>
                网络工具 <span class="less-important">·</span> 北京 <span class="less-important">·</span> 3.88分
                <br>
                <span class="less-important">团队：</span>江宏/总经理
            </div>
            <div class="clear"></div>
        </li>
                <li>
            <div class="left">
                <a href="http://17startup.com/startup/view/2754"><img alt="云猎头" class="screenshot" src="http://api.17startup.com/upload/2754_100.png"></a>
            </div>
            <div class="right">
                <h6>
                    <a href="http://17startup.com/startup/view/2754">云猎头</a>                    
                    <span class="less-important small">yunlietou.com</span>
                </h6>
                电子商务 <span class="less-important">·</span> 北京 <span class="less-important">·</span> 2.86分
                <br>
                <span class="less-important">团队：</span>张杰/CEO 徐大伟...
            </div>
            <div class="clear"></div>
        </li>
                <li>
            <div class="left">
                <a href="http://17startup.com/startup/view/4590"><img alt="云成互动" class="screenshot" src="http://api.17startup.com/upload/4590_100.png"></a>
            </div>
            <div class="right">
                <h6>
                    <a href="http://17startup.com/startup/view/4590">云成互动</a>                    <span class="less-important small">cloudacc-inc.com</span>
                </h6>
                多媒体 <span class="less-important">·</span> 北京 <span class="less-important">·</span> 4.25分
                <br>
                <span class="less-important">团队：</span>张旋/联合创始人 胡...
            </div>
            <div class="clear"></div>
        </li>
            </ul>
</div>
<script type="text/javascript">
    $('.star').rating({
        callback: function(value, link) {
            window.location = "http://17startup.com/startup/vote/5946?point=" + value;
        }
    });
    $('.comment-submit').click(function(e) {
        e.preventDefault();
        $(this).val('提交中...').attr('disabled', true);
        $('#comment').submit();
    });

    $('.comment-content').each(function() {
        $(this).html($(this).html().autoLink({target: "_blank", rel: "nofollow"}).parseComment());
    });

    $('.team-content').each(function() {
        $(this).html($(this).html().parseTeamMember());
    });

    $('.comment-reply').click(function(e) {
        e.preventDefault();
        var nick = $(this).attr('rel');
        $('#comment textarea').focus().val('@' + nick + ' ');
    });
</script>    <div class="clear"></div>
</div>
















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