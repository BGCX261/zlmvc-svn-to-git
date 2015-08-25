<!DOCTYPE html PUBLIC 
	"-//W3C//DTD XHTML 1.1 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%    
String path = request.getContextPath();    
// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是 http://localhost:8080/MyApp/）:    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
%>    
<base href="<%=basePath%>">  

<title><decorator:title default="Struts Starter" /></title>
<decorator:head />
<link href="style/style.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript">
      var CONFIG = {
          siteUrl: 'http://17startup.com/',
          currentUrl: 'http://17startup.com/',
          currentUri: '/'
      }
      // Redirect to mobile site
      if (screen.width <= 699) {
          document.location = "http://m.17startup.com/";
      }
  </script>
    
<script src="js/jquery.js"></script>
<script src="js/app.js"></script>
<script src="js/redirect.js"></script>
<script src="js/easytabs.js"></script>
<script src="js/cycle.js"></script>
<script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-22065166-8']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
</head>
   
<body>

<div class="header-bar"></div>
<div class="container_12">
    <div class="grid_2">
        <a href="index.htm" class="href">
            <img alt="17Startup" src="http://17startup.com/img/logo.png">        </a>
    </div>
    <div class="grid_7">
        <ul class="nav">
            <li>
                <span class="count">5329</span>
                <a href="scene/sceneList.htm">全部景点</a>
            </li>
            <li>
                <span class="count">206</span>
                <a href="scene/toAddScene.htm">创建景点</a>
            </li>
            <li>
                <span class="count">2723</span>
                <a href="scene/sceneIndex.htm">查看某个景点</a>
            </li>
            
            <li>
                <span class="count">3456</span>
                <a href="http://17startup.com/people">人物</a>
            </li>
            <li>
                <span class="count">242</span>
                <a href="http://17startup.com/investment">投资</a>
            </li>
            <li>
                <span class="count">92</span>
                <a href="http://17startup.com/discuss">讨论</a>
            </li>
        </ul>
    </div>
    <div class="grid_3">
        <form accept-charset="UTF-8" action="http://17startup.com/search/startup" method="GET" class="search">        <input type="text" value="" name="keyword" class="span_2">        <button>搜索</button>        </form>    </div>
    <div class="clear"></div>
    <div class="sep-20"></div>
</div>


<decorator:body />


<div class="container_12 footer">
    <p class="center quote">
        世界上那些最容易的事情中，拖延时间最不费力    </p>
    <hr class="dashed">
    <div class="">
        <div class="grid_1">
            <a target="_blank" href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20111012141417627">
                <img alt="上海工商" src="http://17startup.com/img/license.gif">
            </a>
        </div>
        <div class="grid_9">
            <div class="sep-5"></div>
            <div class="footer-nav">
                <a target="_blank" href="http://m.17startup.com/">手机版</a> ·
                <a target="_blank" href="http://itunes.apple.com/app/17startup/id482765092">iPhone</a> ·
                <a target="_blank" href="http://blog.17startup.com/?p=90">Android</a> ·
                <a href="http://17startup.com/static/about">关于我们</a> ·
                <a target="_blank" href="http://blog.17startup.com/">官方博客</a> ·
                <a target="_blank" href="http://blog.17startup.com/?p=219">创业工具</a>
            </div>
            <span class="less-important">Copyright &copy; 2011 - 2012 17Startup.com</span>
            · <a class="less-important" target="_blank" href="http://www.miitbeian.gov.cn/">沪ICP备10212628号-17</a>
        </div>
        <div class="grid_2">
            <div class="sep-10"></div>
            <iframe width="136" scrolling="no" height="24" frameborder="0" src="http://widget.weibo.com/relationship/followbutton.php?language=zh_cn&amp;width=136&amp;height=24&amp;uid=2288786090&amp;style=2&amp;btn=red&amp;dpc=1" border="0" marginheight="0" marginwidth="0" allowtransparency="true"></iframe>
        </div>
        <div class="clear"></div>
    </div>
</div>


</body>
</html>
