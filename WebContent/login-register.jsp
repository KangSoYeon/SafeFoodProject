<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="src.com.ssafy.model.dto.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>LogIn Ragister || Uniqlo-Minimalist eCommerce Bootstrap 4 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    
    <!-- Bootstrap Fremwork Main Css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- All Plugins css -->
    <link rel="stylesheet" href="css/plugins.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizr JS -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript">
    var idFlag = false;
	var pwFlag = false;
	var nameFlag = false;
	var addressFlag = false;
	var phoneFlag = false;
	
	$(function(){
		$("#email").blur(function(){
			idFlag = false;
			checkId();
		});
		
		$("#password").blur(function() {
            pwFlag = false;
            checkPw();
        });
		
		$("#name").blur(function(){
			nameFlag = false;
			checkName();
		});
		
		$("#address").blur(function(){
			addressFlag = false;
			checkAddress();
		});
		
		$("#phone").blur(function(){
			phoneFlag = false;
			checkPhone();
		});
		/*
		$('.ti-power-off').click(function(){
			sessionStorage.clear();
			$('.iflogin').hide();
			$('.ti-power-off').hide();
		});
		
		if(sessionStorage.getItem("id") != null){
			$('.iflogin').show();	
			$('.ti-power-off').show();
			$('#change').attr("href", "contact.html");
		}
		
		else{
			$('.iflogin').hide();
			$('.ti-power-off').hide();
			$('#change').attr("href", "login-register.html");
		}
		*/
	});
	
	function checkId(){
		/*
		var id = $("#email").val();
		var oMsg = $("#idMsg");
		
		if(id==""){
			showErrorMsg(oMsg, "필수 정보입니다.");
			return false;
		}
		
		var isID = /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$/;
        if (!isID.test(id)) {
            showErrorMsg(oMsg,"이메일 형식이 잘못되었습니다.");
            return false;
        }
        
        hideMsg(oMsg);
        
        idFlag = true;	
        */
	}
	
	function checkPw(){
		/*
        var pw = $("#password").val();
        var oMsg = $("#pwMsg");
        
        if (pw == "") {
            showErrorMsg(oMsg, "필수 정보입니다.");
            return false;
        }
        
        var isPw = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
        if (!isPw.test(pw)) {
            showErrorMsg(oMsg,"5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
            return false;
        }
        
        hideMsg(oMsg);
        */

        pwFlag = true;
	}
	
	function checkName(){
		/*
        var name = $("#name").val();
        var oMsg = $("#nameMsg");
        
        if (name == "") {
            showErrorMsg(oMsg, "필수 정보입니다.");
            return false;
        }
        else{
        	hideMsg(oMsg);
        }
		*/
        nameFlag = true;
        
	}
	
	function checkAddress(){
		/*
        var address = $("#address").val();
        var oMsg = $("#addressMsg");
        
        if (address == "") {
            showErrorMsg(oMsg, "필수 정보입니다.");
            return false;
        }
        else{
        	hideMsg(oMsg);
        }
        */

        addressFlag = true;
	}
	
	function checkPhone(){
		/*
        var phone = $("#phone").val();
        var oMsg = $("#phoneMsg");
        
        if (phone == "") {
            showErrorMsg(oMsg, "필수 정보입니다.");
            return false;
        }
        else{
	        hideMsg(oMsg);
        }
        */
        
        phoneFlag = true;
	}
	
	function showErrorMsg(obj, msg) {
        obj.attr("class", "error_box");
        obj.html(msg);
        obj.show();
    }
	
	function hideMsg(obj) {
        obj.hide();
    }
	
	function check(){
		if(idFlag && pwFlag && nameFlag && addressFlag && phoneFlag) {
			return true;
		}
		else return false;
	}

	function login(){
		var id = $("#loginID").val();
        var pw = $("#loginPw").val();
        var oMsg1 = $("#idMsg_login");
        var oMsg2 = $("#pwMsg_login");
        
        //sessionStorage.setItem("id", id);
        
        return true;
	}
	
	</script>
	<style type="text/css">
		label {
			color: #686868;
		    font-size: 16px;
		    height: 40px;
		    line-height: 40px;
		    padding: 0 15px;
		    margin-bottom: 0px;
		}
		
		#allery{
			border: 1px solid #8e8e8e;
			margin-bottom: 20px;
			padding-left: 30px;
		}
		
		.alleryBox{
			margin: 15px 5px 15px 15px !important;
			width: 20px !important;
			height: 20px !important;
			text-align: center;
			vertical-align: middle;
		}
		
		.error_box{
			display: block;
			margin: -10px 0 13px 15px;
			font-size: 12px;
			line-height: 14px;
			color: red;
		}
		
		.htc__login__btn a{
			cursor: pointer;
		}
	</style>
</head>

<body>

    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper fixed__footer">
        <!-- Start Header Style -->
       <header id="header" class="htc-header header--3 bg__white">
            <!-- Start Mainmenu Area -->
            <!-- Start Mainmenu Area -->
            <div id="sticky-header-with-topbar" class="mainmenu__area sticky__header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2 col-lg-2 col-6">
                            <div class="logo">
                                <a href="index.html">
                                    <img src="images/logo/uniqlo.png" alt="logo">
                                </a>
                            </div>
                        </div>
                        <!-- Start <mai></mai>nmenu Ares -->
                        <div class="col-md-8 col-lg-8 d-none d-md-block">
                            <nav class="mainmenu__nav  d-none d-lg-block">
                                <ul class="main__menu">
                                    <li><a href="index.html">공지 사항</a></li>
                                    <li><a href="search.html">상품 정보</a></li>
                                    <li><a href="#">베스트 섭취 정보</a></li>
                                    <li class="iflogin" style="display:none;"><a href="#">내 섭취 정보</a></li>
                                    <li class="iflogin" style="display:none;"><a href="#">예상 섭취 정보</a></li>
                                </ul>
                            </nav>
                            <div class="mobile-menu clearfix d-block d-lg-none">
                                <nav id="mobile_dropdown">
                                    <ul>
                                        <li><a href="index.html">공지 사항</a></li>
	                                    <li><a href="search.html">상품 정보</a></li>
	                                    <li><a href="#">베스트 섭취 정보</a></li>
	                                    <li class="iflogin" style="display:none;"><a href="#">내 섭취 정보</a></li>
	                                    <li class="iflogin" style="display:none;"><a href="#">예상 섭취 정보</a></li>
                                    </ul>
                                </nav>
                            </div>  
                        </div>
                        <!-- End MAinmenu Ares -->
                        <div class="col-md-2 col-lg-2 col-6">  
                            <ul class="menu-extra">
                                <li><a href="login-register.html"><span class="ti-user"></span></a></li>
                                <li class="cart__menu"><span class="ti-heart"></span></li>
                                <li><span class="ti-power-off" style="display:none"></span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="mobile-menu-area"></div>
                </div>
            </div>
            <!-- End Mainmenu Area -->
        </header>
        <!-- End Header Style -->
        <!-- Start Login Register Area -->
        <div class="htc__login__register bg__white ptb--130" style="background: rgba(0, 0, 0, 0) url(images/bg/5.jpg) no-repeat scroll center center / cover ;">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 ml-auto mr-auto">
                        <ul class="login__register__menu nav justify-contend-center" role="tablist">
                            <li role="presentation" class="login active"><a class="active" href="#login" role="tab" data-toggle="tab">Login</a></li>
                            <li role="presentation" class="register"><a href="#register" role="tab" data-toggle="tab">Register</a></li>
                        </ul>
                    </div>
                </div>
                <!-- Start Login Register Content -->
                <div class="row tab-content">
                    <div class="col-md-6  ml-auto mr-auto">
                        <div class="htc__login__register__wrap">
                            <!-- Start Single Content -->
                            <div id="login" role="tabpanel" class="single__tabs__panel tab-pane active">
                                <form id="loginForm" action="main.do" class="login" method="post" >
                                <input type="hidden" name="action" value = 'login.do'/>
                                    <input type="text" id="loginID" name = "id" placeholder="ID*">
                                    <span class="error_box" id="idMsg_login" style="display:none">아이디를 입력해주세요.</span>
                                    <input type="password" id="loginPw" name = "pw" placeholder="Password*">
                                    <span class="error_box" id="pwMsg_login" style="display:none">비밀번호를 입력해주세요.</span>
                                    <input type="submit" style="display:none;"/>
                                </form>
                                <div class="tabs__checkbox">
                                    <input type="checkbox" name="idsave" value="t" ${checked}>
                                    <span> Remember me</span>
                                    <span class="forget"><a href="#">Forget Password?</a></span>
                                </div>
                                <div class="htc__login__btn mt--30">
                                    <a onclick="$('#loginForm').submit()">Login</a>
                                </div>
                                <div class="htc__social__connect">
                                    <h2>Or Login With</h2>
                                    <ul class="htc__soaial__list">
                                        <li><a class="bg--twitter" href="https://twitter.com/devitemsllc" target="_blank"><i class="zmdi zmdi-twitter"></i></a></li>

                                        <li><a class="bg--instagram" href="https://www.instagram.com/devitems/" target="_blank"><i class="zmdi zmdi-instagram"></i></a></li>

                                        <li><a class="bg--facebook" href="https://www.facebook.com/devitems/?ref=bookmarks" target="_blank"><i class="zmdi zmdi-facebook"></i></a></li>

                                        <li><a class="bg--googleplus" href="https://plus.google.com/" target="_blank"><i class="zmdi zmdi-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Content -->
                            <!-- Start Single Content -->
                            <div id="register" role="tabpanel" class="single__tabs__panel tab-pane">
                                <form id="registerForm" action="main.do" class="login register" method="post" >
                                	<input type="hidden" name="action" value = 'memberRegit.do'/>
                                    <input type="text" id="id" name="id" placeholder="ID*" autocomplete="off">
                                    <input type="email" id="email" name="email" placeholder="Email*" autocomplete="off">
                                    <span class="error_box" id="idMsg" style="display:none">필수 정보입니다.</span>
                                    <input type="password" id="password" name="pw" placeholder="Password*">
                                    <span class="error_box" id="pwMsg" style="display:none">필수 정보입니다.</span>
                                    <input type="text" id="name"name="name" placeholder="Name*" autocomplete="off">
                                    <span class="error_box" id="nameMsg" style="display:none">필수 정보입니다.</span>
                                    <input type="text" id="address" name="address"placeholder="Address*" autocomplete="off" />
                                    <span class="error_box" id="addressMsg" style="display:none">필수 정보입니다.</span>
                                    <input type="text" id="phone" name="phone"placeholder="Phone Number*" autocomplete="off" />
                                    <span class="error_box" id="phoneMsg" style="display:none">필수 정보입니다.</span>
                                    <label for="allergy">알레르기</label>
                                    <div id="allery">
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="대두" />대두
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="땅콩" />땅콩
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="우유" />우유
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="게" />게
	                                    <br />
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="새우" />새우
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="참치" />참치
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="연어" />연어
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="쑥" />쑥
	                                    <br />
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="소고기" />소고기
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="닭고기" />닭고기
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="돼지고기" />돼지고기
	                                    <br />
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="복숭아" />복숭아
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="민들레" />민들레
	                                    <input type="checkbox" name="checkbox" class="alleryBox" id="" value="계란흰자" />계란흰자
                                    </div>
                                    <input type="submit" style="display:none;"/>
                                </form>
                                <div class="tabs__checkbox">
                                    <input type="checkbox">
                                    <span> Remember me</span>
                                </div>
                                <div class="htc__login__btn">
                                	<a id="clickRegister" onclick="$('#registerForm').submit()">register</a>
                                </div>
                                <div class="htc__social__connect">
                                    <h2>Or Login With</h2>
                                    <ul class="htc__soaial__list">
                                        <li><a class="bg--twitter" href="https://twitter.com/devitemsllc" target="_blank"><i class="zmdi zmdi-twitter"></i></a></li>
                                        <li><a class="bg--instagram" href="https://www.instagram.com/devitems/" target="_blank"><i class="zmdi zmdi-instagram"></i></a></li>
                                        <li><a class="bg--facebook" href="https://www.facebook.com/devitems/?ref=bookmarks" target="_blank"><i class="zmdi zmdi-facebook"></i></a></li>
                                        <li><a class="bg--googleplus" href="https://plus.google.com/" target="_blank"><i class="zmdi zmdi-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Content -->
                        </div>
                    </div>
                </div>
                <!-- End Login Register Content -->
            </div>
        </div>
        <!-- End Login Register Area -->
        <!-- Start Footer Area -->
        <footer class="htc__foooter__area" style="background: rgba(0, 0, 0, 0) url(images/bg/1.jpg) no-repeat scroll center center / cover ;">
            <div class="container">
                <div class="row footer__container clearfix">
                    <!-- Start Single Footer Widget -->
                    <div class="col-md-6 col-lg-3 col-sm-6">
                        <div class="ft__widget">
                            <div class="ft__logo">
                                <a href="index.html">
                                    <img src="images/logo/uniqlo.png" alt="footer logo">
                                </a>
                            </div>
                            <div class="footer__details">
                                <p>Get 10% discount with notified about the latest news and updates.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Footer Widget -->
                    <!-- Start Single Footer Widget -->
                    <div class="col-md-6 col-lg-3 col-sm-6 smb-30 xmt-30">
                        <div class="ft__widget">
                            <h2 class="ft__title">Newsletter</h2>
                            <div class="newsletter__form">
                                <div class="input__box">
                                    <div id="mc_embed_signup">
                                        <form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" novalidate>
                                            <div id="mc_embed_signup_scroll" class="htc__news__inner">
                                                <div class="news__input">
                                                    <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="Email Address" required>
                                                </div>
                                                <div class="clearfix subscribe__btn"><input type="submit" value="Send" name="subscribe" id="mc-embedded-subscribe" class="bst__btn btn--white__color">

                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>        
                            </div>
                        </div>
                    </div>
                    <!-- End Single Footer Widget -->
                    <!-- Start Single Footer Widget -->
                    <div class="col-md-6 col-lg-3 col-sm-6 smt-30 xmt-30">
                        <div class="ft__widget contact__us">
                            <h2 class="ft__title">Contact Us</h2>
                            <div class="footer__inner">
                                <p> 319 Clematis St. <br> Suite 100 WPB, FL 33401 </p>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Footer Widget -->
                    <!-- Start Single Footer Widget -->
                    <div class="col-md-6 col-lg-2 lg-offset-1 col-sm-6 smt-30 xmt-30">
                        <div class="ft__widget">
                            <h2 class="ft__title">Follow Us</h2>
                            <ul class="social__icon">
                                <li><a href="https://twitter.com/devitemsllc" target="_blank"><i class="zmdi zmdi-twitter"></i></a></li>
                                <li><a href="https://www.instagram.com/devitems/" target="_blank"><i class="zmdi zmdi-instagram"></i></a></li>
                                <li><a href="https://www.facebook.com/devitems/?ref=bookmarks" target="_blank"><i class="zmdi zmdi-facebook"></i></a></li>
                                <li><a href="https://plus.google.com/" target="_blank"><i class="zmdi zmdi-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Single Footer Widget -->
                </div>
                <!-- Start Copyright Area -->
                <div class="htc__copyright__area">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                            <div class="copyright__inner">
                                <div class="copyright">
                                    <p>© 2018 <a href="https://freethemescloud.com/" target="_blank">Free themes Cloud</a>
                                    All Right Reserved.</p>
                                </div>
                                <ul class="footer__menu">
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="search.html">Product</a></li>
                                    <li><a href="contact.html">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Copyright Area -->
            </div>
        </footer>
        <!-- End Footer Area d  -->
    </div>
    <!-- Body main wrapper end -->
    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- Bootstrap Framework js -->
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="js/plugins.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="js/main.js"></script>

</body>

</html>
