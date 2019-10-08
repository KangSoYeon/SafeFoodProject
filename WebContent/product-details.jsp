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
                                    <li><a href="main.do?action=recommend.do">오늘의 식단 추천</a></li>
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
	                                    <li><a href="main.do?action=recommend.do">오늘의 식단 추천</a></li>
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
                                <h2 class="bradcaump-title">Product Details</h2>
                                <nav class="bradcaump-inner">
                                  <a class="breadcrumb-item" href="main.do?action=mainBoard.do">Home</a>
                                  <span class="brd-separetor">/</span>
                                  <span class="breadcrumb-item active">Product Details</span>
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
                                       <!--  <img src="images/product-details/big-img/1.jpg" alt="full-image"> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6 col-sm-12 smt-30 xmt-30">
                        <div class="htc__product__details__inner">
                            <div class="pro__detl__title">
                               <!-- <h2>Black Clock</h2>   라면 이름 넣기  -->
                               <h2>${food1.getName()}</h2>
                            </div>
                            <div class="pro__details">
                            <h3> 제조사: ${food1.getMaker()}</h3>
                            <!-- <p>Lorem ipsum dolor sits nisi ut aliquip ex ea. </p>  제조사 넣기   -->
                            </div>
                      
                            <div class="product-action-wrap">
                                <div class="prodict-statas"><span>Quantity :</span></div>
                                <div class="product-quantity">
                                    <form id='myform' method='POST' action='#'>
                                        <div class="product-quantity">
                                            <div class="cart-plus-minus">
                                                <input class="cart-plus-minus-box" type="text" name="qtybutton" value="02">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <ul class="pro__dtl__btn">
                                <li class="buy__now__btn"><a href="#">추가</a></li>
                                <li><a href="#"><span class="ti-heart"></span></a></li>
                            </ul>
                          
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Product Details -->
        <!-- Start Product tab -->
        <section class="htc__product__details__tab bg__white pb--120">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <ul class="nav product__deatils__tab mb--60" role="tablist">
                            <li role="presentation" class="active">
                                <a class="active" href="#description" role="tab" data-toggle="tab">제품 정보</a>
                            </li>
                            <li role="presentation">
                                <a href="#sheet" role="tab" data-toggle="tab">영양 정보</a>
                            </li>
                           <!--  <li role="presentation">
                                <a href="#reviews" role="tab" data-toggle="tab">Reviews</a>
                            </li> -->
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="product__details__tab__content">
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="description" class="product__tab__content active">
                                <div class="product__description__wrap">
                                    <div class="product__desc">
                                        <h2 class="title__6">원재료</h2>
                                        <p class="ingredient__6"> ${food1.getMaterial()}</p>
                                    </div>
                                    <div class="pro__feature">
                                        <h2 class="title__6">알레르기 성분</h2>
                                        <ul class="feature__list">
                                       		 <%-- <li><i class="zmdi zmdi-star">' + ${foods.getAlergy()} +'</i></li> --%>
                                        
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Content -->
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="sheet" class="product__tab__content">
                                <div class="pro__feature">
                                	<h2 class="title__6">영양 정보</h2>
                                		<div id="nutrition">
	                                     	<!-- 차트들어갈 자리 -->
                                     		
	                                     	
	                                        <div id="chart" style="width: 500px; height: 400px; margin: 0 auto"></div>
                                			<table>
                                				<tr>
                                					<td>일일 제공량</td>
                                					<td id="serving_wt">${food1.getSupportpereat() } </td>
                                				</tr>
                                				<tr>
                                					<td>칼로리</td>
                                					<td id="nutr_cont1">${food1.getCalory()}</td>
                                				</tr>
                                				<tr>
                                					<td>탄수화물</td>
                                					<td id="nutr_cont2">${food1.getCarbo() }</td>
                                				</tr>
                                				<tr>
                                					<td>단백질</td>
                                					<td id="nutr_cont3">${food1.getProtein() }</td>
                                				</tr>
                                				<tr>
                                					<td>지방</td>
                                					<td id="nutr_cont4">${food1.getFat() }</td>
                                				</tr>
                                				<tr>
                                					<td>당류</td>
                                					<td id="nutr_cont5">${food1.getSugar() }</td>
                                				</tr>
                                				<tr>
                                					<td>나트륨</td>
                                					<td id="nutr_cont6">${food1.getNatrium() }</td>
                                				</tr>
                                				<tr>
                                					<td>콜레스테롤</td>
                                					<td id="nutr_cont7">${food1.getChole()}</td>
                                				</tr>
                                				<tr>
                                					<td>포화 지방산</td>
                                					<td id="nutr_cont8">${food1.getFattyacid() }</td>
                                				</tr>
                                				<tr>
                                					<td>트랜스지방</td>
                                					<td id="nutr_cont9">${food1.getTransfat() }</td>
                                				</tr>
                                			</table>
                                		</div>
                                </div>
                            </div>
                            <!-- End Single Content -->
                            <!-- Start Single Content -->
                            <div role="tabpanel" id="reviews" class="product__tab__content">
                                <div class="review__address__inner">
                                    <!-- Start Single Review -->
                                    <div class="pro__review">
                                        <div class="review__thumb">
                                            <img src="images/review/1.jpg" alt="review images">
                                        </div>
                                        <div class="review__details">
                                            <div class="review__info">
                                                <h4><a href="#">Gerald Barnes</a></h4>
                                                <ul class="rating">
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                </ul>
                                                <div class="rating__send">
                                                    <a href="#"><i class="zmdi zmdi-mail-reply"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-close"></i></a>
                                                </div>
                                            </div>
                                            <div class="review__date">
                                                <span>27 Jun, 2016 at 2:30pm</span>
                                            </div>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer accumsan egestas elese ifend. Phasellus a felis at estei to bibendum feugiat ut eget eni Praesent et messages in con sectetur posuere dolor non.</p>
                                        </div>
                                    </div>
                                    <!-- End Single Review -->
                                    <!-- Start Single Review -->
                                    <div class="pro__review ans">
                                        <div class="review__thumb">
                                            <img src="images/review/2.jpg" alt="review images">
                                        </div>
                                        <div class="review__details">
                                            <div class="review__info">
                                                <h4><a href="#">Gerald Barnes</a></h4>
                                                <ul class="rating">
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                    <li><i class="zmdi zmdi-star-half"></i></li>
                                                </ul>
                                                <div class="rating__send">
                                                    <a href="#"><i class="zmdi zmdi-mail-reply"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-close"></i></a>
                                                </div>
                                            </div>
                                            <div class="review__date">
                                                <span>27 Jun, 2016 at 2:30pm</span>
                                            </div>
                                            <p>Lorem ipsum dolor sit a consectetur adipiscing elit. Integer accumsan egestas elese ifend. Phasellus a felis at estei to bibendum feugiat ut eget eni Praesent et messages in con sectetur posuere dolor non.</p>
                                        </div>
                                    </div>
                                    <!-- End Single Review -->
                                </div>
                                <!-- Start RAting Area -->
                                <div class="rating__wrap">
                                    <h2 class="rating-title">Write  A review</h2>
                                    <h4 class="rating-title-2">Your Rating</h4>
                                    <div class="rating__list">
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                        <!-- Start Single List -->
                                        <ul class="rating">
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                            <li><i class="zmdi zmdi-star-half"></i></li>
                                        </ul>
                                        <!-- End Single List -->
                                    </div>
                                </div>
                                <!-- End RAting Area -->
                                <div class="review__box">
                                    <form id="review-form">
                                        <div class="single-review-form">
                                            <div class="review-box name">
                                                <input type="text" placeholder="Type your name">
                                                <input type="email" placeholder="Type your email">
                                            </div>
                                        </div>
                                        <div class="single-review-form">
                                            <div class="review-box message">
                                                <textarea placeholder="Write your review"></textarea>
                                            </div>
                                        </div>
                                        <div class="review-btn">
                                            <a class="fv-btn" href="#">submit review</a>
                                        </div>
                                    </form>                                
                                </div>
                            </div>
                            <!-- End Single Content -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Product tab -->
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
