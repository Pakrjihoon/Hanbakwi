<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="header">
	<div id="menu">
		<a href="/index"><div id="logoImage"></div></a>
		<div id="menuBar">
			<ul>
				<li id="fundingMenu"><a href="/funding/main">여행 펀딩</a></li>
				<li id="siteMenu"><a href="/sight">명소 +</a></li>
				<li id="journalMenu"><a href="/searchSCH">여행기</a></li>
				<li id="requestMenu"><a href="/locals">사전 답사/대리플래너</a></li>
				<li id="chatMenu"><a href="" onclick=openChatPop()>LIVE!
						현장상황</a></li>
				<li id="roomsMenu"><a href="/room">숙소</a></li>
				<li id="diningMenu"><a href="/food">식당</a></li>
				<li id="cultureMenu"><a href="/culture">관광</a></li>
			</ul>
		</div>
		<c:choose>
			<c:when test="${loginUser!=null }">
				<div id="profileBox">
					<img id="profileImage" src="/img/${loginUser.profileImg }"
						alt="${loginUser.nickname }" />
					<div id="personalMenu">
						<ul>
							<li><a href="/myPage/${loginUser.uNo }">마이페이지</a></li>
							<a href="" onclick="alert('nope')"><li>알림</li></a>
							<li><a href="">메시지함</a></li>
							<li><a href="">코인</a></li>
							<li><a href="/user/register">회원정보 수정</a></li>
							<form action="/session" method="POST">
								<input type="hidden" name="_method" value="DELETE">
								<button id="logoutBtn">로그아웃</button>
							</form>
						</ul>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<button id="login">
					로그인</a>
			</c:otherwise>
		</c:choose>
	</div>
</div>
<div id="popup"></div>
<div id="loginForm" class="form">
	<h1>
		<i class="fas fa-user"></i>로그인
	</h1>
	<form action="/session" method="post">
		<fieldset>
			<legend class="screen_out">로그인폼</legend>
			<label>아이디</label><br /> <input type="text" name="id" /><br /> <label>비밀번호</label><br />
			<input type="password" name="password" /><br />
			<button id="loginBtn" class="btn" type="submit">로그인</button>
			<button id="registerBtn" class="btn" type="button">회원가입</button>
		</fieldset>
	</form>
	<a id="find" href="">아이디/비밀번호 찾기</a>
</div>
<div id="findForm" class="form">
	<div class="tab">
		<a id="findIDBtn" class="on" href="">아이디 찾기</a> <a id="findPWBtn"
			href="">비밀번호 변경</a>
	</div>
	<form id="findID">
		<fieldset>
			<legend class="screen_out">아이디찾기폼</legend>
			<label>이메일</label><br /> <input /><br />
			<button id="findBtn" class="btn">찾기</button>
			<button class="return btn">로그인으로 되돌아가기</button>
		</fieldset>
	</form>
	<form id="findPW">
		<fieldset>
			<legend class="screen_out">비밀번호변경폼</legend>
			<label>아이디</label><br /> <input /><br /> <label>이메일</label><br /> <input /><br />
			<button class="change btn">비밀번호 변경하기</button>
			<button class="return btn">로그인으로 되돌아가기</button>
		</fieldset>
	</form>
</div>
<div id="chanePWForm" class="form">
	<form>
		<fieldset>
			<legend class="screen_out">비밀번호재설정폼</legend>
			<label>새로운 비밀번호</label><br /> <input /><br /> <label>새로운 비밀번호
				확인</label><br /> <input /><br />
			<button class="change btn">변경하기</button>
			<button class="return btn">로그인으로 되돌아가기</button>
		</fieldset>
	</form>
</div>
<script src="/js/jquery.js"></script>
<script>
	var $popup=$("#popup");
	var $loginForm=$("#loginForm");
	var $findForm=$("#findForm");

    $("#login").click(function(e) {
        e.preventDefault();
        $popup.show();
        $loginForm.show();
    });

    $popup.click(function(e) {
        e.preventDefault();
        $(this).hide();
        $(".form").hide();
    });

    $("#find").click(function(e) {
        e.preventDefault();
        $loginForm.hide();
        $findForm.show();
    });

    $(".tab a").click(function () {
        $(".on").removeClass("on");
        $(this).addClass("on");
    });

    $("#findIDBtn").click(function (e) {
        e.preventDefault();
        $("#findID").show();
        $("#findPW").hide();
    });

    $("#findPWBtn").click(function (e) {
        e.preventDefault();
        $("#findPW").show();
        $("#findID").hide();
    });

    $(".change").click(function (e) {
        e.preventDefault();
        $findForm.hide();
        $("#chanePWForm").show();
    });

    $(".return").click(function (e) {
        e.preventDefault();
        $(".form").hide();
        $("#loginForm").show();
    });

    $("#profileImage").click(function () {
        $("#personalMenu").show();
        return false;
    });
    $(document).click(function () {
        $("#personalMenu").hide();
    });
    
    $("#registerBtn").click(function() {
		location.href="/user/register";
	});
</script>