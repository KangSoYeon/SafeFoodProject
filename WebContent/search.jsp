<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>민경이와 소연이의 관통프로젝트</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    
    <!-- Bootstrap Fremwork Main Css   -->
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
    <style type="text/css">
    	#searchArea {
    		padding-left: 30%;
    		padding-right: 30%;
    	}
    	
    	.searchLeft {
    		width: 20%;
    		height: 25px;
    	}
    	
    	.searchRight {
    		margin-left: 5%;
    		width: 60%;
    		height: 25px;
    	}
    	
    	.noBorder {
    		border: none;
    	}
    	
    	#submitBtn {
    		background-image: url("images/search_button.png");
    		border: none;
	        width: 32px;
	        height: 32px;
	        cursor: pointer;
	        vertical-align: middle;
    	}
    	
    	.product__details{
    		text-align: center;
    	}
    	
    	label {
    		margin-bottom: 0;
    	}
    	
    	#searchText{
    		border: 1px solid #6666ff;
    		border-radius: 2px;
    		padding-left: 3px;
    	}
    	
    	#criteria{
    		border: 1px solid #6666ff;
    		border-radius: 2px;
    	}
    </style>
    <script type="text/javascript">
    	$(function(){
	    	$("#submitBtn").click(search);
	    	$('#mostWord').click(function(){
    			var most = "<%=(String)session.getAttribute("most")%>"
    			alert(most);

    		})
	    	
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
    	})
    	   
    	
    	function search(){
    		var criteria = $("#criteria").val();
    		var text = $("#searchText").val();
    		var frm = document.getElementById('frm');
    		frm.submit();
    	}
    	
    	function productClick(no){
    		var nono2 = "clicked"+no;
    		document.getElementById(nono2).submit();
    	}
    	
	</script>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper fixed__footer">
        <!-- Start Header Style -->
        <header id="header" class="htc-header">
            <!-- Start Mainmenu Area -->
            <div id="sticky-header-with-topbar" class="mainmenu__area sticky__header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2 col-lg-2 col-6">
                            <div class="logo">
                                <a href="main.do">
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
                                <li class="cart__menu"><span class="ti-heart" id='mostWord'></span></li>
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
        <!-- Start Slider Area -->
        <div class="slider__container slider--one">
            <div class="slider__activation__wrap owl-carousel owl-theme">
                <!-- Start Single Slide -->
                <div class="slide slider__full--screen" style="background: rgba(0, 0, 0, 0) url(images/slider/bg/1.jpeg) no-repeat scroll center center / cover ;">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-lg-8 col-md-offset-2 col-lg-offset-4 col-sm-12 col-xs-12">
                                <div class="slider__inner">
                                    <h1>Safe food <span class="text--theme"><br/>For you</span></h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single Slide -->
            
            </div>
        </div>
 
        <!-- Start Search Area -->
       <section class="htc__product__area ptb--80 bg__white">
            <div class="container">
                <div class="htc__product__container">
                	<form id="frm" action='main.do'>
                		<input type='hidden' name='action' value='searchBoard.do'>
               		<div id="searchArea">
               		
               			<label class="searchLeft noBorder">검색 조건</label>
               			<label class="searchRight noBorder">검색 단어</label>
		        		<select name="criteria" id="criteria" class="searchLeft">
		        			<option value="all">모든 상품</option>
	        				<option value="name">상품명</option>
	        				<option value="maker">제조사</option>
	        				<option value="material">첨가물</option>
	        			</select>
	                    <input id="searchText" name="searchText" type="text" class="searchRight">
	                    <input id="submitBtn" type="submit" value=""/>
		             </div>
		             </form> <!-- 검색 정보를 받아오는 form -->
		             
		             
                     </br></br> <!--  여백 -->
                     <div class="col-md-12 col-sm-12 col-12">            
                         <div class="table-content table-responsive">
                         	
                             <table>
                                 <thead>
                                     <tr>
                                         <th class="product-thumbnail">사진</th>
                                         <th class="product-price">제품명</th>
                                         <th class="product-name">원재료</th>
                                     </tr>
                                 </thead>
                                 
                                 <tbody class="product__list">
                                 	
                                    <!--  이곳에 상품리스트 들어감  -->
                                    <c:forEach var="g" items="${foods}" varStatus="status">
                                      <tr>
                                    	<td class="product-thumbnail">
	                             			<a href="#" onclick="productClick(${g['code']});">
	                             			<img src="${g['img']}" alt="product images"/></a>
	                             			<br>
	                             			<a href="#"><i class="ti-plus"></i></a></div>
	                             			<a href="#"><i class="ti-heart"></i></a></div>
                                    	</td>
                                    	<td class="product-price">
                                    	<!-- main.do?action=searchBoard.do -->
                                    		<a href="#" onclick="productClick(${g['code']});"> 
                                    			${g['name']} </a>
                                    	</td>
                                    	<td class="product-name"><span class="amount">
                                    		${g['material']}
                                    	</span>
                                    	
                                      </tr>
                                      	
                                  	<form action="main.do?action=productdetails.do" method="post" id="clicked${g['code']}"> <!-- 눌러진 상품 정보를 받아오는 form -->
                   						<input type="hidden" name="code" value=${g['code'] }/>
                   					</form>
                                    </c:forEach>
                                  
                                 </tbody>
                                
                             </table>
                           
                         </div>
                     </div>
                </div>
            </div>
        </section>
        <!-- End Our Search Area -->

        
        <!-- Start Footer Area -->
        <footer class="htc__foooter__area" style="background: rgba(0, 0, 0, 0) url(images/bg/1.jpg) no-repeat scroll center center / cover ;">
            <div class="container">
                <div class="row footer__container clearfix">
                    <!-- Start Single Footer Widget -->
                    <div class="col-md-6 col-lg-3 col-sm-6">
                        <div class="ft__widget">
                            <div class="ft__logo">
                                <a href="main.do">
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
                                    <li><a href="main.do">Home</a></li>
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
