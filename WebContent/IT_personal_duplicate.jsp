<%@page import="proc.IT_mem_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<body>
		
	</body>
</html>
<jsp:useBean id="mem_DAO" class="bean.IT_personal_mem_bean" scope="application"/>
<jsp:setProperty name="mem_DAO" property="*" />
<% 
	mem_DAO.setIT_id(request.getParameter("IT_id"));
	int rst=0;
	IT_mem_DAO dao=IT_mem_DAO.getInstance();
	rst=dao.checkPersonalMemberDuplicate(mem_DAO);
		response.getWriter().println(mem_DAO.getIT_id());
	if(rst==1)
		response.getWriter().println("사용 불가능한 아이디 입니다.");	
	else if(rst==0)
		response.getWriter().println("사용 가능한 아이디 입니다.");	
	else
		response.getWriter().println("사용 불가능한 아이디 입니다.");	
%>
