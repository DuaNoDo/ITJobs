
<%@page import="proc.IT_adv_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="adv" scope="application" class="bean.AdvertisementBean" />
<jsp:setProperty name="adv" property="*" />


<script>
	alert("로그인한 유저만 가능합니다");
	history.go(-1);
</script>

<%
	adv.setAdv_reg_date(new Timestamp(System.currentTimeMillis()));
	
	IT_adv_DAO dbpro=IT_adv_DAO.getInstance();
	dbpro.insertAdvertise(adv);

	response.sendRedirect("../index.jsp");
%>