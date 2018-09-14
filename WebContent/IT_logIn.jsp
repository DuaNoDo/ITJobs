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

	<link rel="stylesheet" href="./assets/css/input.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	
	<meta name="keywords" content="IT,Jobs,ITJobs">
	<meta name="author" content="Won">
	<link rel="icon" type="image/png" href="assets/images/icon.png">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- START: Styles -->

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i%7cWork+Sans:400,500,700" rel="stylesheet" type="text/css">
    
    <link rel="stylesheet" href="assets/css/combined.css">


	<!-- START: BUTTON STYLE -->
		<!-- input css -->
	<style></style>
	
	<!-- END: BUTTON STYLE --> 
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
								<input type="text" name="search" placeholder="내용을 입력하세요" size="30"><input  name="searchImg" TYPE="IMAGE" src="assets/images/search.png" weight="25px" height="25px" name="Submit" value="Submit"  align="absmiddle">
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
                            <a href="portfolio.html">커뮤니티</a>
                        </li>
                        
                        <li id="dropdown">
                            <a href="#IT_sign.jsp">마이페이지</a>
                            <div class="dropdown-content">
							    <a href="#">Link 1</a>
							    <a href="#">Link 2</a>
							    <a href="#">Link 3</a>
							</div>
						</li>             
                    </ul>
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
            <div class="header-table" >
                <!-- 내용 넣을 곳 -->
                <form action="#" style="margin-top:200px;margin-bottom:0px;">
						<input type="button" name="IT_mem_type" id="mem_type1" value="개인" onclick="personal();" /> <!-- id가 다름 -->
						<input type="button" name="IT_mem_type" id="mem_type" value="기업" onclick="company();"   />
				</form>
					
                <div style="margin:0 auto;background-color:rgba(255,255,255,0.7);width:500px;height:375px;margin-top:0px;">
                	
                	<div id="mem_type_personal">
						<%@ include file="IT_personal_logIn.jspf" %>
					</div>
					<div id="mem_type_company" style="display:none">
						<%@ include file="IT_company_logIn.jspf" %>
					</div>
				</div>
		<!-- 여기까지 내용 넣기 -->
            </div>
        </div>

        <div id="header-title-scroll-down"></div>
		
        <!-- END: Header Title -->
    </div>

	<script>
	function change(){
		
		
	}
	
	</script>
    <!-- START: Scripts -->

    <script src="assets/js/combined.js"></script>
    <script>
    function personal(){
    	document.getElementById("mem_type_personal").style.display="block";
    	document.getElementById("mem_type_company").style.display="none";
    	document.getElementById("mem_type_personal").style.backgroundColor="#ffffff";
    	document.getElementById("mem_type_company").style.backgroundColor="#9fa3a8";
    	document.getElementById("mem_type1").style.borderBottom="none";
    	document.getElementById("mem_type").style.borderBottom="3px solid #000";
    }
    function company(){
    	document.getElementById("mem_type_personal").style.display="none";
    	document.getElementById("mem_type_company").style.display="block";
    	document.getElementById("mem_type_personal").style.backgroundpColor="#ffffff";
    	document.getElementById("mem_type_company").style.backgroundColor="#9fa3a8";
    	document.getElementById("mem_type1").style.borderBottom="3px solid #000";
    	document.getElementById("mem_type").style.borderBottom="none";
    }
    </script>
    <!-- END: Scripts -->


</body>

</html>