<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="bean.IT_personal_mem_bean" %>
<%@ page import="proc.IT_mem_DAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="jdbc.*" %>
<%@ page session="true" %>
<jsp:useBean id="mem_DAO" class="bean.IT_personal_mem_bean" scope="application"/>
<html>
<style>

</style>
<style>
.IT_btn{
		margin-top:5px;
		margin-bottom:5px;
		padding:10px 0; 
		width:200px; 
		font-size:18px; 
		font-weight:400; 
		border: none; 
		outline:none; 
		color:#FFF; 
		background-color:rgba(0,0,0,0.8); 
		cursor: pointer;
		}
	
	.IT_btn[type="submit"]{
		margin-left:30px;
		width:135%;
		height:130px;	
		font-size:18px; 
		font-weight:400; 
		border: none; 
		outline:none; 
		color:#000000; 
		background-color:#FFFFFF;
		cursor: pointer;
		font-weight:bold;
	}
	
	.IT_btn:hover {
    	background-color: #F96D6E;
	 	color:white;
	 	font-weight:bold;
		}
			 
	#mem_type1:hover{
		background-color: #4286f4;
		color:white;
		font-weight:bold;
		}
			 
	.IT_btn[type="submit"]:hover {
    	background-color:rgba(0,0,0,0.8);
	 	color:white;
	 	font-weight:bold;
	 	transition: 0.5s;
    	-webkit-transition:0.5s;
		}
</style>
	<!-- form_position css -->
<style>	
 #join_form, #submit{
 	float:right;
 	position:relative;
 	left:-50%;
 	margin:0px;
 }
 #join_form > div{
 	float:left;
 	position:relative;
 	left:50%;
 }
 #submit > buttton{
 	float:left;
 	position:relative;
 	left:50%;
 }
 
</style>

<style>

div .myform{
	width:100%;
	height:530px;
	padding:10px;
	border-radius:25px;
}
div #stylized{
	background:rgba(255,255,255,0.8);
}

#join_form > .IT_join_input {
   	width: 150px;
   	box-sizing: border-box;
	}

#join_form .IT_join_input :focus {
    border: 3px solid #555;
	transition: 0.5s;
   	-webkit-transition:0.5s;
		}	


.</style>		
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
    <link rel="stylesheet" href="assets/css/join.css">
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
            <!-- 여기부터 -->
            <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>

	<div >
		<form action="#" style= "margin-top: 110px">
			<input type="button" name="IT_mem_type" id="mem_type1" value="개인 회원용" onclick="personal();" class="IT_btn"/>
			<input type="button" name="IT_mem_type" id="mem_type" value="회사 회원용" onclick="company();" class="IT_btn"/>
		</form>
		<div id="mem_type_personal">
			<%@ include file="IT_join_personal.jspf" %>
		</div>
		<div id="mem_type_company" style="display:none">
			<%@ include file="IT_join_company.jspf" %>
		</div>
	</div>


	<!-- 여기까지 -->
        </div>

        <div id="header-title-scroll-down"></div>
		
        <!-- END: Header Title -->
    </div>

    <!-- START: Scripts -->

    <script src="assets/js/combined.js"></script>
    <script language="javascript">
  		function showPopup() {
  			var id=document.getElementsByName('IT_id')[0].value;
  			var url="./IT_personal_duplicate.jsp?IT_id="+id;
  			window.open(url, "id 중복체크", "width=400, height=300, left=100, top=50"); 
  		}
  		
  	</script>
  	<script>
    function personal(){
    	document.getElementById("mem_type_personal").style.display="block";
    	document.getElementById("mem_type_company").style.display="none";
    }
    function company(){
    	document.getElementById("mem_type_personal").style.display="none";
    	document.getElementById("mem_type_company").style.display="block";
    }
    </script>
    <!-- END: Scripts -->


</body>

</html>