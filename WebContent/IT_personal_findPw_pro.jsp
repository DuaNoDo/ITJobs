<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="bean.IT_personal_mem_bean"%>
<%@ page import="proc.IT_mem_DAO"%>
<%@ page import="java.sql.*"%>
<%@ page import="jdbc.*"%>
<%@ page session="true"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="mem_DAO" class="bean.IT_personal_mem_bean"
	scope="application" />
<jsp:setProperty name="mem_DAO" property="*" />
<%
	String rst = "0";
	IT_mem_DAO dao = IT_mem_DAO.getInstance();
	rst = dao.searchPwPersonalMember(mem_DAO);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
	<%
		if (rst == "0") {
	%>
	<%
		response.getWriter().println("일치하는 정보가 없습니다.");
		} else {
	%>
	<%
		response.getWriter().println("고객님의 비밀번호는<strong>" + rst + "</strong>입니다");
		}
	%>
	</script>
</body>
</html>


