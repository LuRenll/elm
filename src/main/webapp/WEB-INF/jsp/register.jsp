
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <link href="/static/css/register.css" rel="stylesheet"/>
</head>
<body id="all">
<div class="top">
    <div class="topimg"> <a href="https://www.ele.me"><img src="/static/images/LoginLogo.png" width="338" height="75"/></a> </div>
</div>
<!--中部-->
<div class="center">
    <div class="cenLeft"><img src="/static/images/banner-app.75596728.png" width="445" height="382"></div>
    <div class="cenRight">
        <form method="post" action="/elm/doAdd" >
            <table width="100%" height="381" border="0">
                <tbody>
                <tr>
                    <td height="62" align="center"><span class="login">注册</span></td>
                </tr>
                <tr>
                    <td height="56" align="center"><input class="user" name="userName" type="text" id="userName" placeholder="用户名" required pattern="[\u4e00-\u9fa5]{2,6}" required oninvalid="setCustomValidity('用户名请填写2-6位的汉字')" oninput="setCustomValidity('')"></td>
                </tr>
                <tr>
                    <td height="52" align="center"><input class="user" name="email" type="text" id="email" placeholder="电子邮箱" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" required oninvalid="setCustomValidity('邮箱请按照.@*.com形式填写')" oninput="setCustomValidity('')"></td>
                </tr>
                <tr>
                    <td height="57" align="center"><input class="pwd" name="userPwd" type="password" id="userPwd" placeholder="密码" required pattern="^[a-zA-Z0-9]{8,16}$" required oninvalid="setCustomValidity('密码为8-16位的字符')" oninput="setCustomValidity('')"></td>
                </tr>
                <tr>
                    <td height="57" align="center"><a class="xieyi" href="#">《使用条款和协议》</a></td>
                </tr>
                <tr>
                    <td align="center"><input class="btn" type="submit" id="submit" value="同意协议并注册"></td>
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
