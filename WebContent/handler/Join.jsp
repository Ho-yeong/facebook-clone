<%@page import="bodybook.Member"%>
<%@page import="bodybook.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="user" class="bodybook.Member"/>
<% 
	Member member = new Member(); 
	User userDB = User.makeUserList();
%>

<jsp:setProperty property="*" name="user"/>

<%
	userDB.addUser(user);
	response.sendRedirect("../index.jsp");
%>


</body>
</html>