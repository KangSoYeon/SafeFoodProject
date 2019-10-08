<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Product Details || Uniqlo-Minimalist eCommerce Bootstrap 4 Template</title>
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
    <script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/variable-pie.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>
    
    <script type="text/javascript">
    	 $(function(){
    		 
    		var alergy = ['대두', '땅콩', '우유', '게', '새우', '참치', '연어', '쑥', '소고기', '닭고기', '돼지고기', '복숭아', '민들레', '계란흰자'];
    		 
			Highcharts.chart('chart', {
    		    chart: {
    		        type: 'variablepie'
    		    },
    		    title: {
    		        text: ''
    		    },
    		    tooltip: {enabled: false},
    		    plotOptions: {
    		        series: {
    		            enableMouseTracking: false
    		        }
    		    },
    		    credits: {
    	            enabled: false
    	        },
    		    series: [{
    		        minPointSize: 10,
    		        innerSize: '20%',
    		        zMin: 0,
    		        name: '영양 정보',
    		        data: [{
    		            name: '칼로리',
    		            y: Number("${food1.getCalory()}"),
    		            z: 100
    		        }, {
    		            name: '탄수화물',
    		            y: Number("${food1.getCarbo()}"),
    		            z: 100
    		        }, {
    		            name: '단백질',
    		            y: Number("${food1.getProtein()}"),
    		            z: 100
    		        }, {
    		            name: '지방',
    		            y: Number("${food1.getFat()}"),
    		            z: 100
    		        }, {
    		            name: '당류',
    		            y: Number("${food1.getSugar()}"),
    		            z: 100
    		        }, {
    		            name: '나트륨',
    		            y: Number("${food1.getNatrium()}"),
    		            z: 100
    		        }, {
    		            name: '콜레스테롤',
    		            y: Number("${food1.getChole()}"),
    		            z: 100
    		        }, {
    		            name: '포화지방산',
    		            y: Number("${food1.getFattyacid()}"),
    		            z: 100
    		        }, {
    		            name: '트랜스지방',
    		            y: Number("${food1.getTransfat()}"),
    		            z: 100
    		        }]
    		    }]
    		});
     		
     	}) 

	</script>
	
	<style type="text/css">
		#nutrition{ 
			float:left;
			display:inline-block;
		}
		
		#chart{
			float:left;
			margin-right: 120px !important;
		}
		
		tr, td{
			padding: 5px;
			width: 150px;
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
                                <a href="main.do?action=mainBoard.do">
                                    <img src="images/logo/uniqlo.png" alt="logo">
                                </a>
                            </div>
                        </div>
                        <!-- Start <mai></mai>nmenu Ares -->
                        <div class="col-md-8 col-lg-8 d-none d-md-block">
                            <nav class="mainmenu__nav  d-none d-lg-block">
                                <ul class="main__menu">
                                    <li><a href="main.do?action=mainBoard.do">공지 사항</a></li>
                                    <li><a href="main.do?action=searchBoard.do">상품 정보</a></li>
                                    <li><a href="#">베스트 섭취 정보</a></li>
                                    <li class="iflogin" style="display:none;"><a href="#">내 섭취 정보</a></li>
                                    <li class="iflogin" style="display:none;"><a href="#">예상 섭취 정보</a></li>
                                </ul>
                            </nav>
                            <div class="mobile-menu clearfix d-block d-lg-none">
                                <nav id="mobile_dropdown">
                                    <ul>
                                        <li><a href="main.do?action=mainBoard.do">공지 사항</a></li>
	                                    <li><a href="main.do?action=searchBoard.do">상품 정보</a></li>
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
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/2.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="bradcaump__inner text-center">
                                <h2 class="bradcaump-title">오늘의 추천 음식은?</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="main.do?action=mainBoard.do">Home</a>
                                  <span class="brd-separetor">/</span>
                                  <span class="breadcrumb-item active">Recommended</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start Product Details -->
        <section class="htc__product__details pt--120 pb--100 bg__white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-6 col-sm-12">
                        <div class="product__details__container">
                            <div class="product__big__images">
                                <div class="portfolio-full-image tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="img-tab-1"> <!--  사진 넣기  -->
                                    	<img src="${food1.getImg() }" alt="full-image">
                                    </div>
                                </div>
                                  <div class="pro__detl__title">
                               			<h4>${food1.getName()}</h4>
                            	  </div>
                            </div>
                             <div class="product__big__images">
                                <div class="portfolio-full-image tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="img-tab-1"> <!--  사진 넣기  -->
                                    	<img src="${food2.getImg() }" alt="full-image">
                                    </div>
                                </div>
                                <div class="pro__detl__title">
                               			<h4>${food2.getName()}</h4>
                            	</div>
                            </div>
                             <div class="product__big__images">
                                <div class="portfolio-full-image tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="img-tab-1"> <!--  사진 넣기  -->
                                    	<img src="${food3.getImg() }" alt="full-image">
                                    </div>
                                </div>
                                <div class="pro__detl__title">
                               			<h4>${food3.getName()}</h4>
                            	</div>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        </section>
        <!-- End Product Details -->
       
        <!-- Start Footer Area -->
        <footer class="htc__foooter__area" style="background: rgba(0, 0, 0, 0) url(images/bg/1.jpg) no-repeat scroll center center / cover ;">
            <div class="container">
                <div class="row footer__container clearfix">
                    <!-- Start Single Footer Widget -->
                    <div class="col-md-6 col-lg-3 col-sm-6">
                        <div class="ft__widget">
                            <div class="ft__logo">
                                <a href="main.do?action=mainBoard.do">
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
                                    <li><a href="main.do?action=mainBoard.do">Home</a></li>
                                    <li><a href="main.do?action=searchBoard.do">Product</a></li>
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
    <!-- Bootstrap Framework js -->
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="js/plugins.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="js/main.js"></script>
</body>

</html>
