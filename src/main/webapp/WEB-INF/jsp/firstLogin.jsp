<%@ page import="java.util.List" %>
<%@ page import="com.yhj.food.pojo.Shop" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
    <link href="/static/css/firstLogin.css" rel="stylesheet"/>
</head>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
<body>
<div id="header">
    <ul>
        <span><img src="/static/images/Logo1.png" width="136" height="60"/></span>
        <li><a href="#">首页</a></li>
        <li><a href="/elm/dingDan">我的订单</a></li>
        <li><a href="#">加盟合作</a></li>
        <li><a href="/kefu">我的客服</a></li>
        <li><a href="#">规则中心</a></li>
        <li><img src="/static/images/Phone1.png"/><a href="#">手机应用</a></li>
        <%
            Object login=session.getAttribute("login");
            Object name=session.getAttribute("userName");
            if(login.equals(1)){
        %>
        <li style="text-align: left;"><span style="color:#CCCCCC; font-size: 14px;margin-left:10px;">欢迎您:<%=name%></span></li>
        <li></li>
        <%
        }else{
        %>
        <li><img src="/static/images/People1.png"/><a href="/elm/login">登录</a>/<a href="/elm/register">注册</a></li>

        <%
            }
        %>

    </ul>
</div>
<div id="center">
    <div id="center-left">
        <ul>
            <li><a href="#">全部商家</a></li>
            <li><a href="#">美食&gt;快餐便当&gt;特色系列</a></li>
            <li><a href="#">特色菜系&gt;异国料理&gt;小吃夜宵</a></li>
            <li><a href="#">甜品饮品&gt;果蔬生鲜</a></li>
            <li><a href="#">商品超市&gt;鲜花果蔬</a></li>
            <li><a href="#">医药健康</a></li>
            <li><a href="#">早餐&gt;午餐&gt;下午茶</a></li>
        </ul>
    </div>
    <div id="center-right">
        <ul id="list">
            <li class="bg-cyn current"></li>
            <li class="bg-tom"></li>
            <li class="bg-blu"></li>
            <li class="bg-mar"></li>
        </ul>
        <script>
            var slider_lis = document.getElementById('list').getElementsByTagName('li'),
                li_idx = 0;
            var slider_timer = setInterval(function () {
                for (var i = 0; i < slider_lis.length; i++) {
                    slider_lis[i].className = slider_lis[i].className.replace(' current', '');
                }
                slider_lis[li_idx].className = slider_lis[li_idx].className + ' current';
                if (li_idx >= slider_lis.length - 1) {
                    li_idx = 0;
                } else {
                    li_idx++;
                }
            }, 1500);  // 切换时间1s
        </script>
    </div>
</div>
<!--中间重要部分-->
<div id="importent">
    <div id="importent-top"><img th:src="@{/static/images/11.png}"/></div>
    <div id="importent-center">
        <p>当前位置：<span>${areaName}</span><a href="/elm/areaLogin">【切换城市】</a></p>
        <form action="/sour/doSource" method="post" >
            <input type="source" name="sourName" placeholder="搜索商家，美食..."/>
        </form>
    </div>
    <div id="importent-bottom">
        <dl>
            <dt>
                <ul>
                    <p>商家分类</p>
                    <li><a href="#">全部商家</a></li>
                    <li><a href="#">美食</a></li>
                    <li><a href="#">快餐便当</a></li>
                    <li><a href="#">特色菜系</a></li>
                    <li><a href="#">异国料理</a></li>
                    <li><a href="#">小吃夜宵</a></li>
                    <li><a href="#">甜品饮品</a></li>
                    <li><a href="#">果蔬生鲜</a></li>
                    <li><a href="#">商店超市</a></li>
                </ul>
                <ul>
                    <li><a href="#">鲜花绿植</a></li>
                    <li><a href="#">医药健康</a></li>
                </ul>
                <ul>
                    <li><a href="#">全部</a></li>
                    <li><a href="#">面包蛋糕</a></li>
                    <li><a href="#">炸鸡小吃</a></li>
                    <li><a href="#">甜品</a></li>
                    <li><a href="#">水果</a></li>
                    <li><a href="#">奶茶果汁</a></li>
                    <li><a href="#">咖啡</a></li>
                    <li><a href="#">鸭脖芦苇</a></li>
                </ul>
            </dt>
            <ol>
                <%
                    List<Shop> list=(List<Shop>)request.getAttribute("shop");
                    for (Shop shop:list){
                %>
                     <li>
                     <h1><img src="<%=shop.getUrl()%>" width="82" height="82"/></h1>
                    <p><a href="/elm/getShopAll/<%=shop.getShopName()%>"><%=shop.getShopName()%></a></p>
                    <h3><img src="/static/images/17.png"/></h3>
                    <h6>配送费:<%=shop.getShopPrise()%>元</h6>
                    <h5><%=shop.getShopMost()%></h5>
                     </li>
                <%
                    }
                %>
            </ol>
        </dl>
    </div>
</div>
<div id="center-center">
    <div style=" border:1px solid #000; border-radius:3px; width:550px;height:300px;border:#ccc solid 1px;"
         id="dituContent">
        <script type="text/javascript">
            //创建和初始化地图函数：
            function initMap() {
                createMap();//创建地图
                setMapEvent();//设置地图事件
                addMapControl();//向地图添加控件
            }

            //创建地图函数：
            function createMap() {
                var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
                var point = new BMap.Point(116.520384, 39.874386);//定义一个中心点坐标
                map.centerAndZoom(point, 16);//设定地图的中心点和坐标并将地图显示在地图容器中
                window.map = map;//将map变量存储在全局
            }

            //地图事件设置函数：
            function setMapEvent() {
                map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
                map.enableScrollWheelZoom();//启用地图滚轮放大缩小
                map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
                map.enableKeyboard();//启用键盘上下左右键移动地图
            }

            //地图控件添加函数：
            function addMapControl() {
                //向地图中添加缩放控件
                var ctrl_nav = new BMap.NavigationControl({
                    anchor: BMAP_ANCHOR_TOP_LEFT,
                    type: BMAP_NAVIGATION_CONTROL_LARGE
                });
                map.addControl(ctrl_nav);
                //向地图中添加缩略图控件
                var ctrl_ove = new BMap.OverviewMapControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: 1});
                map.addControl(ctrl_ove);
                //向地图中添加比例尺控件
                var ctrl_sca = new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT});
                map.addControl(ctrl_sca);
            }


            initMap();//创建和初始化地图
        </script>
    </div>
    <div id="center-hidden">
        <form th:action="@{/jianyi}" method="post">
            <input type="text" placeholder="联系人姓名">
            <input type="text" placeholder="请输入你的电话,以便以后联系你">
            <input type="text" placeholder="反馈意见">
            <input type="submit" name="button" id="button" value="提交信息">
        </form>
    </div>
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
