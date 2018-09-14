<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="bean.IT_personal_mem_bean" %>
<%@ page import="proc.IT_mem_DAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="jdbc.*" %>
<% 
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8"); 
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
		
	</body>
</html>
<jsp:useBean id="mem_DAO" class="bean.IT_personal_mem_bean" scope="application"/>
<jsp:setProperty name="mem_DAO" property="*" />
<% 

	IT_mem_DAO dao=IT_mem_DAO.getInstance();
	dao.joinPersonalMember(mem_DAO);
	
%>
	<script type="text/javascript">
		location.href="IT_logIn.jsp";
	</script>
