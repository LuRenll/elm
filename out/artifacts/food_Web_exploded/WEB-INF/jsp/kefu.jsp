<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>客服页面</title>
    <link rel="stylesheet" href="/static/css/kefu.css"/>
    <script language="javascript">
        function tanchu(){
            var i=window.confirm("大哥，我不知道，我只是个打工的啊");
            return i;
        }
    </script>
</head>
<body>
<div class="top">
    <div class="topLogo"><a href="/elm/areaLogin"><img src="static/images/Logo1.png" width="165" height="75"
                                                      alt=""/></a></div>
    <div class="topMain">
        <table width="100%" height="100%" border="0">
            <tr>
                <td id="td1" width="25%" align="center"><a href="/elm/areaLogin">首页</a></td>
                <td id="td2" width="25%" align="center" valign="middle"><a href="/elm/dingDan">我的订单</a></td>
                <td id="td3" width="25%" align="center"><a>加盟合作</a></td>
                <td id="td4" width="25%" align="center"><a href="/elm/kefu">我的客服</a></td>
            </tr>
        </table>
    </div>
    <div class="topRight">
        <table width="100%" height="38" border="0">
            <tr>
                <td width="50%" align="center" valign="middle"><span id="topspan1">规则中心</span></td>
                <td width="50%" align="center" valign="middle"><img id="phone" src="/static/images/Phone1.png"
                                                                    width="30" height="40"/> <span id="topspan2"
                                                                                                   onMouseOver="javascript:showInform();">手机应用</span>
                </td>
            </tr>
        </table>
    </div>
</div>
<header>
    <div id="ti1"><img id="laba" src="static/images/QQ截图20181205090245.png"/> <a class="a1">公告</a> <a class="a2"
                                                                                                            href="@{/jianyi}"><span
            class="new">NEW</span>&nbsp;&nbsp;只要红包用得好，再贵的餐我也买的了！</a></div>
    <div id="ti2">
        <p>常见问题</p>
        <ul>
            <li><img src="static/images/QQ截图20181205114539.png"/><br>
                <br>
                <a class="yi">催单问题</a><br>
                <br>
                <a onClick="tanchu()">订单超时了怎么办？</a><br>
                <a onClick="tanchu()">订单一直没有起手接怎么办？</a><br>
                <a onClick="tanchu()">下单以后如何修改订单信息？</a><br>
                <a onClick="tanchu()">如何催单？</a><br>
                <a onClick="tanchu()">订单超时了为何没有超时赔付？</a><br>
            </li>
            <li><img src="static/images/QQ截图20181205114613.png"/><br>
                <br>
                <a class="yi">退单问题</a><br>
                <br>
                <a onClick="tanchu()">商家拒绝我取消订单怎么办？</a><br>
                <a onClick="tanchu()">订单被取消了怎么办？</a><br>
                <a onClick="tanchu()">申请客服介入后多久可以处理订单？</a><br>
                <a onClick="tanchu()">怎么取消订单？</a><br>
                <a onClick="tanchu()">取消后钱款多久到账？</a><br>
            </li>
            <li><img src="static/images/QQ截图20181205114627.png"/><br>
                <br>
                <a class="yi">活动问题</a><br>
                <br>
                <a onClick="tanchu()">双12小e送福利了</a><br>
                <a onClick="tanchu()">怎么关闭超级会员自动续费功能？</a><br>
                <a onClick="tanchu()">我是新用户么？</a><br>
                <a onClick="tanchu()">为什么没有收到超级会员尊享红包？</a><br>
                <a onClick="tanchu()">我的红包为什么用不了？</a><br>
            </li>
            <li><img src="static/images/QQ截图20181205114641.png"/><br>
                <br>
                <a class="yi">投诉建议</a><br>
                <br>
                <a onClick="tanchu()">怎么投诉？</a><br>
                <a onClick="tanchu()">错送漏送产品怎么办？</a><br>
            </li>
        </ul>
    </div>
    <div id="ti3">
        <p>联系客服</p>
        <img id="zixun" src="static/images/QQ截图20181205150321.png"/> <a class="a3">7*24专业在线咨询</a><br>
        <a class="a4">小e期待为您解决遇到的问题</a> <a class="a5">立即咨询</a> <img id="shu"
                                                                    src="static/images/QQ截图20181205153606.png"/>
        <img id="phone2" src="static/images/QQ截图20181205150336.png"/> <a class="fup">服务热线：6666-4567</a><br>
        <a class="fuh">24小时服务</a></div>
</header>
</body>
</html>
