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

<jsp:useBean id="mem_DAO" class="bean.IT_personal_mem_bean" scope="application"/>
<jsp:setProperty name="mem_DAO" property="*" />
<% 
	int rst=0;
	IT_mem_DAO dao=IT_mem_DAO.getInstance();
	rst=dao.checkPersonalMember(mem_DAO);
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<body>
		<%
			if(rst == 2){
			session.setAttribute("loginId", mem_DAO.getIT_id());
			session.setAttribute("loginPw",mem_DAO.getIT_pass());
			session.setMaxInactiveInterval(60*60);

		%>
		
	<script type="text/javascript">
		location.href="index.jsp";
	</script>
		<%  }else if(rst == 1){ %>
	<script type="text/javascript">
		alert("비밀번호가 틀렸습니다");
		history.go(-1);
	</script>
		<%  }else{ %>
	<script type="text/javascript">
		alert("존재하지 않은 계정입니다.");
		history.go(-1); 
	</script>
		<%  } %>
	</body>
</html>


