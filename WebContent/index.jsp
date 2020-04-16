<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bodybook.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bodybook - 로그인 또는 가입</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
<%
	Member login = (Member)session.getAttribute("login");
	if (login != null)
		response.sendRedirect("home.jsp");
%>

<header>
	<div class="header-wrraper">
		<div class="header-title"> bodybook</div>
		<form class="header__form" action="handler/login.jsp" method="post">
			<div class="header__form-ID">
				<p>이메일 또는 휴대폰</p>
				<input type="text" name="loginId">
			</div>
			<div class="header__form-PW">
				<p>비밀번호</p>
				<input type="password" name="loginPw">
				<p class="lost">계정을 잊으셨나요?</p>
			</div>
			<input class="button" type="submit" value="로그인">
		</form>
	</div>
</header>

<main>
	<div class="container">
		<div class="container__pic">
			<div class="container__pic-title">Bodybook에서 전세계에 있는 친구, 가족, 지인들과 함께 이야기를 나눠보세요.
			</div>
			<img alt="아무거나" src="https://static.xx.fbcdn.net/rsrc.php/v3/yi/r/OBaVg52wtTZ.png">
		</div>
		<form class="joinForm" action="handler/Join.jsp" method="post">
			<div class="joinForm__title">
				<p>가입하기</p>
				<p>빠르고 쉽습니다.</p>
			</div>
			<div class="joinForm__name">
				<input type="text" name="name_family" placeholder="성(姓)" required>
				<input type="text" name="name_given" placeholder="이름(성은 제외)" required>
			</div>
			<div class="joinForm__email">
				<input type="text" name="email" placeholder="휴대폰 번호 또는 이메일" required>
			</div>
			<div class="joinForm__PW">
				<input type="password" name="password" placeholder="새 비밀번호" required>
			</div>
			
			<div class="joinForm__birth">
				<p>생일</p>
				<select name="birth__YY">
				    <script>
					    for(var i=1920; i<=2019; i++){
					        document.write("<option value="+i+">"+i+"</option>");
					    }
				    </script>
				</select>
				<select name="birth__MM">
					<option value="1">1월</option>
		            <option value="2">2월</option>
		            <option value="3">3월</option>
		            <option value="4">4월</option>
		            <option value="5">5월</option>
		            <option value="6">6월</option>
		            <option value="7">7월</option>
		            <option value="8">8월</option>
		            <option value="9">9월</option>
		            <option value="10">10월</option>
		            <option value="11">11월</option>
		            <option value="12">12월</option>
				</select>
				<select name="birth__DD">
					<option value="1">1일</option>
		            <option value="2">2일</option>
		            <option value="3">3일</option>
		            <option value="4">4일</option>
		            <option value="5">5일</option>
		            <option value="6">6일</option>
		            <option value="7">7일</option>
		            <option value="8">8일</option>
		            <option value="9">9일</option>
		            <option value="10">10일</option>
		            <option value="11">11일</option>
		            <option value="12">12일</option>
		            <option value="13">13일</option>
		            <option value="14">14일</option>
		            <option value="15">15일</option>
		            <option value="16">16일</option>
		            <option value="17">17일</option>
		            <option value="18">18일</option>
		            <option value="19">19일</option>
		            <option value="20">20일</option>
		            <option value="21">21일</option>
		            <option value="22">22일</option>
		            <option value="23">23일</option>
		            <option value="24">24일</option>
		            <option value="25">25일</option>
		            <option value="26">26일</option>
		            <option value="27">27일</option>
		            <option value="28">28일</option>
		            <option value="29">29일</option>
		            <option value="30">30일</option>
		            <option value="31">31일</option>
				</select>
			</div>
			
			<div class="joinForm__gender">
				<p>성별</p>
				<input type="radio" name="gender" value="female" required>여성
				<input type="radio" name="gender" value="male">남성
			</div>
			
			<div class="terms">
			가입하기 버튼을 클릭하면 Facebook의 약관, 데이터정책 및 쿠키 정책에 동의하게 됩니다. Facebook으로부터 SMS알림을 받을 수 있으면 알림은 언제든지 웁트 아웃 할 수 있습니다.
			</div>
			<div class="submit__wrapper">
				<button>가입하기</button>
			</div>
			<div class="joinForm__ad"> 유명인, 밴드, 비즈니스를 위한 페이지 만들기</div>
		</form>
		
	
	</div>
</main>

<footer>
	<div class="footer__wrapper">
		<ul>
			<li>한국어</li>
			<li>English (US)</li>
			<li>日本語</li>
			<li>Bahasa Indonesia<li>
			<li>ภาษาไทย</li>
			<li>Español</li>
			<li>中文(简体)</li>
			<li>Português (Brasil)</li>
			<li>Français (France)</li>
			<li>Deutsch</li>
		</ul>
	</div>
</footer>


</body>
</html>