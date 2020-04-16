<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bodybook.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bodybook</title>
<link rel="stylesheet" href="css/home.css" type="text/css">
<script src="https://kit.fontawesome.com/cc3f76d574.js" crossorigin="anonymous"></script>
</head>
<body>

<%
	Member login = (Member)session.getAttribute("login");
	if (login == null)
		response.sendRedirect("index.jsp");	// 로그인된 계정이 없으면 index으로 이동
%>

	<header>
		<%@ include file="header.jsp" %>
	</header>

	<main>
		<div class="main__wrapper">
			<div class="main1"></div>
			<div class="main2"></div>
			<div class="main3"></div>
		</div>
	</main>

	

	<nav id="nav">
		<%@ include file="nav.jsp" %>
	</nav>
	
</body>
</html>