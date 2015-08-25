<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt' %>
<%@ page import="org.springframework.security.ui.AbstractProcessingFilter" %>
<%@ page import="org.springframework.security.ui.webapp.AuthenticationProcessingFilter" %>
<%@ page import="org.springframework.security.AuthenticationException" %>

<!-- Not used unless you declare a <form-login login-page="/login.jsp"/> element -->

<html>
  <head>
    <title>CUSTOM SPRING SECURITY LOGIN</title>
  </head>

  <body>
  <div class="container_12">
    
        <div class="grid_12">
        <div class="alert alert-error">
            用户名或密码错误，请重新输入。        </div>
    </div>
    <div class="clear"></div>
        <div class="grid_6">
    <h2>登录</h2>
    <form accept-charset="UTF-8" action="http://17startup.com/user/login" method="POST">    <div class="control">
        <label for="email">电邮</label>        <input type="text" id="email" value="" name="email" class="span_4" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhEAAQAPZVADsBAkECBFEGCmQDBGoEB3UIDWcOEn0dHnZGRnhBQntbXIILEoIMEoENFI8QGI0UHJMQGKERGqURGq4QGIsaIZ4fJq8WI68YJrQXJLIZJbgZJ7gZKLwcK74dLa4gKq4iLLUgLaApMLwpNrwsOKUzOcAfL8EhMcUjM8YkNMgoOJw+QKY8QtA5Sdo/T6dARa5FS6tOUr9MUqRRVrRVWY9pa5BmaZBqbMRKVNlRYclud/14iLyIiKuoqNGbneyPmfOAkPeElNGvsNO3t+aorfGjq+y/w8zMzNXU1N3S0t7W1t3a2uLR0e3U1vLd4OLh4ejo6Png4/bx8ff09Pr5+f7+/v///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAFYALAAAAAAQABAAAAfEgFaCVlCFhoWDgzk6QD+Oj0A6OYMyLSwdJR2amywtMoITKZgbFRsYIRqaKROCEpgZO1IkMFM7GJgSghGZKEVVQktVQyclJRG6JR8uM1NVVVEvKx7GyDHO11VUVTHUVgEECUlIR+RHSUoJBAGCAAMHKgpO8koIKgcDAIICCwwGRk89gjzhUYABAwGCGly4IIIIkxE3mvgAkeFCA0EPMBQ7gcNEio7FMDwQVAOCBQ6bNnGwAKHGIBoUHMicKZOCjUQ4cw4KBAA7&quot;); padding-right: 18px; background-repeat: no-repeat; background-attachment: scroll; background-position: right center; border: 1px solid rgb(192, 31, 47); width: 334px;">    </div>
    <div class="control">
        <label for="password">密码</label>        <input type="password" id="password" name="password" class="span_4" style="background-image: url(&quot;data:image/gif;base64,R0lGODlhEAAQAPZVADsBAkECBFEGCmQDBGoEB3UIDWcOEn0dHnZGRnhBQntbXIILEoIMEoENFI8QGI0UHJMQGKERGqURGq4QGIsaIZ4fJq8WI68YJrQXJLIZJbgZJ7gZKLwcK74dLa4gKq4iLLUgLaApMLwpNrwsOKUzOcAfL8EhMcUjM8YkNMgoOJw+QKY8QtA5Sdo/T6dARa5FS6tOUr9MUqRRVrRVWY9pa5BmaZBqbMRKVNlRYclud/14iLyIiKuoqNGbneyPmfOAkPeElNGvsNO3t+aorfGjq+y/w8zMzNXU1N3S0t7W1t3a2uLR0e3U1vLd4OLh4ejo6Png4/bx8ff09Pr5+f7+/v///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAAFYALAAAAAAQABAAAAfEgFaCVlCFhoWDgzk6QD+Oj0A6OYMyLSwdJR2amywtMoITKZgbFRsYIRqaKROCEpgZO1IkMFM7GJgSghGZKEVVQktVQyclJRG6JR8uM1NVVVEvKx7GyDHO11VUVTHUVgEECUlIR+RHSUoJBAGCAAMHKgpO8koIKgcDAIICCwwGRk89gjzhUYABAwGCGly4IIIIkxE3mvgAkeFCA0EPMBQ7gcNEio7FMDwQVAOCBQ6bNnGwAKHGIBoUHMicKZOCjUQ4cw4KBAA7&quot;); padding-right: 18px; background-repeat: no-repeat; background-attachment: scroll; background-position: right center; border: 1px solid rgb(192, 31, 47); width: 334px;">    </div>
    <div class="control">
        <input type="checkbox" value="1" name="remember">        <label for="remember">在这台电脑上记住我的登录</label>        <a href="http://17startup.com/user/forget">忘记密码？</a>    </div>
    <div class="control">
        <input type="submit" value="登录">    </div>
    </form>
    <div class="sep-20"></div>

    <h2>加入</h2>
    <p>
        还没注册？<a class="mini-btn" href="http://17startup.com/user/new">立即加入</a>        最全的初创公司数据库和点评社区
    </p>
</div>
<div class="grid_6">
    <h2>3个加入的理由</h2>
    <ul>
        <li>
            <h5>发现</h5>
            <p>在最新最全的初创公司数据库发现创业动向。</p>
        </li>
        <li>
            <h5>交流</h5>
            <p>与创始人、投资者、分析师和用户直接交流。</p>
        </li>
        <li>
            <h5>贡献</h5>
            <p>参与讨论，启发互联网最有创新力的人。</p>
        </li>
    </ul>
</div>    <div class="clear"></div>
</div>


























    <h1>CUSTOM SPRING SECURITY LOGIN</h1>

	<P>Valid users:
	<P>
	<P>username <b>rod</b>, password <b>koala</b>
	<br>username <b>dianne</b>, password <b>emu</b>
	<br>username <b>scott</b>, password <b>wombat</b>
	<br>username <b>peter</b>, password <b>opal</b>
	<p>

    <%-- this form-login-page form is also used as the
         form-error-page to ask for a login again.
         --%>
    <c:if test="${not empty param.login_error}">
      <font color="red">
        Your login attempt was not successful, try again.<br/><br/>
        Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>.
      </font>
    </c:if>

    <form name="f" action="<c:url value='j_spring_security_check'/>" method="POST">
      <table>
        <tr><td>User:</td><td><input type='text' name='j_username' value='<c:if test="${not empty param.login_error}"><c:out value="${SPRING_SECURITY_LAST_USERNAME}"/></c:if>'/></td></tr>
        <tr><td>Password:</td><td><input type='password' name='j_password'></td></tr>
        <tr><td><input type="checkbox" name="_spring_security_remember_me"></td><td>Don't ask for my password for two weeks</td></tr>

        <tr><td colspan='2'><input name="submit" type="submit"></td></tr>
        <tr><td colspan='2'><input name="reset" type="reset"></td></tr>
      </table>

    </form>

  </body>
</html>
