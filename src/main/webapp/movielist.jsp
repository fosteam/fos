<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>电影库</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common/imagehover.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/movie_list/movie_list.css">
    <html>
<body bgcolor="#f0f0f0" style="z-index: 3">
<div id="nav"></div>

<div class="layui-container" id="container" style="width: 67%">
    <div class="layui-fluid">
        <div id="filter">
            <div class="select-result-year clearfix">
                <!-- 选中的筛选条件列表 -->
                <ul class="select-result">
                </ul>
            </div>
            <div class="select-result-location">
                <ul class="select-result-location">
                </ul>
            </div>

            <div class="select-result-type">
                <ul class="select-result-type">
                </ul>
            </div>

            <button type="reset" class="Sbtn layui-btn layui-btn-danger" id="filter-reset" style="display: none;width: 60px">重置</button>
            <button type="button" class="Sbtn layui-btn layui-btn-normal" id="filter-button" style="display: block;width: 60px">筛选</button>
            <!-- 搜索框 -->
            <input id="Ssearch-bar-text" type="text" name="search" placeholder="搜索电影..." class="layui-input">

        </div>
        </div>

        <!-- 筛选框 -->
        <div id="select" style="display: none;background-color: white" class="">
            <!-- 年份 -->
            <div id="Syear">
                <div class="label">年份：</div>
                <div class="choose">
                    <ul>
                        <a href="javascript:;">
                            <li class="lis-year" date-type="1">2019</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-year" date-type="2">2018</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-year" date-type="3">2017</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-year" date-type="4">2016</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-year" date-type="5">2015</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-year" date-type="6">2014</li>
                        </a>
                    </ul>
                </div>
            </div>
            <!-- 地区 -->
            <div id="Slocation">
                <div class="label">地区：</div>
                <div class="choose">
                    <ul>
                        <a href="javascript:;">
                            <li class="lis-location" date-type="1">中国</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-location" date-type="2">美国</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-location" date-type="3">英格兰及北爱尔兰联合王国</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-location" date-type="4">日本</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-location" date-type="5">韩国</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-location" date-type="6">保加利亚</li>
                        </a>
                    </ul>
                </div>
            </div>
            <!-- 类型 -->
            <div id="Stype">
                <div class="label">类型：</div>
                <div class="choose">
                    <ul>
                        <a href="javascript:;">
                            <li class="lis-type" date-type="1">喜剧</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-type" date-type="2">冒险</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-type" date-type="3">恐怖</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-type" date-type="4">爱情</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-type" date-type="5">动作</li>
                        </a>
                        <a href="javascript:;">
                            <li class="lis-type" date-type="6">文艺</li>
                        </a>
                    </ul>
                </div>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <p>
        </div>
        <h1 class="h1" style="z-index: 3!important;" >电影库</h1>
        <br><br><br><br><br>
        <div class="layui-container">
            <div id="movieList">
                <div id="dianyingliebiao" class="layui-row layui-col-space10">

                </div>
            </div>
            <br><br>
            <div id="demo7" align="center"></div>
        </div>



        <script src="${pageContext.request.contextPath}/resources/layui.all.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/movielist/movielist.js"></script>
        <script>
            $ = layui.$;
            //调用ajax实现页面的局部刷新,将iframe的页面加载出来
            $("#nav").load("/filmos/nav");
            $("#filter-button").click(function(){
                if ($('#select').hasClass('yijingdianji')){
                    $('#select').removeClass('yijingdianji')
                    $("#select").addClass('animated fadeOut');
                    document.getElementById("filter-reset").style.display = 'none';
                    document.getElementById("select").style.display = 'none';
                    $("#filter-button").html('筛选');
                    $('#select').removeClass('animated fadeIn')
                    $('#select').removeClass('animated fadeOut')
                } else {

                    $("#filter-reset").addClass('animated fadeIn');
                    $("#filter-button").html('关闭')
                    document.getElementById("filter-reset").style.display = 'block';
                    $('#select').addClass('animated fadeIn');
                    $('#select').addClass('yijingdianji');
                    document.getElementById("select").style.display = 'block';
                }
                });


        <!-- 分页 -->

            var laypage = layui.laypage,
                layer = layui.layer;
            laypage.render({
                elem: 'demo7',
                count: 100,
                limit: 16,
                layout: ['count', 'prev', 'page', 'next', 'skip'],
                jump: function(obj) {
                    console.log(obj)
                }
            });
        </script>
        <!-- 筛选框逻辑 -->
        <script type="text/javascript">
            $("#Syear li").click(function() {
                var type = $(this).attr("date-type");
                var copyyear = $(this).clone();
                if ($(this).hasClass("selectedYear")) {
                    $(".select-result-year li[date-type='" + type + "']").fadeToggle();
                } else {
                    $(".select-result-year ul").append(copyyear);
                };
                $(this).toggleClass("selectedYear");
            });


            $(".select-result-year ul").delegate("li", "click", function() {
                var type = $(this).attr("date-type");
                $(this).fadeOut();
                $("#Syear li[date-type='" + type + "']").removeClass("selectedYear");
            });


            $("#Slocation li").click(function() {
                var type = $(this).attr("date-type");
                var copyloaction = $(this).clone();
                if ($(this).hasClass("selectedLocation")) {
                    $(".select-result-location li[date-type='" + type + "']").fadeToggle();
                } else {
                    $(".select-result-location ul").append(copyloaction);
                };
                $(this).toggleClass("selectedLocation");
            });


            $(".select-result-location ul").delegate("li", "click", function() {
                var type = $(this).attr("date-type");
                $(this).fadeOut();
                $("#Slocation li[date-type='" + type + "']").removeClass("selectedLocation");
            });


            $("#Stype li").click(function() {
                var type = $(this).attr("date-type");
                var copytype = $(this).clone();
                if ($(this).hasClass("selectedType")) {
                    $(".select-result-type li[date-type='" + type + "']").fadeToggle();
                } else {
                    $(".select-result-type ul").append(copytype);
                };
                $(this).toggleClass("selectedType");
            });


            $(".select-result-type ul").delegate("li", "click", function() {
                var type = $(this).attr("date-type");
                $(this).fadeOut();
                $("#Stype li[date-type='" + type + "']").removeClass("selectedType");
            });
        </script>

</body>
</html>




