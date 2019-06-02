$ = layui.$;

$(function () {

    var movieId = getQueryString('movieid');
    var movieInfoUrl = '/filmos/movie/moviesinfo?movieid=' + movieId;

    $.ajax({
        url: movieInfoUrl,
        type: 'get',
        data: 'json',
        success: function (data) {
            var movie = data.data;
            var tempHtml= '';
            var tempHtml2='';
            var tempHtml3='';
            var time = movie.onTime;

            tempHtml += '<div class="bgbox">' +
                '        <!-- 插入bgpic的图片 -->' +
                '        <img class="bgpic" src="/img'+movie.movieImg+'"/>' +
                '<div class="layui-col-md4 ">' +
                '<div class="moviePic">' +
                '<span class="layui-icon layui-icon-play playbtn"></span>' +
                '<img id="pic" src="/img/' + movie.movieImg + '"></div></div>' +
                '<div class="layui-col-md7 layui-col-md-offset1"><div class="layui-row grid-demo layui-col-space20" style="margin-top: 17px"><br><div class="layui-col-md8">' +
                '    <span class="movieName">' + movie.movieName + '</span>' +
                '    <span class="year">(' + time.substring(0, 5) + ')</span>' +
                '    </div>' +
                '    <div class="score">' + movie.start + '</div>' +
                '    <div class="layui-col-md8">' +
                '    <label>国家地区：</label>' +
                '<span class="country">' + movie.country + '</span>' +
                '    </div>' +
                '    <div class="layui-col-md8">' +
                '    <label>上映时间：</label>' +
                '<span class="movieDate">' + time.substring(0, 11) + '</span></div>' +
                '<div class="layui-col-md12"><label>语言：</label>' +
                '<span class="language">' + movie.language + '</span></div>' +
                '<div class="layui-col-md12"><label>类型：</label>' +
                '<span class="movieType">' + movie.typeName + '</span></div>' +
                '<div class="layui-col-md12"><label>时长：</label>' +
                '<span class=movieTime">' + movie.movieTime + '</span></div>' +
                '<div class="layui-col-md12"><label>导演：</label>' +
                '<span class="master">' + movie.director + '</span></div>' +
                '<div class="layui-col-md12"><label>主演：</label>' +
                '<div class="actors">' + movie.actor + '</div></div></div></div>';
            $('#themovieinfo').html(tempHtml);
            tempHtml2+= '<p style="position: relative;top: 15px;left: 25px;">剧情：</p>' +
                '<p id="movieInfo">' + movie.profile + '</p>';
            $('#profile').html(tempHtml2);

            $.ajax({
                url: '/filmos/comment/moviecomment?movieid='+movieId,
                type: 'get',
                data: 'json',
                success: function (data) {
                    var list=data.data;
                    $.each(list, function (i,item) {
                    tempHtml3 +='<br><br><br><div class="layui-row grid-demo commentLoaction" >' +
                        '<div class="layui-col-md1 ">' +
                        '<div class="CuserPic"><img src="/img'+ item.userImg +'"></div>' +
                        '</div><span style="position: relative;left: 2%;font-size: 26px;background: #009688;color: white;">'+item.start+'分</span>' +
                        '    <div class="layui-col-md9">' +
                        '    <div class="CuserName">'+item.userName+'</div>' +
                        '    </div><br><br><br>' +
                        '    <div class="layui-col-md9 ">' +
                        '    <p class="commentText">'+item.content+'</p></div><br><br><br><br><br><br><br>'+
                        '<div class="layui-col-md9 layui-col-md-offset1">' +
                        '    <div class="commentInfo">' +
                        '    <span class="replyBtn" style="position: relative;left: 48%;">回复</span>' +
                        '    <span class="commentDate" >'+item.createTime+'</span>' +
                        '    </div>' +
                        '    </div>' +
                        '    <br>' +
                        //评论
                        '</div><DIV style="BORDER-TOP: #99999970 1px dashed;OVERFLOW: hidden;HEIGHT: 0px;"></DIV>';

                    $('#moviecomments').html(tempHtml3);
                        $(".replyBtn").click(function () {
                            layer.prompt({
                                title: '写下你的回复',
                                formType:2
                            }, function (text, index) {
                                layer.close(index);
                                layer.msg('已回复');
                            });
                        });
                    })

            }
        });

            $(".playbtn").click(function () {
                layer.open({
                    type: 1,
                    title: false,
                    anim: 0,
                    shade: 0.7,
                    closeBtn: 0, //不显示关闭按钮
                    area: ['1283px', '723px'], //宽高
                    shadeClose: true, //开启遮罩关闭
                    content: '<div  style="background: black" ><video width="1280px" height="720px" controls preload="auto" autoplay="autoplay">' +
                        '<source src="/video'+ movie.movieVideo +'"type="video/mp4"></video></div>'
                });
            });



        }

    });















});










//
//
//
// '    <div class="layui-row grid-demo commentLoaction">' +
// '    <div class="layui-col-md9 layui-col-md-offset1 ">' +
// '    <div class="layui-row grid-demo ">' +
// '    <div class="layui-col-md1 ">' +
// '    <div class="RuserPic"></div>' +
// '    </div>' +
// '    <div class="layui-col-md9">' +
// '    <div class="RuserName">admin</div>' +
// '    </div>' +
// '    <div class="layui-col-md9 ">' +
// '    <p class="RcommentText">' +
// '    1111111111111111111111111111111111111111111' +
// '22222222222222222222222222222222222222222222' +
// '3333333333333333333333333333333333333333333' +
// '</p>' +
// '</div>' +
// '' +
// '<div class="layui-col-md9 layui-col-md-offset1">' +
// '    <div class="RcommentInfo">' +
// '    <span class="RcommentDate">' +
// '    2019-05-29' +
// '    </span>' +
// '    <span class="replyBtn">' +
// '    回复' +
// '    </span>' +
// '    </div>' +
// '    </div>' +
// '    </div>' +
// '    </div>' +
// '    </div>' +
//





















