<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>咨询详情</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/info/news.css">
    <html>
<body bgcolor="#f0f0f0">
<div id="nav"></div>
<div class="layui-container" id="container">
    <h1 class="title">新闻</h1>
    <br><br><br><br><br>
    <div class="layui-row layui-col-space30">

        <!-- 新闻主体 -->
        <div class="layui-col-lg7 layui-col-lg-offset1" style="width: 66%;">
            <div id="news">
                <!-- 新闻标题 -->
                <blockquote class="layui-elem-quote">
                    <div class="newsTitile">
                        <!-- 插入新闻标题 -->
                        新闻标题
                    </div>
                </blockquote>

                <!-- 发布日期 -->
                <div class="newsDate">
                    <!-- 插入发布日期 -->
                    2019-06-02
                </div>

                <!-- 消息来源 -->
                <a href="">
                    <div class="newsAuthor">
                        <!-- 插入消息来源 -->
                        admin
                    </div>
                </a>

                <br><br>

                <!-- 新闻图片 -->
                <div class="newsPic">

                    <!-- 插入新闻图片 -->
                    <img src="img/1.jpg">
                </div>

                <!-- 新闻内容 -->
                <div class="newsText">

                    <!-- 插入新闻内容 -->
                    <p>

                    </p>
                </div>

            </div>
        </div>

        <!-- 相关热点 -->
        <div class="layui-col-lg3 ">
            <div id="hotTopic">
                <div id="HTtitle">
                   最新咨询!!!
                </div>

                <!-- 展示效果 -->
                <!--单个话题 -->
                <span class="hottopiccontext">
                <div class="HT">
                    <div class="layui-row">
                        <!-- 话题图片 -->


                        <div class="layui-col-lg9 ">
                            <!-- 话题关键字 -->
                            <a href="">
                                <div class="HTkeyword">
                                </div>
                            </a>
                            <!-- 话题简述 -->
                            <a href="">
                                <div class="HTinfo">

                                </div>
                            </a>
                        </div>

                    </div>
                    <!-- /单个话题 -->
                </div>
            </span>


            </div>
        </div>
    </div>
</div>
<div id="buttom"></div>

<script src="${pageContext.request.contextPath}/resources/layui.all.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/info/info.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/common/common.js"></script>
<script>
    $ = layui.$
    //调用ajax实现页面的局部刷新,将iframe的页面加载出来
    $("#nav").load("/filmos/nav");
    $("#bottom").load("/filmos/bottom");
</script>

</body>
</html>