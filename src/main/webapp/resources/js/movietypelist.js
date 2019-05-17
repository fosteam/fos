//# sourceURL=dynamicScript.js
$(function () {
    $('#login').click(function () {
        document.getElementById("background").className = 'layui-anim layui-anim-scaleSpring';
        document.getElementById("background").style.display = 'block';
        $("#search-bar").css("display","none");
        $("#search-bar").removeClass("yijingdianjile");
    })
    $('#close').click(function () {
        document.getElementById("background").className = 'animated fadeOutUpBig';
    })

    $('#register').click(function () {
        document.getElementById("background1").className = 'layui-anim layui-anim-scaleSpring';
        document.getElementById("background1").style.display = 'block';
        document.getElementById("text1").style.display = 'block';
        document.getElementById("text2").style.display = 'none';
        $("#search-bar").css("display","none");
        $("#search-bar").removeClass("yijingdianjile");
    })
    $('#close1').click(function () {
        document.getElementById("background1").className = 'animated fadeOutUpBig';
        $('#firstinfo').removeClass()
        $('#secondinfo').removeClass()
        document.getElementById("secondinfo").style.display = 'none';
        document.getElementById("text1").style.display = 'block';
        document.getElementById("text2").style.display = 'none';
        $("#progress-bar-inside").css("width","50%");
        document.getElementById("next").style.display='block';
        document.getElementById("submit-yes1").style.display='none';


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
        document.getElementById("next").style.display='block';
        document.getElementById("submit-yes1").style.display='none';
        document.getElementById("text2").className = 'animated fadeOutLeft';
        document.getElementById("text2").style.display = 'none';
        document.getElementById("text1").className = 'animated fadeInRight';
        document.getElementById("text1").style.display = 'block';
        $("#progress-bar-inside").css("width","50%");
    })

    $('#next').click(function () {
        document.getElementById("front").style.display = 'block';
        document.getElementById("firstinfo").className = 'animated fadeOutRight';
        document.getElementById("secondinfo").className = 'animated fadeInLeft';
        document.getElementById("secondinfo").style.display = 'block';
        document.getElementById("text1").className = 'animated fadeOutLeft';
        document.getElementById("text1").style.display = 'none';
        document.getElementById("text2").className = 'animated fadeInLeft';
        document.getElementById("text2").style.display = 'block';
        document.getElementById("next").style.display='none';
        document.getElementById("submit-yes1").style.display='block';
        $("#progress-bar-inside").css("width","100%");
    })

    $('#submit-yes1').click(function () {
            var user = {};
            user.userName = $('#user-name').val();
            user.password = $('#password').val();
            user.age=$('#age').val();
            user.email=$('#email').val();
            user.phone=$('#phone').val();
            user.sex=$('#sex option:selected') .val();
            /*获取的是上传图片的输入流*/
            var userImg = $('#userImg')[0].files[0];
            //在ajax中传递的参数
            var formData = new FormData();
            //参数的内容，分别是上面的user和userImg
            formData.append('userImg', userImg);
            formData.append('userString', JSON.stringify(user));
            /*使用ajax提交到后台*/
            $.ajax({
                url: '/filmos/user/register',
                type: 'post',
                data: formData,
                contentType: false,
                processData: false,
                cache: false,
                success: function (data) {
                    if (data.success) {
                        $.toast('提交成功！');
                    } else {
                        $.toast('提交失败！' + data.errMsg);
                    }
                }
            })

    })

});