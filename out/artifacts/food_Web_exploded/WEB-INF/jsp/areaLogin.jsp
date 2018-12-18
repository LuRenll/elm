<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>地址导航页</title>
    <link href="/static/css/areaLogin.css" rel="stylesheet"/>
</head>
<body>
<!--头部-->
<div id="header">
    <ul>
        <li><img src="/static/images/1.png"/></li>
        <li>美好生活&nbsp;触手可得</li>
        <%
          Object login=session.getAttribute("login");
          if(login.equals(1)){
        %>

        <li><span style="color:#CCCCCC; font-size: 16px;">欢迎您:${userName}</span></li>
        <li></li>
        <%
          }else{
        %>
        <li><a href="/elm/register">注册</a>&nbsp;&nbsp;|</li>
        <li><a href="/elm/login">登录</a></li>

        <%
          }
        %>
    <li><a href="#">我要开店</a></li>
    </ul>
    <div class="img"><img src="/static/images/2.png"/></div>
    <div class="form">
        <div class="address"><a href="/elm/firstLogin/太原">太原</a><a href="#"><img src="/static/images/4.png"
                                                                                height="24"/></a>
            <div class="ress">
                <span></span>
                <div class="ress-top">
                    <ul>
                        <li>请选择以下的城市</li>
                        <li>选城市&gt;定位置&gt;叫外卖</li>
                    </ul>
                </div>
                <div class="ress-center">
                    <ul>
                        <li>猜你在</li>
                        <li>临汾</li>
                        <p>
                        <form action="" method="post">
                            <input type="sourse" name="chengshi" placeholder="请输入城市">
                        </form>
                        </p>
                    </ul>
                </div>
                <div class="ress-bottom">
                    <ol>
                         <c:if test="${list!=null}">
                         <c:forEach items="${list}" var="area">
                          <li>
                            <a href="/elm/firstLogin/${area.areaName}">${area.areaName}</a>
                           </li>
                         </c:forEach>
                         </c:if>

                    </ol>

                </div>

            </div>
        </div>
        <form action="" method="post">
            <input type="sourse" placeholder="请输入你的收货地址(写字楼,小区,街道或者学校)">
        </form>
        <a th:href="@{/firstLogin}"><img src="/static/images/3.png"/></a></div>

</div>
<!--尾部-->
<div id="footer">
    <div class="footer-top"><img src="/static/images/7.png"/></div>
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
