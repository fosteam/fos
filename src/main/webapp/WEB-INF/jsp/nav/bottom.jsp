<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
        #bottominfo {
            width: 100%;
            height: 240px;
            padding: 30px 0;
            background: black;
            color: white;
            font-size: 14px;
            text-align: center;
        }
    </style>
</head>
<body>
<div id="bottominfo">
    <img id="some" src="${pageContext.request.contextPath}/resources/images/index/blackicon.png" style="width: 84px;height: auto;position:relative;left: 1.3%;cursor: pointer" >
    <br>
    <img src="${pageContext.request.contextPath}/resources/images/index/bgB.png" style="width: 155px;height: auto;position:relative;left: 1%" >
    <br><br><br>
    <p>版权所有：北京理工大学珠海学院  计算机学院16级软件工程  第13实训小组</p>
    <br>
    <p>制作者：付佳琦(组长)  蔡洋  黄俊鹏  彭琮炜  钟佰峰</p>
    <br>
    <p>Copyright © Assessment</p>
</div>


<script>
    $=layui.$;
    var index=10;
    $('#some').click(function () {
        if(index==10){
            layer.msg('你刚刚点了它一下');
        }
        if(index<6){
            layer.msg('还差'+index+'次');
        }
        if(index<1){
            location.href="/filmos/game";
            return false;
        }
        index--;
    })
</script>

</body>
</html>