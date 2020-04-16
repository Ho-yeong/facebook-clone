<%@page import="bodybook.Member"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Hashtable"%>
<%@page import="bodybook.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testpage</title>
</head>
<body>

<%!
	User userDB = User.makeUserList();
	Hashtable<Integer, Member> list = userDB.getList();
	Set<Integer> userNum = list.keySet();
%>

<%
for (Integer i : userNum) {
	out.print(list.get(i).getEmail() + "<br>");
	out.print(list.get(i).getGender() + "<br>");
	out.print(list.get(i).getName_given() + "<br>");
	out.print(list.get(i).getName_family() + "<br>");
	out.print(list.get(i).getPassword() + "<br>");
	}
%>





</body>
</html>