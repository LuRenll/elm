
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <link href="/static/css/login.css" rel="stylesheet"/>
</head>
<body id="all">
<div class="top">
    <div class="topimg"> <a href="https://www.ele.me"><img src="/static/images/LoginLogo.png" width="338" height="75"/></a> </div>
</div>
<div class="center">
    <div class="cenLeft"><img src="/static/images/banner-app.75596728.png" width="445" height="382"></div>
    <div class="cenRight">
        <form method="get" action="/elm/doLogin" >
            <table width="100%" height="375" border="0">
                <tbody>
                <tr>
                    <td width="50%" height="62" align="center"><span class="login">登陆</span></td>
                    <td width="50%" align="center"><a href="#">手机验证登陆<img class="ph" src="/static/images/icon-mobilephone.png" width="21" height="24"/></a></td>
                </tr>
                <tr>
                    <td height="56" colspan="2" align="center"><input class="user" name="userName" type="text" id="userName" placeholder="用户名/电子邮箱/手机号"
                                                                      required pattern="[\u4e00-\u9fa5]{2,6}" required oninvalid="setCustomValidity('用户名请填写2-6位的汉字')" oninput="setCustomValidity('')"></td>
                </tr>
                <tr>
                    <td height="52" colspan="2" align="center"><input class="pwd" name="userPwd" type="password" id="userPwd" placeholder="密码" required pattern="^[a-zA-Z0-9]{8,16}$" required oninvalid="setCustomValidity('密码为8-16位的字符')" oninput="setCustomValidity('')"></td>
                </tr>
                <tr>
                    <td height="38" align="center"><input type="radio" name="radio" id="radio" value="radio">
                        下次自动登录</td>
                    <td align="center"><a href="#">忘记密码</a></td>
                </tr>
                <tr>
                    <td height="72" colspan="2" align="center"><input class="btn" type="submit" name="submit" id="submit" value="登陆"></td>
                </tr>
                <tr>
                    <td align="center"><img src="/static/images/oauth.c5243751.png" width="111" height="27" alt=""/></td>
                    <td align="center"><a href="/elm/register">免费注册</a></td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>
<!--尾部-->
<div id="footer">
    <div class="footer-bottom">
        <ul>
            <li><a href="#">我要开店</a>&nbsp;&nbsp;|</li>
            <li><a href="#">联系我们</a>&nbsp;&nbsp;|</li>
            <li><a href="#">服务条款与协议</a>&nbsp;&nbsp;|</li>
            <li><a href="#">隐私条款</a>&nbsp;&nbsp;|</li>
            <li><a href="#">营业执照</a>&nbsp;&nbsp;|</li>
            <li><a href="#">加入我们</a>&nbsp;&nbsp;|</li>
            <li><a href="#">蜂鸟配送</a>&nbsp;&nbsp;|</li>
            <li><a href="#">失信人员查询</a></li>
        </ul>
        <ul>
            <li><a href="#">互联网药品信息服务资格证书:(沪)-经营性-2016-0011 </a>&nbsp;&nbsp;|</li>
            <li><a href="#">增值电信业务许可证 : 沪B2-20150033</a>&nbsp;&nbsp;|</li>
            <li><a href="#">沪ICP备 09007032</a>&nbsp;&nbsp;|</li>
            <li><a href="#">上海工商行政管理 Copyright ©2008-2018 上海拉扎斯信息科技有限公司, All Rights Reserved.</a></li>
        </ul>
    </div>
</div>
</body>
</html>
