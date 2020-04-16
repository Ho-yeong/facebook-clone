<%@page import="java.util.Set"%>
<%@page import="bodybook.User"%>
<%@page import="java.util.Hashtable"%>
<%@page import="bodybook.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<%!
	Member[] arr = new Member[]{new Member("이", "지은", "iu@kakao.com", "iu", "19930516")};

	User userDB = User.makeUserList();
	Hashtable<Integer, Member> list = userDB.getList();
	Set<Integer> userNum = list.keySet();

	public Member login2(String loginId, String loginPw) {
		for (Integer i : userNum) {
			String userId = list.get(i).getEmail();
			String userPw = list.get(i).getPassword();
			for (int j = 0; j < list.size(); j++) {
				if (loginId.equals(userId)) {
					if (loginPw.equals(userPw)) {
						return list.get(i);
					}
				}
			}
		}
		return null;
	}

	public Member login(String loginId, String loginPw) {
		for (Member m : arr) {
			if (m.getEmail().equals(loginId)) {
				if (m.getPassword().equals(loginPw))
					return m;
			}
		}
		return null;
	}%>
	<%
		request.setCharacterEncoding("UTF-8");
	%>

	<%
		String userid = request.getParameter("loginId");
		String userpw = request.getParameter("loginPw");
		Member m = login2(userid, userpw);

		if (m != null) {
			session.setAttribute("login", m);
			session.setMaxInactiveInterval(600);
			response.sendRedirect("../home.jsp");
		} else {
	%>
	<script type="text/javascript">
		alert("로그인 실패");
		//history.go(-1);
		location.href = "../index.jsp";
	</script>
	<%
		}
	%>

	<%=userid%>
	<%=userpw%>
</body>
</html>