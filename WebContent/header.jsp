
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="member" class="bodybook.Member"/>
<%
	// 멤버 이름 가져오기 
%>
	
<div class="header__wrapper">
	<div class="container">
		<a href="home.jsp">
			<!-- 로그인 안되어있을 시 index페이지로 이동 -->
			<i class="fab fa-facebook-square header__icon"></i>
		</a>
		<form action="search.jsp" class="header__search">
			<input type="text" placeholder="검색">
			<i class="fas fa-search header__search-icon"></i>
		</form>
	</div>
	
	<div class="container2">
		<ul>
			<li><div class="prifile__pic-name"></div>${ login.name_given } ${ login.name_family }</li>
			<li>홈</li>
			<li>만들기</li>
			<li><i class="fas fa-user-friends"></i></li>
			<li><a id="m" style="cursor: pointer;"><i class="fab fa-facebook-messenger"></i></a></li>
			<li><i class="fas fa-bell"></i></li>
			<li><a href="handler/logout.jsp" title="로그아웃"><i class="fas fa-location-arrow"></i></a></li>
		</ul>
	</div>
</div>

