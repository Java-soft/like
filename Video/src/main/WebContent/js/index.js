
// 导航栏
$('nav').children('div').children('ul').children('li').mouseenter(function () {
    $('nav').children('div').children('ul').children('li').removeClass('nav_choose');
    $(this).addClass('nav_choose');
});
$('nav').mouseleave(function () {
    $('nav').children('div').children('ul').children('li').removeClass('nav_choose');
    $('#gkk').addClass('nav_choose');
});

// 导航栏下拉菜单
$('nav .nav_down').mouseenter(function () {
    $('#nav_down').stop().slideDown();
    $(this).children('img').attr('src', 'http://localhost:8080/VideosWebTest/img/nav_down2.png');
});
$('nav .nav_down').mouseleave(function () {
    $('#nav_down').stop().slideUp();
    $(this).children('img').attr('src', 'http://localhost:8080/VideosWebTest/img/nav_down.png');
});

$(window).scroll(function () {
    if ($(this).scrollTop() > 300) {
        $('#top').fadeIn();
        $('body').css('paddingTop', '90px');
        $('nav').css({
            'position': 'fixed',
            'top': '0',
            'left': '0',
            'border-bottom': '1px solid #e6e6e6'
        });
    }
    else {
        $('body').css('paddingTop', '0');
        $('nav').css({
            'position': 'initial',
            'top': '0',
            'left': '0',
            'border-bottom': 'none'
        });
    }
});
// 登录注册显示和消失弹出框
$('#reg_open').click(function () {
    $('#reg').removeClass('hidden');
});
$('#login_open').click(function () {
    $('#login').removeClass('hidden');
});
$('#reg_close').click(function(){
    $('#reg').addClass('hidden');
});
$('#login_close').click(function(){
    $('#login').addClass('hidden');
});


// 报名
$("#iform .button").click(function (ev) {
    ev.preventDefault();

    var input1 = $('.form-control:eq(0)').val();
    var input2 = $('.form-control:eq(1)').val();
    var input3 = $('.form-control:eq(2)').val();
    var reg2 = /^1[3578]\d{9}$/;
    var reg3 = /^[1-9]\d{4,10}$/;

    if (input1 == "") {
        alert("姓名不能为空");
    } else if (!reg2.test(input2)) {
        alert("手机格式不符！！请重新填写！");
    } else if (!reg3.test(input3)) {
        alert("QQ格式不符！！请重新填写！");
    } else {
        $("#iform").submit();
    }

});


// 获取url路径中的参数
function GetUrlParam(paraName) {
    var url = document.location.toString();
    var arrObj = url.split("?");

    if (arrObj.length > 1) {
        var arrPara = arrObj[1].split("&");
        var arr;
        for (var i = 0; i < arrPara.length; i++) {
            arr = arrPara[i].split("=");

            if (arr != null && arr[0] == paraName) {
                return arr[1];
            }
        }
        return "";
    }
    else {
        return "";
    }
}








