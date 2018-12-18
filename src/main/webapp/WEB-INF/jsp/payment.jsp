<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="favicon.png" rel="shortcut icon">
    <link rel="stylesheet" href="/static/css/payment.css">
    <!-- 阿里图标 -->
    <link rel="stylesheet" href="/other/iconfont/iconfont.css">
    <!-- 插件 -->
    <link rel="stylesheet" href="http://g.alicdn.com/sj/dpl/1.5.1/css/sui.min.css">
</head>
<body>
<!-- 头部 -->
<div class="top">
    <div class="topUp">
        <div>当前位置：<a href="javascript:;"></a> > <a href="javascript:;">星巴克专星送</a> > <a href="javascript:;">订单详情</a></div>
        <div id="my">${areaName} <img src="/static/images/down.jpg"></div>
        <ul id="myDown">
            <li>个人中心</li>
            <li>我的收藏</li>
            <li>我的地址</li>
            <li>安全设置</li>
            <li>退出登录</li>
        </ul>
    </div>
    <div class="topDown">
        <div>
            <%
               Object url=request.getAttribute("1");
            %>
            <img src="<%=url%>" height="90px">
            <span>订单信息</span>
        </div>
        <!-- 进度条 -->
        <div class="sui-steps-round">
            <div class="finished">
                <div class="wrap">
                    <div class="round">1</div>
                    <div class="bar"></div>
                </div>
                <label style="margin-left:15px;">选择商品</label>
            </div>
            <div class="current">
                <div class="wrap">
                    <div class="round">2</div>
                    <div class="bar"style="width:140px;background-color:white;"></div>
                </div>
                <label style="margin-left:-10px;">确认订单消息</label>
            </div>
            <div class="todo last">
                <div class="wrap">
                    <div class="round"style="background-color:rgb(0,137,220) !important;">3</div>
                </div>
                <label style="left:-10px !important;width:100px;color:white;">成功提交订单</label>
            </div>
        </div>
    </div>
</div>
<div class="content">

    <div class="contentLeft">
        <div class="title">
            <b>订单详情</b>
            <a th:href="@{/shopMost}"> < 返回商家修改</a>
        </div>
        <div class="titleDown01"style="width:100%;height:48px;line-height:48px;display:flex;font-weight:bolder;color:gray;">
            <div style="flex-grow:5;padding-left:15px;">商品</div>
            <div style="flex-grow:1;padding-left:15px;">份数</div>
            <div style="flex-grow:1;padding-left:15px;">小计(元)</div>
        </div>
        <div class="titleDown02"style="hieght:48px;width:100%;line-height:48px;font-size:17px;font-weight:bolder;border-bottom:1px solid lightgray;">
            <p style="padding-left:15px;">1号购物车</p>
        </div>
        <div class="titleDown03"style="hieght:39px;width:100%;line-height:39px;display:flex;background-color:rgb(252,250,248);">
            <div style="flex-grow:3;padding-left:15px;">${dpName}</div>
            <div style="flex-grow:1;">
                <div class="box">
                    <div id="left">-</div>
                    <div id="center">1</div>
                    <div id="right">+</div>
                </div>
            </div>
            <div style="flex-grow:1;font-size:14px;font-weight:bolder;">￥${prise}/份</div>
        </div>
        <div class="titleDown04"style="height:41px;width:100%;line-height:41px;display:flex;">
            <div style="flex-grow:5;padding-left:15px;">配送费</div>
            <div style="flex-grow:1;padding-left:60px;font-size:14px;font-weight:bolder;">￥3.00/次</div>
        </div>
        <div class="titleDown05"style="height:32px;width:100%;line-height:32px;">
            <p style="float:right;padding-right:30px;font-size:14px;font-weight:bolder;">￥</p>
        </div>

        <div class="titleDown06"style="height:108px;width:100%;line-height:108px;">
            <p style="text-align:right;vertical-align:bottom;font-size:40px;color:red;padding-right:30px;font-weight:bolder;">￥${prise}<b></b></p>
        </div>
        <div class="titleDown07"style="height:39px;width:100%;text-align:right;">
            <p style="font-weight:bolder;padding-right:30px;">共3件商品</p>
        </div>
    </div>
    <div class="contentRight"style="padding:30px;">
        <!-- 添加收货地址 -->
        <div class="contentRight01">
            <b style="font-size:20px;">收货地址</b><br>
            <div class="add"id="add"> + 添加新地址</div>
        </div>
        <!-- 付款方式 -->
        <div class="contentRight02">
            <b style="font-size:20px;">付款方式</b>
            <b style="margin-left:20px;color:orange;">推荐使用在线支付，不用找零，优惠更多</b><br>
            <div>
                <p>在线支付</p>
                <p>支持微信,支付宝,QQ钱包及大部分银行卡</p>
            </div>
            <i class="iconfont icon-youxiajiaosanjiao"style="color:rgb(0,137,220);font-size:40px;position: relative;top:72px;left:-46px;">
                <i class="iconfont icon-duigou"style="position: relative;left:-30px;color:white;"></i>
            </i>
        </div>
        <!-- 红包优惠券 -->
        <div class="contentRight03">
            <b>选择优惠</b>
            <p>使用红包 <a>无可用红包</a></p>
            <p>使用优惠券 <a>网站不支持(仅手机客户端可用)</a></p>
        </div>
        <!-- 配送发票 -->
        <div class="contentRight04">
            <b>其他信息</b>
            <p>配送方式 <i>本订单由 <a href="javascript:;">[蜂鸟专送]</a> 提供配送</i></p>
            <p>发票信息
                <input type="text"value="仅在饿了么APP中支持开发票哦" disabled="disabled">
            </p>
            <p>送餐时间
                <input type="date" value="">
            </p>
            <p>订单备注
                <input type="text" value="">
            </p>
            <p>餐具份数 <img src="/static/images/green-leaf.e6e9f2.png"style="position: relative;top:10px;margin-left:10px;">
                <input type="text"style="width:151px;margin-left:10px;">
            </p>
        </div>
        <!-- 下单 -->
        <div class="contentRight05">
            <div id="error"><button><a href="/elm/dingDan">确认下单</a></button></div>
            <br>
            <div style="width:183px;height:52px;border:1px solid lightgray;color:gray;padding:10px;position: relative;left:500px; margin-top:-45px;">
                <div style="text-align:right;">
                    <p>扫码下载APP</p>
                    <p>APP下载立享优惠</p>
                </div>
                <div><i class="iconfont icon-erweima"style="font-size:60px;position: absolute;top:30px;"></i></div>
                <div><i class="iconfont icon-jiantou"style="font-size:20px;position: absolute;top:30px;right:20px;"></i></div>
                <div style="width:205px;border:1px solid lightgray;position:relative;left:-12px;z-index:900;"id="erweima">
                    <img src="/static/images/big_erweima.png">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 底部 -->
<div class="footer">
    <div>
        <h4>用户帮助</h4>
        <a href="javascript:;">我的客服</a>
    </div>
    <div>
        <h4>商务合作</h4>
        <a href="javascript:;">我要开店</a><br>
        <a href="javascript:;">加盟指南</a><br>
        <a href="javascript:;">市场合作</a><br>
        <a href="javascript:;">开放平台</a>
    </div>
    <div>
        <h4>关于我们</h4>
        <a href="javascript:;">饿了么介绍</a><br>
        <a href="javascript:;">加入我们</a><br>
        <a href="javascript:;">联系我们</a><br>
        <a href="javascript:;">规则中心</a><br>
        <a href="javascript:;">隐私条款</a>
    </div>
    <div>
        <a href="javascript:;">24小时客服热线 : 10105757</a><br>
        <a href="javascript:;">关注我们 <i class="iconfont icon-weixin"></i><i class="iconfont icon-weibo"></i></a>
        <img src="/static/images/appqc.95e532.png" alt="">
    </div>
    <div style="float:left;width:210px;text-align:right;">
        <img src="/static/images/big_erweima.png"width="90px">
        <div style="margin-right:20px !important;">
            <h4>下载手机端</h4>
            <a href="javascript:;">扫一扫，手机订餐方便</a>
        </div>
    </div>
</div>
<div style="text-align:center;line-height:10px; padding-bottom:60px;">
    <p>所有方：上海拉扎斯信息科技有限公司 | 营业执照</p>
    <p style="color:gray;">增值电信业务许可证 : 沪B2-20150033 | 沪ICP备 09007032 | 上海工商行政管理 Copyright ?2008-2018 ele.me, All Rights Reserved.互联网药品信息服务资格证书
        编号：（沪）-经营性-2016-0011</p>
    <p><img src="/static/images/images/picp_bg.e373b3.jpg" alt=""></p>
</div>
<!-- 固定 -->
<div class="fixed"id="fixed">
    <b>应付金额 <i style="color:red;font-size:20px;">${prise}+3(配送费)</i></b>
    <button style="margin-right:200px;margin-left:20px;width:96px;height:40px;color:white;background-color:rgb(248, 96, 95);border-radius:5px;border:0;"><a href="/elm/dingDan">确认下单</a></button>
</div>
<!-- 地址 -->
<div id="mask">
    <div class="address">
        <form action="#" method="get">
            <h1>添加新地址</h1>
            <a style="float:right;position:relative;top:-80px;font-size:20px;"id="close">X</a>
            <div><P style="float:left;">姓名</P> <input type="text" name="kehuName" value="请输入你的姓名" style="width:300px;height:42px; margin-left:45px;"></div>
            <div><P style="float:left;margin-left:-25px;">性别</P> <input type="radio" style="margin-left:45px;">先生 <input type="radio" style=" margin-left:45px";>女士</div>
            <div><P style="float:left; margin-left:-25px;">位置</P> <input type="text" name="kehuAdress" value="请输入小区 大厦或学校"style="width:300px;height:42px;  margin-left:45px;"></div>
            <div style="padding-top: 10px;"><P style="float:left; margin-left:-25px;" name="kehuAdress2">详细地址</P> <input type="text"value="单元，门牌号"style="width:300px;height:42px;  margin-left:23px;"></div>
            <div style="padding-top: 10px;"><P style="float:left; margin-left:-45px;" name="kehuPhone">手机号</P> <input type="text"value="请输入您的手机号"style="width:300px;height:42px;  margin-left:22px;"></div>
            <button style="width:160px;height:42px;background-color:rgb(0, 137, 220);color:white; margin-top:15px; margin-left:-10px">保存</button>
            <button style="width:160px;height:42px;color:gray;background-color:#CCC; margin-left:5px; margin-top:15px">取消</button>

        </form>
    </div>



</div>

<script>
    // 下拉菜单
    my.onmouseover = function(){
        myDown.style.display = "block";
        my.onmouseout = function () {
            myDown.style.display = "";
        }
    }
    // 添加地址
    var close = document.getElementById("close");
    add.onclick = function(){
        mask.style.display = "block";
        close.onclick = function(){
            console.log("点击了");
            mask.style.display = "none";
        }
    }

    //订单提示
    // 验证
    //固定

    // 加减
    if (window.addEventListener) {
        window.addEventListener("load", init);
    } else if (window.attachEvent()) {   //IE浏览器不支持addEventListener
        window.attachEvent("onload", init);  //IE浏览器在写时间的时候必须加上on
    }

    function init() {
        var left = document.getElementById("left");
        left.onclick = function () {
            leftNum();
        }

        var right = document.getElementById("right");
        right.onclick = function () {
            rightNum();
        }

        function leftNum() {
            var center = document.getElementById("center").innerHTML;
            if (center > 1) {   //如果中间显示的数大于1
                center--;       //自减
                currentNum(center);  //中间显示自减后的数值
            } else {
                alert("已经是第一个数了！！！");
            }
        }

        function rightNum() {
            var center = document.getElementById("center").innerHTML;
            if (center < 10) {   //如果中间显示的数值小于最大的数
                center++  //自加
                currentNum(center);   //在中间显示自加后的数值
            } else {
                alert("已经是最后一个数了！！！");
            }
        }

        function currentNum(num) {
            center.innerHTML = num;   //在中间显示相应的数值
        }
    }

</script>
</body>
</html>
