<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Contact US || Uniqlo-Minimalist eCommerce Bootstrap 4 Template</title>
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
    <script type="text/javascript"> </script>
    <script>
    $(function(){
    	$('#save_personal').click(function(){
    		alert("저장이 완료되었습니다.")
    		location.replace('contact.html'); //수정화면으로 돌아가기 
    	})
    	
    	$('.ti-power-off').click(function(){
			sessionStorage.clear();
			$('.iflogin').hide();
			$('.ti-power-off').hide();
			location.href = "index.html";
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
    })
    </script>
    <style type="text/css">
    	.col-lg-6{
    		flex: 0 0 100%;
   			max-width: 100%;
    	}
    	
    	.single__contact__address {
		    margin-right: 20%;
		}
		
		input[type=text]{
			padding-left: 3px;
			width: 330px;
		}
		
		#allery{
			border: 1px solid #8e8e8e;
		    margin-bottom: 20px;
		    padding-right: 20px;
		}
		
		.alleryBox{
			margin: 15px 5px 15px 15px !important;
			width: 20px !important;
			height: 20px !important;
			text-align: center;
			vertical-align: middle;
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
                        <!-- Start mainmenu Ares -->
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
                                <li><a id="change" href="login-register.html"><span class="ti-user"></span></a></li>
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
        <!-- End Offset Wrapper -->
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/2.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">My page</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start Contact Area -->
        <section class="htc__contact__area ptb--120 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-6 col-sm-12">
                        <div class="htc__contact__container">
                            <div class="htc__contact__address">
                                <h2 class="contact__title">My page</h2>
                                
                                <div class="contact__address__inner">
                                    <!-- Start Single Adress -->
                                    <div class="single__contact__address">
                                        <div class="contact__icon">
                                            <span class="ti-user"></span>
                                        </div>
                                        <div class="contact__details">
                                            <p>Name <br> 김민경</p>
                                        </div>
                                    </div>
                                    <!-- End Single Adress -->
                                </div>
                                
                                
                              <div class="contact__address__inner">
                                    <!-- Start Single Adress -->
                                     <div class="single__contact__address">
                                        <div class="contact__icon">
                                            <span class="ti-location-pin"></span>
                                        </div>
                                        <div class="contact__details">
	                                        <p>Location :</br>
	                                        <input type="text" value ="77, seventh avenue, Brat road USA."/>
	                               	        </p>
                                        </div>
                                   </div> 
                                    <!-- End Single Adress -->
                                </div>
                                <div class="contact__address__inner">
                                    <!-- Start Single Adress -->
                                    <div class="single__contact__address">
                                        <div class="contact__icon">
                                            <span class="ti-mobile"></span>
                                        </div>
                                        <div class="contact__details" >
                                            <p> Phone : </br>
	                                        <input type="text" value="+00 111 222 333 44"/>
	                               	        </p>
                                        </div>
                                    </div>
                                    <!-- End Single Adress -->
                                    <!-- Start Single Adress -->
                                    <div class="single__contact__address">
                                        <div class="contact__icon">
                                            <span class="ti-email"></span>
                                        </div>
                                        <div class="contact__details">
                                            <p> Mail :</br>
                                            <input type="text" value="yourmail@gmail.com"/>
	                               	        </p>
                                        </div>
                                    </div>
                                   </div>
                                   
                                    <!-- End Single Adress -->
                                    <!-- Start Single alergy -->
                                    <div class="contact__address__inner">
                                     <div class="single__contact__address">
                                        <div class="contact__icon">
                                             <span class="ti-check"></span>
                                        </div>
                                        <div class="contact__details">
                                            <p> Allergy :<br>
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
											</p>
                                        </div>
                                    </div>
                                    </div>
                                    <!-- End Single alergy -->
                                    </br>
                                    <div class="contact-btn" style= "float: right" >
                                        <button type="submit" class="fv-btn" id = "save_personal">완료</button>
                                    </div>
                                    
                                
                            </div>
                            
                        </div>
                    </div>
                  
                </div>
            </div>
        </section>
        <!-- End Contact Area -->
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
        <!-- End Footer Area -->
    </div>
    <!-- Body main wrapper end -->
    
    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- Bootstrap framework js -->
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="js/plugins.js"></script>

   
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="js/main.js"></script>

</body>

</html>