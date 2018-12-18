<%@ page import="com.yhj.food.pojo.Room" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>店铺详情页</title>
    <link href="/static/css/shopAll.css" rel="stylesheet"/>
</head>
<body>
<div id="all">
    <div id="header-bg">
        <div id="header">
            <div id="header-top">
                <ul class="left">
                    <a href="/areaLogin"><img src="static/images/Logo1.png"></a>
                    <li><a href="/elm/areaLogin">首页</a></li>
                    <li><a href="/elm/dingDan">我的订单</a></li>
                    <li><a href="#">加盟合作</a></li>
                    <li><a href="/elm/kefu">我的客服</a></li>
                    <li id="guize">
                        <span><a href="#">规则中心</a></span>
                        <span id="phone"><a href="#">手机应用</a></span>
                    </li>
                </ul>
                <ul class="right">
                    <%
                        Object login=session.getAttribute("login");
                        if(login.equals(1)){
                    %>
                    <li><span style="color:#CCCCCC; font-size: 16px;">${userName}</span></li>
                    <%
                    }else{
                    %>
                    <li><a href="/elm/login">登录</a>&nbsp;/&nbsp;<a href="/elm/register">注册</a></li>
                    <%
                        }
                    %>
                     </ul>
            </div>
            <div id="header-zhong">
                <table width="1200" height="140">
                    <tr>
                        <%
                        Object url=request.getAttribute("url");
                        %>
                        <td width="157" rowspan="2" align="right">
                            <img src="<%=url%>" width="140" height="140"/>
                        </td>
                        <td width="584" height="70" class="indent">${shopName}</td>
                        <td width="171" align="center">起送价</td>
                        <td width="175" align="center">配送费</td>
                        <td width="200" align="center">平均送达速度</td>
                    </tr>
                    <tr>
                        <td height="70" valign="top" class="xiaoliang">月售3000+份</td>
                        <td align="center" valign="top">20元</td>
                        <td align="center" valign="top">远距离配送费¥20</td>
                        <td align="center" valign="top">26分钟</td>
                    </tr>
                </table>
            </div>
            <div id="header-bottom">
                <ul class="left">
                    <li><a href="#">所有商品</a></li><span>|</span>
                    <li><a href="#">评价</a></li><span>|</span>
                    <li><a href="#">商家资质</a></li>
                </ul>
                <ul class="right">
                    <li><a href="#">默认排序</a></li><span>|</span>
                    <li><a href="#">评分</a></li><span>|</span>
                    <li><a href="#">销量</a></li><span>|</span>
                    <li><a href="#">价格</a></li>
                </ul>

                <input name="sousuo" type="text" placeholder="搜索商家，美食..."/>
            </div>

        </div>
    </div>

    <div id="zhong">
        <div id="zhong-left">
            <div id="zhong-div">
                <ul>
                    <li><a href="#">热销&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                    <li><a href="#">特色小吃&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                </ul>
            </div>
            <h1>热销<span>大家喜欢吃，才叫真好吃。</span></h1>
            <%
                List<Room> list=(List<Room>)request.getAttribute("list");
                for (Room room:list){
            %>
            <dl class="left">
                <img src="<%=room.getRoomUrl()%>"/>
                <dt><%=room.getRoomName()%></dt>
                <p>月售<%=room.getRoomMonth()%>份</p>
                <dd><span name="prise"><%=room.getRoomPrise()%>元</span></dd>
                <a href="/elm/payment/<%=room.getRoomPrise()%>/<%=room.getRoomName()%>">立即下单</a>
            </dl>
            <%
                }
            %>
        </div>

        <div id="zhong-right">
            <h1>商家公告</h1>
            <dl>
                <dt>配送说明：</dt>
                <dd>远距离配送费¥4</dd>
                <p>该商户食品安全已由国泰产险承担，食品安全有保障</p>
                <a href="#">举报商家</a>
            </dl>
        </div>
    </div>


    <div id="footer">
        <div class="footer-top"> <img src="/static/images/7.png"/> </div>
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
                <li>
                    <a href="#">互联网药品信息服务资格证书:(沪)-经营性-2016-0011 </a>&nbsp;&nbsp;|
                </li>
                <li><a href="#">增值电信业务许可证 : 沪B2-20150033</a>&nbsp;&nbsp;|</li>
                <li><a href="#">沪ICP备 09007032</a>&nbsp;&nbsp;|</li>
                <li><a href="#">上海工商行政管理 Copyright ©2008-2018 上海拉扎斯信息科技有限公司, All Rights Reserved.</a></li>
            </ul>
        </div>
    </div>



</div>

</body>
</html>
