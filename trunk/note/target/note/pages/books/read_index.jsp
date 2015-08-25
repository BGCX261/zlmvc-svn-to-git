<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>搜索图书</title>
</head>
<body>
<div id="wrapper">
	<div class="clearfix" id="main">
		<div class="msger">
        <div class="notice_message r7" style="display: inline-block;"><s:actionerror/></div>
        <script type="text/javascript">
          $(".notice_message").fadeOut().fadeIn();    
        </script>
      </div>
      
		<div class="outer clearfix">
  <div class="fl w600">
    <div class="books">
      <div class="clearfix">
        <div class="fl">
            <h1>所有书籍</h1>
        </div>
        <div class="fr mt15">
          <a href="?order=recent&amp;pagina=">按添加时间倒序</a> / 
          按最后更新倒序 / 
          <a href="?order=hot_download&amp;pagina=">按下载次数倒序</a> / 
          <a href="?order=hot_like&amp;pagina=">按最赞倒序</a>
        </div>
      </div>
      <div class="sep20"></div>
      
      
      
	<s:iterator value="booklist">
      <div class="book clearfix">
        <div class="fl cover">
          <a href="/books/4eb582426cccb33760000f40"><img src="<%=request.getContextPath()%><s:property value='cover'/>" alt="Small_4eb582426cccb33760000f40_hp"></a>
        </div>
        <div class="fl meta">
          <h3><a href="bookInfor.htm?bookid=<s:property value='id'/>"><s:property value='title'/><span class="fs12"> <s:property value='subhead'/></span></a></h3>
          <div class="ebook-types"><span class="ebook-type r3">mobi</span><span class="ebook-type r3">ePub</span><span class="ebook-type r3">PDF</span></div>
          <p class="gray counters">
           <s:property value='author'/> <a class="" href="/people/4ea6584a6cccb351970002f9">添加者</a> 添加于<abbr title="2011-11-06 02:36:50 +0800" class="timeago">1天前</abbr><br>
            
            已下载14次；
          </p>
        </div>
        <div class="fr person">
          <a href="/people/4ea6584a6cccb351970002f9"><img src="http://img.lianwu.us/avatar/4ea6584a6cccb351970002f9/small_4ea6584a6cccb351970002f9_1.jpg" class="avatar r3" alt="Small_4ea6584a6cccb351970002f9_1"></a>
        </div>
      </div>
      <p class="ul"></p>
     
      </s:iterator>
      
      
      
        <div class="pagination">
    <!--  -->
    
        <span class="page current r3">
  1
</span>

        <span class="page">
  <a rel="next" href="/books/page/2">2</a>
</span>

        <span class="page">
  <a href="/books/page/3">3</a>
</span>

        <span class="page gap">...</span>

        <span class="page">
  <a href="/books/page/24">24</a>
</span>

        <span class="page">
  <a href="/books/page/25">25</a>
</span>

        <span class="page">
  <a href="/books/page/26">26</a>
</span>

    <span rel="tipsy" class="next" original-title="按键盘 [左/右] 键可进行翻页">
  <a rel="next" href="/books/page/2">后页 »</a>
</span>

    <!-- <span class="last">
  <a href="/books/page/26">末页</a>
</span>
 -->
  </div>

    </div>
  </div>

  <div class="fr w280">
    <h2>书籍</h2>
    <div>
      <div class="fs14 nav-item r3"><em>&gt;&gt;</em> <a href="/">所有书籍</a></div>
      <div class="sep5"></div>
      
      <div class="fs14"><em>&gt;&gt;</em> <a href="/books/waiting_for_upload">待上传书籍</a></div>
    </div>
    <br>
    
    <h2>电子书格式</h2>
    <ul class="ebook-types clearfix">
      <li class="r3"><a href="/books/type/epub">ePub</a></li>
      <li class="r3"><a href="/books/type/mobi">mobi</a></li>
      <li class="r3"><a href="/books/type/pdf">PDF</a></li>
      <li class="r3"><a href="/books/type/chm">CHM</a></li>
      <li class="r3"><a href="/books/type/jar">Jar</a></li>
      <li class="r3"><a href="/books/type/umd">UMD</a></li>
      <li class="r3"><a href="/books/type/pdb">PDB</a></li>
      <!-- <li class="r3"><a href="/books/type/prc">prc</a></li> -->
      <li class="r3"><a href="/books/type/txt">TXT</a></li>
      <!-- <li class="r3"><a href="/books/type/rtf">RTF</a></li>
            <li class="r3"><a href="/books/type/doc">Doc</a></li>
            <li class="r3"><a href="/books/type/docx">Docx</a></li> -->
      <li class="r3"><a href="/books/type/djvu">DjVu</a></li>
      <li class="r3"><a href="/books/type/zip">zip</a></li>
    </ul>
    <br>
    
    <h2>热门标签</h2>
    <ul class="hot-tags clearfix">
        <li class="fl node-tag r3"><a href="/tags/%E5%B0%8F%E8%AF%B4">小说</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E5%8E%9F%E7%89%88">原版</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E5%8E%86%E5%8F%B2">历史</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E6%96%87%E5%AD%A6">文学</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E7%BB%8F%E5%85%B8">经典</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E7%BE%8E%E5%9B%BD">美国</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E6%97%A5%E6%9C%AC%E6%96%87%E5%AD%A6">日本文学</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E7%A7%91%E5%B9%BB">科幻</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E6%8E%A8%E7%90%86">推理</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E6%97%A5%E6%9C%AC">日本</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E9%9A%8F%E7%AC%94">随笔</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E8%AE%A1%E7%AE%97%E6%9C%BA">计算机</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E7%BC%96%E7%A8%8B">编程</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E6%82%AC%E7%96%91">悬疑</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E4%BC%A0%E8%AE%B0">传记</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E7%BC%96%E7%A8%8B%E8%AF%AD%E8%A8%80">编程语言</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E6%94%BF%E6%B2%BB">政治</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E6%AD%A6%E4%BE%A0">武侠</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E5%A4%96%E5%9B%BD%E6%96%87%E5%AD%A6">外国文学</a></li>
        <li class="fl node-tag r3"><a href="/tags/%E5%BF%83%E7%90%86%E5%AD%A6">心理学</a></li>
    </ul>
    <br>
    
    <h2>最赞书籍</h2>
    <div class="hot-books clearfix">
              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4ea54e026cccb32073000027"><img src="http://img.lianwu.us/bookcover/4ea54e026cccb32073000027/small_4ea54e026cccb32073000027_s6865108.jpg" alt="Small_4ea54e026cccb32073000027_s6865108"></a>
        </div>
        <div class="title center">
          <a href="/books/4ea54e026cccb32073000027">Steve Jobs</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e81deaf6cccb312cc00000d"><img src="http://img.lianwu.us/bookcover/4e81deaf6cccb312cc00000d/small_1317134130_rework.jpg" alt="Small_1317134130_rework"></a>
        </div>
        <div class="title center">
          <a href="/books/4e81deaf6cccb312cc00000d">Rework</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e8c1c3e6cccb30e9f000047"><img src="http://img.lianwu.us/bookcover/4e8c1c3e6cccb30e9f000047/small_4e8c1c3e6cccb30e9f000047_s6807265.jpeg" alt="Small_4e8c1c3e6cccb30e9f000047_s6807265"></a>
        </div>
        <div class="title center">
          <a href="/books/4e8c1c3e6cccb30e9f000047">浪潮之巅</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e9038a86cccb3674700025d"><img src="http://img.lianwu.us/bookcover/4e9038a86cccb3674700025d/small_4e9038a86cccb3674700025d_cover.jpg" alt="Small_4e9038a86cccb3674700025d_cover"></a>
        </div>
        <div class="title center">
          <a href="/books/4e9038a86cccb3674700025d">失控：机器、社会与经济的新生物学</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e85b1216cccb359ce00009a"><img src="http://img.lianwu.us/bookcover/4e85b1216cccb359ce00009a/small_4e85b1216cccb359ce00009a_cover.jpg" alt="Small_4e85b1216cccb359ce00009a_cover"></a>
        </div>
        <div class="title center">
          <a href="/books/4e85b1216cccb359ce00009a">百年孤独</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e9a88836cccb37744000288"><img src="http://img.lianwu.us/bookcover/4e9a88836cccb37744000288/small_4e9a88836cccb37744000288_cover.jpg" alt="Small_4e9a88836cccb37744000288_cover"></a>
        </div>
        <div class="title center">
          <a href="/books/4e9a88836cccb37744000288">明朝那些事儿（共7册）</a>
        </div>
      </div>

    </div>
    <br>
    
    <h2>热门下载</h2>
    <div class="hot-books clearfix">
              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e8b12d26cccb3595a0004dc"><img src="http://img.lianwu.us/bookcover/4e8b12d26cccb3595a0004dc/small_4e8b12d26cccb3595a0004dc_______________.______________________________.___._________._________________001.jpg" alt="Small_4e8b12d26cccb3595a0004dc_______________.______________________________.___._________._________________001"></a>
        </div>
        <div class="title center">
          <a href="/books/4e8b12d26cccb3595a0004dc">思维导图</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4ea54e026cccb32073000027"><img src="http://img.lianwu.us/bookcover/4ea54e026cccb32073000027/small_4ea54e026cccb32073000027_s6865108.jpg" alt="Small_4ea54e026cccb32073000027_s6865108"></a>
        </div>
        <div class="title center">
          <a href="/books/4ea54e026cccb32073000027">Steve Jobs</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4eb0ed166cccb349be0003b3"><img src="http://a.lianwu.us/images/fallback/small_default_book_cover.png" alt="Small_default_book_cover"></a>
        </div>
        <div class="title center">
          <a href="/books/4eb0ed166cccb349be0003b3">福尔摩斯探案全集</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e8c58ee6cccb31806000026"><img src="http://img.lianwu.us/bookcover/4e8c58ee6cccb31806000026/small_4e8c58ee6cccb31806000026______________________________01.jpg" alt="Small_4e8c58ee6cccb31806000026______________________________01"></a>
        </div>
        <div class="title center">
          <a href="/books/4e8c58ee6cccb31806000026">赵孟頫小楷道德经真迹</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e8c856c6cccb31ded000114"><img src="http://img.lianwu.us/bookcover/4e8c856c6cccb31ded000114/small_4e8c856c6cccb31ded000114_s2760882.jpg" alt="Small_4e8c856c6cccb31ded000114_s2760882"></a>
        </div>
        <div class="title center">
          <a href="/books/4e8c856c6cccb31ded000114">我的第一本英语语法书</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e8c1c3e6cccb30e9f000047"><img src="http://img.lianwu.us/bookcover/4e8c1c3e6cccb30e9f000047/small_4e8c1c3e6cccb30e9f000047_s6807265.jpeg" alt="Small_4e8c1c3e6cccb30e9f000047_s6807265"></a>
        </div>
        <div class="title center">
          <a href="/books/4e8c1c3e6cccb30e9f000047">浪潮之巅</a>
        </div>
      </div>

    </div>
    <br>
    
    <h2>纪念Steve Jobs</h2>
    <a href="/stevejobs"><img title="苹果创始人Steve Jobs辞世" src="http://a.lianwu.us/images/jobs.jpg" class="avatar r3" alt="Jobs"></a>
    <br><br>
  </div>
</div>

	</div>
</div>

<form name="searchbooks" action="read!find.htm" class="search">
<s:actionerror/> 
<s:actionmessage/>
图书名称：<input type="text" class="txtBox1" name="keyWord"> 
<input type="submit" class="login" value="Login" name="login"></form>
<a href="index!toAddBook.htm">添加书籍</a>	
<h2 class="who">阅读最热排行</h2>
<p class="readMore"><a href="#">Read More</a></p>
<ul class="link"> 
</ul>
</body>
</html>