<%@page import="bean.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="article" scope="page" class="bean.BoardDataBean" />
<jsp:setProperty name="article" property="*" />

<%
	String loggingId = session.getAttribute("loginId").toString();
	String loggingPw = session.getAttribute("loginPw").toString();
%>
<%
	if (loggingId.isEmpty()) {
%>
<script>
	alert("로그인한 유저만 가능합니다");
	history.go(-1);
</script>
<%
	} else {
		article.setWriter(loggingId);
		article.setPasswd(loggingPw);
	}
%>

<%
	article.setReg_date(new Timestamp(System.currentTimeMillis()));
	article.setIp(request.getRemoteAddr());

	BoardDBBean dbPro = BoardDBBean.getInstance();
	dbPro.insertArticle(article);

	response.sendRedirect("list.jsp");
%>