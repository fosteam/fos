$(function () {
    $('#login').click(function () {
        document.getElementById("background").className = 'layui-anim layui-anim-scaleSpring';
        document.getElementById("background").style.display = 'block';
    })
    $('#close').click(function () {
        document.getElementById("background").className = 'animated fadeOutUpBig';
    })

    $('#register').click(function () {
        document.getElementById("background1").className = 'layui-anim layui-anim-scaleSpring';
        document.getElementById("background1").style.display = 'block';
        document.getElementById("text1").style.display = 'block';
        document.getElementById("text2").style.display = 'none';
    })
    $('#close1').click(function () {
        document.getElementById("background1").className = 'animated fadeOutUpBig';
        $('#firstinfo').removeClass()
        $('#secondinfo').removeClass()
        document.getElementById("secondinfo").style.display = 'none';
        $("#submit1").html($("#submit1").html().replace("提交","下一步"))
        document.getElementById("text1").style.display = 'block';
        document.getElementById("text2").style.display = 'none';
        $("#progress-bar-inside").css("width","50%");

    });
    $('#search').click(function () {


       if($("#search-bar").hasClass("yijingdianjile")){
           $("#search-bar").css("display","none");
           $("#search-bar").removeClass("yijingdianjile");
       }else {
           document.getElementById("search-bar").className = 'animated flipInX';
           $("#search-bar").css("display","block");
           $("#search-bar").addClass("yijingdianjile");

       }
    });
    $('#front').click(function () {
        document.getElementById("text1").style.display = 'block';
        document.getElementById("secondinfo").className = 'animated fadeOutLeft';
        document.getElementById("firstinfo").className = 'animated fadeInRight';
        document.getElementById("secondinfo").style.display = 'none';
        document.getElementById("front").style.display = 'none';
        $("#submit-yes1").html($("#submit-yes1").html().replace("提交","下一步<br/>"))
        document.getElementById("text2").className = 'animated fadeOutLeft';
        document.getElementById("text2").style.display = 'none';
        document.getElementById("text1").className = 'animated fadeInRight';
        document.getElementById("text1").style.display = 'block';
        $("#progress-bar-inside").css("width","50%");
    })

    $('#submit1').click(function () {
        document.getElementById("front").style.display = 'block';
        document.getElementById("firstinfo").className = 'animated fadeOutRight';
        document.getElementById("secondinfo").className = 'animated fadeInLeft';
        document.getElementById("secondinfo").style.display = 'block';
        $("#submit-yes1").html($("#submit-yes1").html().replace("下一步","提交"))
        document.getElementById("text1").className = 'animated fadeOutLeft';
        document.getElementById("text1").style.display = 'none';
        document.getElementById("text2").className = 'animated fadeInLeft';
        document.getElementById("text2").style.display = 'block';
        $("#progress-bar-inside").css("width","100%");
    })

});