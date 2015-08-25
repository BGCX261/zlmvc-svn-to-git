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
<div class="book clearfix">
  <div class="fl w600">
   
    <div class="tags clearfix">
    <s:iterator value="book.listTags">
    <a class="fl r3 tag" href="/tags/%E7%A7%91%E5%B9%BB">
    <s:property/></a>
    </s:iterator>
    </div>
    
    <h1><s:property value="book.title"/></h1>
    <div class="sep5"></div>
    <div class="detail clearfix">
      <div class="fl cover">
        <a href="<%=request.getContextPath()%><s:property value='book.cover'/>"><img src="<%=request.getContextPath()%><s:property value='book.cover'/>" alt="图片"></a>
      </div>
      <div class="fl meta">
        
        <span class="gray">作者: </span><s:property value="book.author"/><br>
        <span class="gray">ISBN: </span><s:property value="book.isbn"/><br>
        <span class="gray">添加者: </span><a href="/people/4ea779786cccb35213000a56">zlmind</a><br>
        <span class="gray">添加于: </span><abbr title="2011-11-05 23:50:43 +0800" class="timeago">1天前</abbr><br>
        <span class="gray">参考网站: </span><a target="_blank" href="http://book.douban.com/subject_search?search_text=9787020060504">豆瓣</a><br>
        <span class="gray">下载: </span>46次<br>
        <span class="gray">查看: </span>73次<br>
      </div>
    </div>
    <div class="sep20"></div>
    <img src="http://img3.douban.com/pics/add-review.gif">
    <a class="download" href="toAddNote.htm?bookid=<s:property value="book.id"/>">写笔记</a> 
    <br>
    
    <h3 class="gray">内容简介  · · · · · · </h3>
    <div class="intro">
      <p>
      <s:property value="book.summary"/>
      </p>
    </div>
    <br>
    
    <h3 class="gray">电子版下载  · · · · · · </h3>
  
    <div class="ebooks">
    	<s:iterator value="book.ebookSet" id="ebook">
	      <div class="ebook clearfix">
	        <em>&gt;&gt;</em>&nbsp; 
	        <a href="<%=request.getContextPath()%><s:property value='ebookurl'/>" class="download"><s:property value="title"/></a> &nbsp;&nbsp; 
	        <span class="fs12 ffgeorgia">
	          542.8 KB 
	        </span>
	        <div class="fr fs12 uploader"><a href="#">zhulin</a></div>
	      </div>
  		</s:iterator>
      
      <p align="right"><a class="super normal small button" href="toAddEbook.htm?bookid=<s:property value='book.id'/>">上传各种电子版</a></p>
    </div>
    
    <br>
    
    
    <!--
    <h3 class="gray">书评  · · · · · · </h3><br>
    <div id="comments2" class="sep5"></div>
<div class="cell_comments" id="Book_4eb55b536cccb33760000c14_cell_comments">
   
   <s:iterator value="book.noteSet" id="note">
    <div class="comment clearfix">
  <div class="fl poster">
    <a href="/people/4ea177426cccb3539a0002c3"><img src="http://a.lianwu.us/images/fallback/mini_default_user_avatar.png" class="avatar r3" alt="Mini_default_user_avatar"></a>
  </div>
  <div class="fl body">
    <div class="meta">
      <a href="/people/4ea177426cccb3539a0002c3">玄一</a> 发表于 <abbr title="2011-11-07 19:56:24 +0800" class="timeago">2小时前</abbr>
    </div>
    <div class="the-body fs14">
      <p><s:property value="content"/></p>
    </div>
  </div>
</div>
<br>
</s:iterator>

    <div class="comment clearfix">
  <div class="fl poster">
    <a href="/people/4ea6584a6cccb351970002f9"><img src="http://img.lianwu.us/avatar/4ea6584a6cccb351970002f9/mini_4ea6584a6cccb351970002f9_1.jpg" class="avatar r3" alt="Mini_4ea6584a6cccb351970002f9_1"></a>
  </div>
  <div class="fl body">
    <div class="meta">
      <a href="/people/4ea6584a6cccb351970002f9">乱世浮僧谢邪妮</a> 发表于 <abbr title="2011-11-07 20:23:02 +0800" class="timeago">1小时前</abbr>
    </div>
    <div class="the-body fs14">
      <p>还是书比电影要好看多</p>
    </div>
  </div>
</div>
<br>
</div>




--></div>
  <div class="fr w280">
    <div class="side-actions">
      <a rel="tipsy" class="super normal button" href="/books/4eb55b536cccb33760000c14/like" original-title="喜欢这本书就赞它一下吧">赞 <span class="fs12">(3)</span></a> &nbsp; 
      <a class="super normal button" href="toAddEbook.htm?bookid=<s:property value='book.id'/>">上传电子版</a> &nbsp; 
    </div><br><br>
    
      <ul class="same-type-books"><li><em>&gt;&gt;</em> &nbsp; <span class="ebook-type r3"><a href="/books/type/mobi">所有mobi书籍</a></span></li><li><em>&gt;&gt;</em> &nbsp; <span class="ebook-type r3"><a href="/books/type/epub">所有ePub书籍</a></span></li><li><em>&gt;&gt;</em> &nbsp; <span class="ebook-type r3"><a href="/books/type/txt">所有TXT书籍</a></span></li></ul>
      <br>
    
    <h2>谁赞这本书</h2>
    <ul class="followers">
      <li class="follower">
        <div class="follower-avatar">
          <a title="huacnlee" href="/people/4e8190f86cccb35f9800000e"><img src="http://img.lianwu.us/avatar/4e8190f86cccb35f9800000e/small_1317114105_1.jpg" alt="Small_1317114105_1"></a>
        </div>
        <div class="nickname center">
          <a href="/people/4e8190f86cccb35f9800000e">huacnlee</a>
        </div>
      </li>

      <li class="follower">
        <div class="follower-avatar">
          <a title="乱世浮僧谢邪妮" href="/people/4ea6584a6cccb351970002f9"><img src="http://img.lianwu.us/avatar/4ea6584a6cccb351970002f9/small_4ea6584a6cccb351970002f9_1.jpg" alt="Small_4ea6584a6cccb351970002f9_1"></a>
        </div>
        <div class="nickname center">
          <a href="/people/4ea6584a6cccb351970002f9">乱世浮僧谢邪妮</a>
        </div>
      </li>

      <li class="follower">
        <div class="follower-avatar">
          <a title="Nowa" href="/people/4e817ef26cccb35eee000002"><img src="http://img.lianwu.us/avatar/4e817ef26cccb35eee000002/small_4e817ef26cccb35eee000002_web.jpg" alt="Small_4e817ef26cccb35eee000002_web"></a>
        </div>
        <div class="nickname center">
          <a href="/people/4e817ef26cccb35eee000002">Nowa</a>
        </div>
      </li>

    </ul>
    
    <h2>喜欢这本书就去买一本吧</h2>
    <div class="hot-books clearfix cps-items">
      <div class="fl hot-book">
        <div class="bookcover">
          <a target="_blank" href="http://www.amazon.cn/%E6%97%B6%E9%97%B4%E6%97%85%E8%A1%8C%E8%80%85%E7%9A%84%E5%A6%BB%E5%AD%90-%E5%A5%A5%E5%BE%B7%E4%B8%BD%E2%80%A2%E5%B0%BC%E8%8A%AC%E6%A0%BC/dp/B0011C3EH2?SubscriptionId=AKIAIZ2HSCS4CAOCHA3A&amp;tag=shuim-23&amp;linkCode=xm2&amp;camp=2025&amp;creative=165953&amp;creativeASIN=B0011C3EH2"><img src="http://ec4.images-amazon.com/images/I/51ezE7azUDL._SL75_.jpg" alt="51eze7azudl._sl75_"></a>
          <span class="discount r3">8折</span>
        </div>
        <div class="title center">
          <a target="_blank" href="http://www.amazon.cn/%E6%97%B6%E9%97%B4%E6%97%85%E8%A1%8C%E8%80%85%E7%9A%84%E5%A6%BB%E5%AD%90-%E5%A5%A5%E5%BE%B7%E4%B8%BD%E2%80%A2%E5%B0%BC%E8%8A%AC%E6%A0%BC/dp/B0011C3EH2?SubscriptionId=AKIAIZ2HSCS4CAOCHA3A&amp;tag=shuim-23&amp;linkCode=xm2&amp;camp=2025&amp;creative=165953&amp;creativeASIN=B0011C3EH2">时间旅行者的妻子</a> <br>
          <span class="price del">￥ 29.90</span> <br>
          <span class="price">￥ 24.80</span>
        </div>
      </div>
      <div class="fl hot-book">
        <div class="bookcover">
          <a target="_blank" href="http://www.amazon.cn/The-Time-Traveler-s-Wife-Niffenegger-Audrey/dp/0099464462?SubscriptionId=AKIAIZ2HSCS4CAOCHA3A&amp;tag=shuim-23&amp;linkCode=xm2&amp;camp=2025&amp;creative=165953&amp;creativeASIN=0099464462"><img src="http://ec4.images-amazon.com/images/I/519yt%2Bh4fFL._SL75_.jpg" alt="519yt%2bh4ffl._sl75_"></a>
        </div>
        <div class="title center">
          <a target="_blank" href="http://www.amazon.cn/The-Time-Traveler-s-Wife-Niffenegger-Audrey/dp/0099464462?SubscriptionId=AKIAIZ2HSCS4CAOCHA3A&amp;tag=shuim-23&amp;linkCode=xm2&amp;camp=2025&amp;creative=165953&amp;creativeASIN=0099464462">The Time Traveler's Wife</a> <br>
          <span class="price">￥ 95.00</span>
        </div>
      </div>
      <div class="fl hot-book">
        <div class="bookcover">
          <a target="_blank" href="http://www.amazon.cn/%E6%97%B6%E9%97%B4%E6%97%85%E8%A1%8C%E8%80%85%E7%9A%84%E5%A6%BB%E5%AD%90-%E5%A5%A5%E5%BE%B7%E4%B8%BD%E2%80%A2%E5%B0%BC%E8%8A%AC%E6%A0%BC/dp/B002YQ48BA?SubscriptionId=AKIAIZ2HSCS4CAOCHA3A&amp;tag=shuim-23&amp;linkCode=xm2&amp;camp=2025&amp;creative=165953&amp;creativeASIN=B002YQ48BA"><img src="http://ec4.images-amazon.com/images/I/412y%2B%2BAkq0L._SL75_.jpg" alt="412y%2b%2bakq0l._sl75_"></a>
        </div>
        <div class="title center">
          <a target="_blank" href="http://www.amazon.cn/%E6%97%B6%E9%97%B4%E6%97%85%E8%A1%8C%E8%80%85%E7%9A%84%E5%A6%BB%E5%AD%90-%E5%A5%A5%E5%BE%B7%E4%B8%BD%E2%80%A2%E5%B0%BC%E8%8A%AC%E6%A0%BC/dp/B002YQ48BA?SubscriptionId=AKIAIZ2HSCS4CAOCHA3A&amp;tag=shuim-23&amp;linkCode=xm2&amp;camp=2025&amp;creative=165953&amp;creativeASIN=B002YQ48BA">时间旅行者的妻子</a> <br>
          <span class="price">￥ 29.90</span>
        </div>
      </div>
    </div>
    <br>
    
    <h2>你可能还会喜欢</h2>
    <div class="hot-books clearfix">
              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e81d8f76cccb31377000002"><img src="http://img.lianwu.us/bookcover/4e81d8f76cccb31377000002/small_1317132535_s2768378.jpeg" alt="Small_1317132535_s2768378"></a>
        </div>
        <div class="title center">
          <a href="/books/4e81d8f76cccb31377000002">三体</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e81d9a06cccb31377000010"><img src="http://img.lianwu.us/bookcover/4e81d9a06cccb31377000010/small_1317132704_s3078482.jpeg" alt="Small_1317132704_s3078482"></a>
        </div>
        <div class="title center">
          <a href="/books/4e81d9a06cccb31377000010">三体Ⅱ</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e81da356cccb313b000000b"><img src="http://img.lianwu.us/bookcover/4e81da356cccb313b000000b/small_1317132853_s4538428.jpeg" alt="Small_1317132853_s4538428"></a>
        </div>
        <div class="title center">
          <a href="/books/4e81da356cccb313b000000b">三体Ⅲ</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e85d3b16cccb3595a00011c"><img src="http://img.lianwu.us/bookcover/4e85d3b16cccb3595a00011c/small_4e85d3b16cccb3595a00011c_s3696740.jpeg" alt="Small_4e85d3b16cccb3595a00011c_s3696740"></a>
        </div>
        <div class="title center">
          <a href="/books/4e85d3b16cccb3595a00011c">银河系漫游指南</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4e82da706cccb37e65000002"><img src="http://img.lianwu.us/bookcover/4e82da706cccb37e65000002/small_1317198448_s1328663.jpg" alt="Small_1317198448_s1328663"></a>
        </div>
        <div class="title center">
          <a href="/books/4e82da706cccb37e65000002">基地</a>
        </div>
      </div>

              <div class="fl hot-book">
        <div class="bookcover">
          <a href="/books/4eb552d86cccb336d5001159"><img src="http://img.lianwu.us/bookcover/4eb552d86cccb336d5001159/small_4eb552d86cccb336d5001159_s4601929.jpg" alt="Small_4eb552d86cccb336d5001159_s4601929"></a>
        </div>
        <div class="title center">
          <a href="/books/4eb552d86cccb336d5001159">肠子</a>
        </div>
      </div>

    </div>
    
  </div>
</div>

	</div>
</div>
</body>
</html>