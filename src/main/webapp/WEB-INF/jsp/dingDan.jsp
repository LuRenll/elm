<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/static/css/dingDan.css">
</head>
<body>
<div id="header">
    <ul>
        <span><img src="/static/images/Logo1.png" width="136" height="60"/></span>
        <li><a href="/elm/areaLogin">首页</a></li>
        <li><a href="/recentlyMonth">我的订单</a></li>
        <li><a href="#">加盟合作</a></li>
        <li><a th:href="@{/kefu}">我的客服</a></li>
        <li><a href="#">规则中心</a></li>
        <li><img src="/static/images/Phone1.png" /><a href="#">手机应用</a></li>
        <li><img src="/static/images/People1.png" /><a href="/elm/login">登录</a>/<a href="/elm/register">注册</a></li>
    </ul>
</div>

<div class="all">
    <div class="left">
        <ul>
            <li class="nav"><a href="">个人中心</a></li>
            <li class="nav-header">饿单中心</li>
            <li class="nav-center"><a href="/elm/dingDan">最近订单</a></li>

        </ul>
    </div>
    <div class="right">
        <div class="right-top">
            <h3>最近一个月的饿单-共1张</h3>
            <div class="right-top-right"> <span class="question"><a href="/kefu">热门问题</a></span> <span class="see"><a href="">随时关注饿单状态</a></span> <span class="who"><a href="">谁去拿外卖</a></span> </div>
        </div>

        <div class="right-center-one">
            <div class="right-center-one-top"> <span class="right-center-nav">交易已完成@<a href="" >叽叽吖吖</a></span> <span class="contain"><a href="">退订单</a></span>
                <div class="table">
                    <table>
                        <tr>
                            <td class="col1"><span class="item-name">饿单号：</span>243263685525143</td>
                            <td class="col2"><span class="item-name">下单时间：</span><span class="om_time" data-time="2018-12-08 15:48:00" >2018-12-08 15:48</span></td>
                            <td class="col3"><span class="item-name"><br/>
                餐厅电话：</span>18835534246</td>
                        </tr>
                        <tr>
                            <td class="col1"><span class="item-name"><br/>
                饿单地址：</span>山西管理职业学院 6号楼</td>
                            <td class="col2"><span class="item-name"><br/>联系电话：</span>18252088545,02587423050</td>
                            <td class="col3"><span class="item-name">饿单备注：</span>多放辣</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="right-center-one-under">
                <table class="order">
                    <tr>
                        <th class="under-name">美食篮子</th>
                        <th class="under-rating"></th>
                        <th class="under-price">单价</th>
                        <th class="under-quantity">数量</th>
                        <th class="under-total">小计</th>
                    </tr>
                    <tr>
                        <td class="under-name"><span>牛肉饭</span></td>
                        <td class="under-rating">过期不能点评 </td>
                        <td class="under-price">￥16</td>
                        <td class="under-quantity">1</td>
                        <td class="under-total">￥16</td>
                    </tr>

                </table>
                <table class="order">
                    <tr>
                        <th class="under-name">其他费用</th>
                        <th class="under-rating"></th>
                        <th class="under-price">单价</th>
                        <th class="under-quantity">数量</th>
                        <th class="under-total">小计</th>
                    </tr>
                    <tr>
                        <td class="under-name"> 餐盒费 </td>
                        <td class="under-rating"></td>
                        <td class="under-price">￥1</td>
                        <td class="under-quantity">1</td>
                        <td class="under-total">￥1</td>
                    </tr>
                </table>
                <table class="order">
                    <tr>
                        <td class="under-name">合计</td>
                        <td class="under-rating"></td>
                        <td class="under-price"></td>
                        <td class="under-quantity">2</td>
                        <td class="under-total ">￥37 </td>
                    </tr>
                </table>
            </div>
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
