<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="bean.IT_personal_mem_bean" %>
<%@ page import="proc.IT_mem_DAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="jdbc.*" %>
<%@ page session="true" %>
<jsp:useBean id="mem_DAO" class="bean.IT_personal_mem_bean" scope="application"/>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>ITJobs</title>

	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="assets/css/join.css">
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
<%String loggingId=session.getAttribute("loginId").toString(); %>
<%
	mem_DAO.setIT_id(loggingId);
	IT_mem_DAO dao=IT_mem_DAO.getInstance();
	dao.checkPersonalMemberDuplicate(mem_DAO);
%>

	<div id="stylized" class="myform" style=" margin-top:200px">
		<form id="form" name="form" method="post" action="IT_join_modification_pro.jsp">
			
			<p>개인회원 수정</p>
			
			<label>Name
				<span class="small">이름 입력</span>
			</label>
			<input type="text" name="IT_name" id="name"/>
			<div class="spacer"></div>
		
			<label>Password
				<span class="small">패스워드 6자 이상</span>
			</label>
			<input type="password" name="IT_pass" id="password" />
			
			<label>Password Check
				<span class="small">비밀번호 재입력</span>
			</label>
			<input type="password" name="password" id="password" />
			
			<div class="spacer"></div>
			
			
			<label>Phone
			<span class="small">전화번호</span>
			</label>
			<select id="email1" name="IT_phone1" class="moreInput">
				<option value="010" selected>010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select>
			<span class="moreInput">-</span>
			<input type="text" name="IT_phone2" id="phone2" style="width:100px"/>
			<span class="moreInput">-</span>
			<input type="text" name="IT_phone3" id="phone3" style="width:100px"/>
			
			<div class="spacer"></div>
			<span>
			<label>Address
			<span class="small">주소</span>
			</label>
			
			<input type="text" id="sample6_postcode" name="IT_zip" placeholder="우편번호">
			<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="width:100px;"><br>
			
			<div class="spacer"></div>
			
			<label style="visibility:hidden;">00000
			<span class="small" style="visibility:hidden;">0000</span>
			</label>
			<input type="text" id="sample6_address" name="IT_addr1" placeholder="주소">
			<input type="text" id="sample6_address2" name="IT_addr2" placeholder="상세주소">
			</span>
			
			<div class="spacer"></div>
			<button type="submit">Sign-up</button>
			<div class="spacer"></div>
		
		</form>
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
  			<%-- <% mem_DAO.setIT_id(%>
  			document.getElementsByNdocument.getElementsByName('txt1')[0].valueame('IT_id')[0].value
  			<%);%> --%>
  			window.open("IT_personal_duplicate.jsp", "id 중복체크", "width=400, height=300, left=100, top=50"); 
  		}
  	</script>
    <!-- END: Scripts -->


</body>

</html>