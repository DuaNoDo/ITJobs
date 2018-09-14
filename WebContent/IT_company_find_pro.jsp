<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="bean.IT_personal_mem_bean" %>
<%@ page import="proc.IT_mem_DAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="jdbc.*" %>
<%@ page session="true" %>
<% 
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8"); 
%>

<jsp:useBean id="mem_DAO" class="bean.IT_company_mem_bean" scope="application"/>
<jsp:setProperty name="mem_DAO" property="*" />
<% 
	String rst="0";
	IT_mem_DAO dao=IT_mem_DAO.getInstance();
	rst=dao.searchCompanyMember(mem_DAO);
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<script type="text/javascript">
		function none(){
			window.open(IT_company_find_pro.jsp, "회원 아이디", "width=400, height=300, left=100, top=50");
			location.href="IT_company_find.jsp";
		}
		</script>
		<script type="text/javascript">
		function exist(){
			window.open(IT_company_find_pro.jsp, "회원 아이디", "width=400, height=300, left=100, top=50");
			location.href="IT_logIn.jsp";
		}
		</script>
	</head>
	<body>
		<%
			if(rst == "0"){
		%>
		<!-- <script>none()</script> -->
		
		<% 
			response.getWriter().println("일치하는 아이디가 없습니다");
			}
			else {
		%>
		
		<!-- <script>exist()</script> -->
		<% 
			response.getWriter().println("고객님의 아이디는<strong>"+rst+"</strong>입니다");
			}
		%>
	</body>
</html>
