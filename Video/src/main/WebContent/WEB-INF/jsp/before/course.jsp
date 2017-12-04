<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
    <meta name="description" content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">
    <meta name="author" content="舒涛">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css">
    <link rel="icon" href="favicon.png" type="image/png" />
    <title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>
    
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

    <script>
        function addFavorite2() {
            var url = window.location;
            var title = document.title;
            var ua = navigator.userAgent.toLowerCase();
            if (ua.indexOf("360se") > -1) {
                alert("由于360浏览器功能限制，请按 Ctrl+D 手动收藏！");
            } else if (ua.indexOf("msie 8") > -1) {
                window.external.AddToFavoritesBar(url, title); //IE8
            } else if (document.all) {
                try {
                    window.external.addFavorite(url, title);
                } catch (e) {
                    alert('您的浏览器不支持,请按 Ctrl+D 手动收藏!');
                }
            } else if (window.sidebar) {
                window.sidebar.addPanel(title, url, "");
            } else {
                alert('您的浏览器不支持,请按 Ctrl+D 手动收藏!');
            }
        }
        
        $(function(){
        	
        	
                //div 两个哪个显示呢？
                if(null!="${sessionScope.userAccount}" && "${sessionScope.userAccount}" !=""){
                     $("#regBlock").css("display","none");
      	           $("#userBlock").css("display","block");
                }else{
                     $("#regBlock").css("display","block");
      	           $("#userBlock").css("display","none");
                }
        });
    </script>
</head>

<body class="w100">
    <header>
        <div class="container">
            <span>欢迎来到IT培训的黄埔军校——智游教育！</span>
            
                <!-- 此处这个标志用于修复一个小Bug -->
                <input type="hidden" id="isLogin" value="0">
	            <div id="regBlock" style="display:none;float:right">
	               <a href="javascript:;" id="reg_open"><img src="${pageContext.request.contextPath}/img/we.png">注册</a>
	               <a href="javascript:;" id="login_open"><img src="${pageContext.request.contextPath}/img/we.png">登录</a>
	            </div>
            
	            <div id="userBlock" style="display:none;float:right">
	               
	               <a href="javascript:;" id="loginout">退出</a>
	               <a href="${pageContext.request.contextPath}/user/showMyProfile.action" id="account">${sessionScope.userAccount}</a>
	            </div>
           
            <a onclick="JavaScript:addFavorite2()"><img src="${pageContext.request.contextPath}/img/sc.png" draggable="false">加入收藏</a>
            <a onclick="pyRegisterCvt()" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2580094677&site=qq&menu=yes"><img src="${pageContext.request.contextPath}/img/we.png" draggable="false">联系我们</a>
            <a class="color_e4"><img src="${pageContext.request.contextPath}/img/phone.png" draggable="false"> 0371-88888598&#x3000;&#x3000;4006-371-555</a>

        </div>
    </header>
    <nav class="w100">
        <div class="container">
            <img src="${pageContext.request.contextPath}/img/logo.png" alt="智游教育的logo" onclick="location.href='index.html'" draggable="false">
            <ul class="text_13 f_right">
                <li>
                    <a href="http://zhiyou100.com/" target="_blank">首页</a>
                </li>
                <li class="nav_down">
                    高端课程<img src="${pageContext.request.contextPath}/img/nav_down.png" alt="" draggable="false">
                    <ul id="nav_down" class="t_center">
                        <li>
                            <a target="_blank" href="http://www.zhiyou100.com/Java/index.html">Java国际</a>
                        </li>
                        <li>
                            <a target="_blank" href="http://www.zhiyou100.com/vr/index.html">VR</a>
                        </li>
                        <li>
                            <a target="_blank" href="http://www.zhiyou100.com/html5/index.html">HTML5</a>
                        </li>
                        <li>
                            <a target="_blank" href="http://www.zhiyou100.com/bigdata/index.html">大数据</a>
                        </li>
                        <li>
                            <a target="_blank" href="http://www.zhiyou100.com/IS/index.html">信息安全</a>
                        </li>
                        <li>
                            <a target="_blank" href="http://www.zhiyou100.com/appui/index.html">APP UI</a>
                        </li>
                        <li>
                            <a target="_blank" href="http://www.zhiyou100.com/php/index.html">PHP</a>
                        </li>
                        <li>
                            <a target="_blank" href="http://www.zhiyou100.com/python/index.html">Python</a>
                        </li>
                        <!--<li>
                            <a target="_blank" href="http://www.zhiyou100.com/Android/index.html">Android</a>
                        </li>-->
                        <li>
                            <a target="_blank" href="http://www.zhiyou100.com/ios/index.html">iOS</a>
                        </li>
                        <!--<li>
                            <a target="_blank" href="http://www.zhiyou100.com/netop/index.html">网络运营</a>
                        </li>-->
                    </ul>
                </li>
                <li id="gkk" class="nav_choose">
                    <a href="http://zhiyou100.com/videos/" target="_blank">在线公开课</a>
                </li>
                <li>
                    <a href="http://www.zhiyou100.com/zhuanjiashizi/index.html" target="_blank">专家师资</a>
                </li>
                <li>
                    <a href="http://www.zhiyou100.com/gaoxinjiuye/index.html" target="_blank">高薪就业</a>
                </li>
                <li>
                    <a href="http://www.zhiyou100.com/chuangyexueyuan/index.html" target="_blank">创业学员</a>
                </li>
                <li>
                    <a href="http://www.zhiyou100.com/xueyuanzuopin/index.html" target="_blank">学员作品</a>
                </li>
                <li><a href="http://www.zhiyou100.com/zyxw/ " target="_blank">智游新闻</a></li>
                <li class="nav_last">
                    <a href="http://www.zhiyou100.com/aboutus/index.html" target="_blank">关于智游</a>
                </li>
            </ul>
        </div>
    </nav>
    <div id="app" >
        <!--banner图-->
        <div class="banner" style="background-image: url(${pageContext.request.contextPath}/img/banner-${Subject.id}.jpg)"></div>

        <!--面包屑导航-->
        <div class="container mian-nav">公开课 / ${Subject.subjectName}</div>

        <div class="classify">
           <div class="container">
                <!--章-->
                <c:forEach items="${course}" var="c">
                       <div class="section" >
                    <div class="classifyName">
                        <p class="title title-first">${c.courseTitle}</p>
                    </div>
                    <div class="kcIntro">
                        <p class="int"><span>课程介绍：</span>${c.courseDesc}
                        </p>
                    </div>
                     <ul>
                   
                    
                   
                     
                     
                  
                        <!--节-->
                       <c:forEach items="${c.videolist}" var="video" varStatus="i" >
                        
                                 <li class="section-main"  onclick="getVideo(${video.id})">
		                            <div class="thum" style="background-image: url('${video.imageUrl}')">
		                                <!--http://vod.zhiyou100.com/gkk/h5/c1/image/course/01.jpg-->
		                            </div>
		                            <p>
		                            <c:if test="${(i.index+1)>=10}">
		                                ${i.index+1}
		                            </c:if>
		                            <c:if test="${(i.index+1)<10}">
		                                0${i.index+1}
		                            </c:if>  ${video.title}</p>
		                            <div class="classify-v-info">
		                                <span class="count" title="观看次数"><img src="${pageContext.request.contextPath}/img/count.png" alt="">${video.playNum}</span>
		                                <span class="duration" title="视频时长"><img src="${pageContext.request.contextPath}/img/player.png" alt="">${video.time}</span>
		                            </div>
		                        </li> 
                        
                        </c:forEach>
                      

                    </ul> 
                  </div>
                
                </c:forEach>
                

            </div> 
            
        </div>
    </div>
    <!--页脚-->
    <footer>
        <ul>
            <li>
                <img src="${pageContext.request.contextPath}/img/footer_logo.png" alt="" draggable="false">
            </li>
            <li class="mt25">
                <h3>各校区地址</h3>
                <ul>
                    <li>总部地址<br>中国-郑州经济技术开发区河南省通信产业园六层</li>
                    <li>郑州校区一<br>中国-郑州经济技术开发区第一大街与经北一路</li>
                    <li>郑州校区二<br>中国-郑州经济技术开发区第四大街经开人才市场七楼</li>
                    <li>郑州校区三<br>中国-郑州经济技术开发区第八大街河南省留学生创业园九层、十层</li>
                    <li>西安分校<br>中国-西安莲湖区&#X3000;联系人：梁老师 13201570801</li>
                </ul>
            </li>
            <li class="mt25">
                <h3>联系我们</h3>
                <ul id="foo_icon">
                    <li>中国-郑州经济技术开发区经北三路河南通信产业园六层</li>
                    <li>e-mail:zy@zhiyou100.com</li>
                    <li>电话:4006-371-555 0371-88888598</li>
                    <li class="erwei">
                        <br>
                        <div>
                            <img class="weixin" src="${pageContext.request.contextPath}/img/微信公众号.png" alt="" draggable="false">
                            <img class="weibo" src="${pageContext.request.contextPath}/img/微博公众号.png" alt="" draggable="false">
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="record">智游教育 &copy; 豫ICP备17000832号-1 &#X3000;河南智游臻龙教育科技有限公司</div>
    </footer>

    <!--登录注册弹出框-->
    <div class="mask hidden" id="login">
        <div class="mask_content">
            <div class="mask_content_header">
                <img src="${pageContext.request.contextPath}/img/logo.png" alt="" class="ma">
            </div>
            <div class="mask_content_body">
                <form id="loginForm" action="${pageContext.request.contextPath}/user/Userlogin.action">
                    <h3>快速登录</h3>
                    <input type="email" id="loginEmail" placeholder="请输入邮箱" name="email">
                    <input type="password" id="loginPassword" placeholder="请输入密码" name="password">
                    <div id="forget">
                        <a href="${pageContext.request.contextPath}/user/forgetPassword.action">忘记密码？</a>
                        &#x3000;<a href="#" onclick="quickShow()">快速注册</a>
                    </div>
                    
                    <input type="submit" onclick="return commitLogin()" value="登&#x3000;录">
                </form>
            </div>
            <div class="mask_content_footer">
                <span id="login_close">关&#x3000;闭</span>
            </div>
        </div>
    </div>
    
    <div class="mask hidden" id="reg">
        <div class="mask_content">
            <div class="mask_content_header">
                <img src="${pageContext.request.contextPath}/img/logo.png" alt="" class="ma">
            </div>
            <div class="mask_content_body">
                <form id="regForm" action="insertUser.action">
                    <h3>新用户注册</h3>
                    <input type="email" id="regEmail" placeholder="请输入邮箱" name="email"><span id="emailMsg"></span>
                    <input type="password" id="regPsw" placeholder="请输入密码" name="password">
                    <input type="password" id="regPswAgain" placeholder="请再次输入密码" name="psw_again"><span id="passMsg"></span>
                    <div id="yzm" class="form-inline">
                        <input type="text" name="yzm" style="width: 45%; display: inline-block;">
                        <div id="v_container" style="width: 45%;height: 40px;float:right;"></div>
                    </div>
                    <input type="submit" onclick="return commitRegForm();" value="注&#x3000;册">
                </form>
            </div>
            <div class="mask_content_footer">
                <span id="reg_close">关&#x3000;闭</span>
            </div>
        </div>
    </div>
    
    <!--<script src="${pageContext.request.contextPath}/js/readmore.js"></script>-->
    <script src="${pageContext.request.contextPath}/js/gVerify.js"></script>
    <script src="${pageContext.request.contextPath}/js/index.js"></script>
    <script type="text/javascript">
    
        function getVideo(videoId){
        	//alert("${sessionScope.userAccount}");
        	//判断用户是否登录
        	//alert($("#isLogin").val());
        	if((null!="${sessionScope.email}" && "${sessionScope.email}" !="") || ($("#isLogin").val()==1)){
        		//如果登录
        		var url1=encodeURI("${pageContext.request.contextPath}/video/showVideo?videoId="+videoId+"&subjectName="+'${Subject.subjectName}')
                 location.href=url1;
        	}else{
        		//如果不登录，弹登录框
        		$("#login").removeClass("hidden");
        		
        	}
        	
            
        }
    </script>

    
</body>

</html>