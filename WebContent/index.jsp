<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="bean.IT_personal_mem_bean" %>
<%@ page import="proc.IT_mem_DAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="jdbc.*" %>
<%@ page session="true" %>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>ITJobs</title>

	<link rel="stylesheet" href="css/bootstrap.css">
	<meta name="keywords" content="IT,Jobs,ITJobs">
	<meta name="author" content="Won">
	<link rel="icon" type="image/png" href="assets/images/icon.png">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- START: Styles -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i%7cWork+Sans:400,500,700" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" href="assets/css/combined.css">

    <!-- END: Styles -->

	<script type="text/javascript"
		src="http://code.jquery.com/jquery-2.1.0.min.js">
	</script>

</head>

<body>

		


    <header class="header">
        <!--
        START: Navbar
    -->
        <nav class="navbar navbar-top navbar-sticky navbar-transparent navbar-white-text-on-top">
            <div class="container">
                <div class="nav-table">
                    <a href="index.jsp" class="nav-logo">
                        <img src="assets/images/logo-light.png" alt="" width="85" class="nav-logo-onscroll">
                        <img src="assets/images/logo.png" alt="" width="85">
                    </a>
                    
                    <ul class="nav nav-right hidden-md-down" data-nav-mobile="#nav-mobile">
                    	<li>
							<form method="post" action="IT_search.jsp">
								<input type="text" name="search" placeholder="내용을 입력하세요" size="30"><input  TYPE="IMAGE" name="searchImg" src="assets/images/search.png" weight="25px" height="25px" name="Submit" value="Submit"  align="absmiddle">
							</form>
                    	</li>
                    	<%@ include file="IT_index_mem.jspf" %>

                        <li id="dropdown">
                            <a href="#">상세검색</a>
                            <div class="dropdown-content">
							    <a href="#">구인정보</a>
							    <a href="#">채용정보</a>
							</div>
						</li>
                        
						
                        <li>
                            <a href="board/list.jsp">커뮤니티</a>
                        </li>
                        
                        <li id="dropdown">
                            <a href="#IT_sign.jsp">마이페이지</a>
                            <div class="dropdown-content">
							    <a href="#">Link 1</a>
							    <a href="#">Link 2</a>
							    <a href="#">Link 3</a>
							</div>
						</li>
<!--
                        <li>
                            <a href="blog.html">회원</a>
                        </li>                    
-->
              
                    </ul>

                    <!-- <ul class="nav nav-right nav-icons">
                        <li class="single-icon hidden-lg-up">
                            <a href="#" class="navbar-full-toggle">
                                <span class="icon-burger">
                                    <span class="t-1"></span>
                                    <span class="t-2"></span>
                                    <span class="t-3"></span>
                                </span>
                            </a>
                        </li>
                    </ul> -->
                </div>
            </div>
        </nav>
        <!-- END: Navbar -->

    </header>




    <!--
    START: Navbar Mobile
-->
    <nav class="navbar navbar-full navbar-align-center" id="nav-mobile">
        <div class="navbar-bg">
            <div class="bg-image" style="background-image: url('assets/images/bg-menu.jpg')"></div>
        </div>
        <div class="nav-table">
            <div class="nav-row">
                <div class="container">
                    <div class="nav-header">

                        <div class="nav-logo">
                            <a href="index.html" class="nav-logo">
                                <img src="assets/images/logo-light.svg" alt="" width="85">
                            </a>
                        </div>

                        <div class="nav-close navbar-full-toggle">
                            <span class="icon-close"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nav-row-full nav-row">
                <div class="nano">
                    <div class="nano-content">
                        <div class="nav-table">
                            <div class="nav-row nav-row-full nav-row-center navbar-mobile-content">
                                <ul class="nav">
                                    <!-- Here will be inserted menu from [data-mobile-menu="#nav-mobile"] -->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nav-row">
                <div class="container">
                    <div class="nav-social">
                        <ul>
                            <li><a href="https://twitter.com/nkdevv"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://www.facebook.com/unvabdesign/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://dribbble.com/_nK"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="https://www.instagram.com/unvab/"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- END: Navbar Mobile -->


    <div class="main">

        <!-- START: Header Title -->
        <div class="header-title header-title-full">
            <div class="bg-image">
                <div style="background-image: url('assets/images/city1.jpg');"></div>
                <div class="bg-image-overlay" style="background-color: rgba(00, 00, 00, 0.2);"></div>
            </div>
            <div class="header-table">
                <div class="header-table-cell">

<!-- START: Carousel -->
                <div class="carousel-2 carousel-x2 carousel-no-margin carousel-all-visible blog-isotope" data-autoplay="8000" data-dots="true">
                    <div class="carousel-inner">


                        <div>
                            <div>
                                <div class="pl-15 pr-15">
                                    <div class="blog-post">
                                        <div class="post-thumb">
                                            <a href="blog-single.html">
                                                <img src="assets/images/post-1-nexon.jpg" alt="사진이 없잖아?" class="img-stretch" width="350px" height="350px">
                                            </a>
                                            <div class="post-category"><a href="#">Public employment</a></div>
                                        </div>
                                        <h2 class="post-title h4"><a href="blog-single.html">Nexon Company</a></h2>

                                        <div class="post-date">
                                            03th ~ 18th sep. 2018
                                        </div>

                                        <div class="post-text">
                                            <p>게임 프로그래밍, 게임기획, 게임아트, 기업디자인, 프로덕션게임</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="gap-1"></div>
                            </div>
                        </div>


                        <div>
                            <div>
                                <div class="pl-15 pr-15">
                                    <div class="blog-post">
                                        <div class="post-thumb">
                                            <a href="blog-single.html">
                                                <img src="assets/images/post-2-netmarble.jpg" alt="" class="img-stretch" width="350px" height="350px">
                                            </a>
                                            <div class="post-category"><a href="#">New employment</a></div>
                                        </div>
                                        <h2 class="post-title h4"><a href="blog-single.html">Netmarble Company</a></h2>

                                        <div class="post-date">
                                            03rd sep. ~ 01st oct. 2018
                                        </div>

                                        <div class="post-text">
                                            <p>게임 퍼블리싱 : 사업PM (국내, 글로벌) / 마케팅 (국내, 글로벌)</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="gap-1"></div>
                            </div>
                        </div>


                        <div>
                            <div>
                                <div class="pl-15 pr-15">
                                    <div class="blog-post">
                                        <div class="post-thumb">
                                            <a href="blog-single.html">
                                                <img src="assets/images/post-3-IBKSystem.jpg" alt="" class="img-stretch" width="350px" height="350px">
                                            </a>
                                            <div class="post-category"><a href="#">Career employee</a></div>
                                        </div>
                                        <h2 class="post-title h4"><a href="blog-single.html">IBK System</a></h2>

                                        <div class="post-date">
                                             30th Aug. ~ 12th sep. 2018
                                        </div>

                                        <div class="post-text">
                                            <p>2018년 경력직원 모집 (금융개발(SI) / 시스템운영(SM) / 웹·앱개발자)</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="gap-1"></div>
                            </div>
                        </div>


                        <div>
                            <div>
                                <div class="pl-15 pr-15">
                                    <div class="blog-post">
                                        <div class="post-thumb">
                                            <a href="blog-single.html">
                                                <img src="assets/images/post-4-joycity.jpg" alt="" class="img-stretch"  width="350px" height="350px">
                                            </a>
                                            <div class="post-category"><a href="#">New employment</a></div>
                                        </div>
                                        <h2 class="post-title h4"><a href="blog-single.html">JoyCity</a></h2>

                                        <div class="post-date">
                                            03rd ~ 10th sep. 2018
                                        </div>

                                        <div class="post-text">
                                            <p>자사 모바일 Platform iOS SDK 개발 및 유지보수</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="gap-1"></div>
                            </div>
                        </div>


                        <div>
                            <div>
                                <div class="pl-15 pr-15">
                                    <div class="blog-post">
                                        <div class="post-thumb">
                                            <a href="blog-single.html">
                                                <img src="assets/images/post-5-tmon.jpg" alt="" class="img-stretch"  width="350px" height="350px">
                                            </a>
                                            <div class="post-category"><a href="#">Career employee</a></div>
                                        </div>
                                        <h2 class="post-title h4"><a href="blog-single.html">TMON</a></h2>

                                        <div class="post-date">
                                            At all times
                                        </div>

                                        <div class="post-text">
                                            <p>부분별 신입 / 경력사원 채용</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="gap-1"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- END: Carousel -->
                </div>
            </div>

            <div>
                <a class="header-title-scroll-down text-white" href="#header-title-scroll-down">
                    <span class="pe-7s-angle-down"></span>
                </a>
            </div>

        </div>

        <div id="header-title-scroll-down"></div>

        <!-- END: Header Title -->

        <!-- START: Gold -->
        <div class="box bg-white" id="projects" height="2200px">
            <div class="gap-4 mt-5"></div>

            <h2 class="text-xs-center display-4">Gold</h2>

            <div class="gap mnt-6"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="text-xs-center">골드 상품
                        </div>
                    </div>
                </div>
            </div>

            <div class="gap-2 mt-12"></div>
            <div class="container">
            <div class="portfolio-list isotope isotope-3-cols">

				<%@ include file="advertisement/middle_carousel.jspf" %>
                <!-- <div class="isotope-item" data-filter="Mockup">
                    <div class="portfolio-item portfolio-item-square portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="portfolio-item-link"></a>
                        <div class="portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-7-sm.jpg');"></div>
                        </div>
                        <div class="portfolio-item-info portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Vinyl Record</h2>
                                <div class="portfolio-item-category">Mockup</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="isotope-item" data-filter="Print">
                    <div class="portfolio-item portfolio-item-square portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="portfolio-item-link"></a>
                        <div class="portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-4-sm.jpg');"></div>
                        </div>
                        <div class="portfolio-item-info portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Modern T-Shirt</h2>
                                <div class="portfolio-item-category">Print</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="isotope-item" data-filter="Branding">
                    <div class="portfolio-item portfolio-item-square portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="portfolio-item-link"></a>
                        <div class="portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-5-sm.jpg');"></div>
                        </div>
                        <div class="portfolio-item-info portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Minimal Bag</h2>
                                <div class="portfolio-item-category">Branding</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="isotope-item" data-filter="Design">
                    <div class="portfolio-item portfolio-item-square portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="portfolio-item-link"></a>
                        <div class="portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-9-sm.jpg');"></div>
                        </div>
                        <div class="portfolio-item-info portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Clean &amp; Groovy</h2>
                                <div class="portfolio-item-category">Design</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="isotope-item" data-filter="Design">
                    <div class="portfolio-item portfolio-item-square portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="portfolio-item-link"></a>
                        <div class="portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-3-sm.jpg');"></div>
                        </div>
                        <div class="portfolio-item-info portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Minimal Mobile App</h2>
                                <div class="portfolio-item-category">Design</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="isotope-item" data-filter="Print">
                    <div class="portfolio-item portfolio-item-square portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="portfolio-item-link"></a>
                        <div class="portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-8-sm.jpg');"></div>
                        </div>
                        <div class="portfolio-item-info portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">White T-Shirt</h2>
                                <div class="portfolio-item-category">Print</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="isotope-item" data-filter="Branding">
                    <div class="portfolio-item portfolio-item-square portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="portfolio-item-link"></a>
                        <div class="portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-2-sm.jpg');"></div>
                        </div>
                        <div class="portfolio-item-info portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Business Card</h2>
                                <div class="portfolio-item-category">Branding</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="isotope-item" data-filter="Photography">
                    <div class="portfolio-item portfolio-item-square portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="portfolio-item-link"></a>
                        <div class="portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-6-sm.jpg');"></div>
                        </div>
                        <div class="portfolio-item-info portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Heja Stockholm</h2>
                                <div class="portfolio-item-category">Photography</div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="isotope-item" data-filter="Photography">
                    <div class="portfolio-item portfolio-item-square portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="portfolio-item-link"></a>
                        <div class="portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-12-sm.jpg');"></div>
                        </div>
                        <div class="portfolio-item-info portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Paper Bag</h2>
                                <div class="portfolio-item-category">Photography</div>
                            </div>
                        </div>
                    </div>
                </div> -->

            </div>
            </div>
            <div class="gap-4 mt-15"></div>
        </div>
        <!-- END: Portfolio -->

        <!-- START: Reviews -->
        <div class="box bg-dark-1" height="300px">
            <div class="bg-image bg-image-parallax" style="background-image: url('assets/images/bg-pattern.jpg');"></div>
            <div class="gap-5 mnt-6"></div>
            <div class="gap-3"></div>
            <div class="container-fluid">
                <!-- START: Carousel -->
                <div class="carousel carousel-all-visible text-white" data-autoplay="18000" data-dots="true">
                    <div class="carousel-inner">
                        <div>
                            <div>
                                <blockquote class="blockquote-style-1 text-white">
                                    <p>Outstanding job and exceeded all expectations. It was a pleasure to work with them on a sizable first project and am looking forward to start the next one asap.</p>
                                    <cite>Michael Hopkins</cite>
                                </blockquote>
                                <div class="gap-3 mt-10"></div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <blockquote class="blockquote-style-1 text-white">
                                    <p>Outstanding job and exceeded all expectations. It was a pleasure to work with them on a sizable first project and am looking forward to start the next one asap.</p>
                                    <cite>Michael Hopkins</cite>
                                </blockquote>
                                <div class="gap-3 mt-10"></div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <blockquote class="blockquote-style-1 text-white">
                                    <p>Outstanding job and exceeded all expectations. It was a pleasure to work with them on a sizable first project and am looking forward to start the next one asap.</p>
                                    <cite>Michael Hopkins</cite>
                                </blockquote>
                                <div class="gap-3 mt-10"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END: Carousel -->
            </div>
            <div class="gap-4 mt-3"></div>
        </div>
        <!-- END: Reviews -->

        <!-- START: Partners -->
        <div class="bg-white">
            <div class="container">
                <div class="carousel-2 carousel-x4 carousel-no-margin carousel-all-visible">
                    <div class="carousel-inner">
                        <div>
                            <div>
                                <div class="box-1">
                                    <img src="assets/images/partner-logo-1-dark.png" alt="" class="img-fit">
                                </div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <div class="box-1">
                                    <img src="assets/images/partner-logo-2-dark.png" alt="" class="img-fit">
                                </div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <div class="box-1">
                                    <img src="assets/images/partner-logo-3-dark.png" alt="" class="img-fit">
                                </div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <div class="box-1">
                                    <img src="assets/images/partner-logo-4-dark.png" alt="" class="img-fit">
                                </div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <div class="box-1">
                                    <img src="assets/images/partner-logo-5-dark.png" alt="" class="img-fit">
                                </div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <div class="box-1">
                                    <img src="assets/images/partner-logo-6-dark.png" alt="" class="img-fit">
                                </div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <div class="box-1">
                                    <img src="assets/images/partner-logo-7-dark.png" alt="" class="img-fit">
                                </div>
                            </div>
                        </div>
                        <div>
                            <div>
                                <div class="box-1">
                                    <img src="assets/images/partner-logo-8-dark.png" alt="" class="img-fit">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END: Partners -->

        <!-- START: Blog -->
        <div class="box bg-gray-1" id="blog">
            <div class="gap-4 mt-5"></div>

            <h2 class="text-xs-center display-4">Latest Blog</h2>

            <div class="gap mnt-6"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="text-xs-center">Donec orci sem, pretium ac dolor et, faucibus faucibus mauris. Etiam,pellentesque faucibus. Vestibulum gravida volutpat ipsum non ultrices.
                        </div>
                    </div>
                </div>
            </div>

            <div class="gap-2 mt-12"></div>
            <div class="container">
                <!-- START: Carousel -->
                <div class="carousel-2 carousel-x2 carousel-no-margin carousel-all-visible blog-isotope" data-dots="true">
                    <div class="carousel-inner">


                        <div>
                            <div>
                                <div class="pl-15 pr-15">
                                    <div class="blog-post">
                                        <div class="post-thumb">
                                            <a href="blog-single.html">
                                                <img src="assets/images/post-1-mid.jpg" alt="" class="img-stretch">
                                            </a>
                                            <div class="post-category"><a href="#">Nature</a></div>
                                        </div>
                                        <h2 class="post-title h4"><a href="blog-single.html">Something I need to tell you</a></h2>

                                        <div class="post-date">
                                            September 18, 2016
                                        </div>

                                        <div class="post-text">
                                            <p>That female isn't midst divide kind upon seas lights greater green creature lights brought.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="gap-1"></div>
                            </div>
                        </div>


                        <div>
                            <div>
                                <div class="pl-15 pr-15">
                                    <div class="blog-post">
                                        <div class="post-thumb">
                                            <a href="blog-single.html">
                                                <img src="assets/images/post-3-mid.jpg" alt="" class="img-stretch">
                                            </a>
                                            <div class="post-category"><a href="#">Nature</a></div>
                                        </div>
                                        <h2 class="post-title h4"><a href="blog-single.html">The History of Nature</a></h2>

                                        <div class="post-date">
                                            August 27, 2016
                                        </div>

                                        <div class="post-text">
                                            <p>Third is fly. From one under in itself two waters, all own. Said male shall greater own grass.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="gap-1"></div>
                            </div>
                        </div>


                        <div>
                            <div>
                                <div class="pl-15 pr-15">
                                    <div class="blog-post">
                                        <div class="post-thumb">
                                            <a href="blog-single.html">
                                                <img src="assets/images/post-4-mid.jpg" alt="" class="img-stretch">
                                            </a>
                                            <div class="post-category"><a href="#">Branding</a></div>
                                        </div>
                                        <h2 class="post-title h4"><a href="blog-single.html">Are you doing the Right Way?</a></h2>

                                        <div class="post-date">
                                            August 14, 2016
                                        </div>

                                        <div class="post-text">
                                            <p>Which all, morning isn't. Female and own living dry, and morning lesser first he stars under years thing.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="gap-1"></div>
                            </div>
                        </div>


                        <div>
                            <div>
                                <div class="pl-15 pr-15">
                                    <div class="blog-post">
                                        <div class="post-thumb">
                                            <a href="blog-single.html">
                                                <img src="assets/images/post-5-mid.jpg" alt="" class="img-stretch">
                                            </a>
                                            <div class="post-category"><a href="#">Design</a></div>
                                        </div>
                                        <h2 class="post-title h4"><a href="blog-single.html">Ten things about Photography</a></h2>

                                        <div class="post-date">
                                            August 14, 2016
                                        </div>

                                        <div class="post-text">
                                            <p>Be forth, god for rule face abundantly all our two winged made. Is whose morning female.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="gap-1"></div>
                            </div>
                        </div>


                        <div>
                            <div>
                                <div class="pl-15 pr-15">
                                    <div class="blog-post">
                                        <div class="post-thumb">
                                            <a href="blog-single.html">
                                                <img src="assets/images/post-6-mid.jpg" alt="" class="img-stretch">
                                            </a>
                                            <div class="post-category"><a href="#">Design</a></div>
                                        </div>
                                        <h2 class="post-title h4"><a href="blog-single.html">Why you should Always First</a></h2>

                                        <div class="post-date">
                                            August 14, 2016
                                        </div>

                                        <div class="post-text">
                                            <p>Lights give have herb. First. Seed lesser his a fruit. Stars good divide fish appear don't, third deep.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="gap-1"></div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- END: Carousel -->
            </div>
            <div class="gap-5 mt-20"></div>
        </div>
        <!-- END: Blog -->

        




        <!--
    START: Footer
-->
        <footer class="footer">


            <div class="footer-cont">
                <div class="container text-xs-center">
                    <div class="footer-social">
                        <ul>
                            <li><a href="https://twitter.com/nkdevv"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://www.facebook.com/unvabdesign/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://dribbble.com/_nK"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="https://www.instagram.com/unvab/"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>

                    <div class="footer-text">
                        
                    </div>
                </div>
            </div>
        </footer>
        <!-- END: Footer -->


    </div>




    <!-- START: Scripts -->

    <script src="assets/js/combined.js"></script>
    
    <!-- END: Scripts -->


</body>

</html>
		<!-- <div class="isotope-item" data-filter="Mockup">
                    <div class="portfolio-item portfolio-item-square portfolio-item-info-style-1">
                        <a href="portfolio-single.html" class="portfolio-item-link"></a>
                        <div class="portfolio-item-image">
                            <div style="background-image: url('assets/images/portfolio-7-sm.jpg');"></div>
                        </div>
                        <div class="portfolio-item-info portfolio-item-info-center text-xs-center">
                            <div>
                                <h2 class="portfolio-item-title h3">Vinyl Record</h2>
                                <div class="portfolio-item-category">Mockup</div>
                            </div>
                        </div>
                    </div>
                </div> -->