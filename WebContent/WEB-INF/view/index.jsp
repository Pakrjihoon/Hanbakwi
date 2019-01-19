<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>메인페이지|한바퀴</title>
<c:import url="/WEB-INF/templates/link.jsp"></c:import>
<link rel="stylesheet" href="/css/index.css">
<style>
body * {
	font-family: 'Noto Sans KR', sans-serif;
}

#header {
	background-image: url("/img/hero_image.jpg");
}

#logoImage {
	background-image: url("/img/로고.png");
}

#copyright {
	text-align: center;
}
#logoutBtn {
	width: 120px;
	height: 30px;
	background: #fff;
	text-align: center;
	line-heigth: 30px;
	cursor: pointer;
	border: none;
	transition: .2s ease;
	border-radius: 0 0 5px 5px;
	font-family: 'Noto Sans KR', sans-serif;
	font-size:12px;
}
#logoutBtn:hover {
	background: #40beed;
}

</style>
</head>
<body>
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
						<img id="profileImage" src="/img/${loginUser.profileImg}"
							alt="${loginUser.nickname}" />
						<div id="personalMenu">
							<ul>
								<li><a href="/myPage/${loginUser.uNo }">마이페이지</a></li>
								<li><a href="" onclick="alert('nope')">알림</a></li>
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
					<button id="login">로그인</button>
				</c:otherwise>
			</c:choose>
		</div>
		<div id="searchForm">
			<form>
				<fieldset>
					<legend class="screen_out">일정검색폼</legend>
					<select id="area" name="area">
						<option value="000">전체</option>
						<option value="02">서울</option>
						<option value="031">경기</option>
						<option value="032">인천</option>
						<option value="033">강원</option>
						<option value="041">충남</option>
						<option value="042">대전</option>
						<option value="043">충북</option>
						<option value="044">세종</option>
						<option value="051">부산</option>
						<option value="052">울산</option>
						<option value="053">대구</option>
						<option value="054">경북</option>
						<option value="055">경남</option>
						<option value="061">전남</option>
						<option value="062">광주</option>
						<option value="063">전북</option>
						<option value="064">제주</option>
					</select>
					<div id="date">
						<div class="tui-datepicker-input tui-datetime-input tui-has-focus">
							<input id="startpicker-input" type="text" aria-label="Date">
							<span class="tui-ico-date"></span>
							<div id="startpicker-container" style="margin-left: -1px;"></div>
						</div>
						<div class="tui-datepicker-input tui-datetime-input tui-has-focus">
							<input id="endpicker-input" type="text" aria-label="Date">
							<span class="tui-ico-date"></span>
							<div id="endpicker-container" style="margin-left: -1px;"></div>
						</div>
					</div>
					<button id="searchBtn">여행기 검색</button>
				</fieldset>
			</form>
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
					<label>아이디</label><br /> <input /><br /> <label>이메일</label><br />
					<input /><br />
					<button class="change btn">비밀번호 변경하기</button>
					<button class="return btn">로그인으로 되돌아가기</button>
				</fieldset>
			</form>
		</div>
		<div id="chanePWForm" class="form">
			<form>
				<fieldset>
					<legend class="screen_out">비밀번호재설정폼</legend>
					<label>새로운 비밀번호</label><br /> <input /><br /> <label>새로운
						비밀번호 확인</label><br /> <input /><br />
					<button class="change btn">변경하기</button>
					<button class="return btn">로그인으로 되돌아가기</button>
				</fieldset>
			</form>
		</div>
	<div id="content">
		<div id="introWrap">
			<div class="wrap">
				<div id="journal" class="nav">
					<h2>
						BEST<br>채은아 언제해
					</h2>
					<a href="">+더보기</a>
				</div>
				<div id="journalList" class="card_list">
					<%-- <c:forEach items="journalList" var="journal">
						<a class="card_link" href="/selectSCH.jsp?jNo=${journal.jNo }">
							<div class="card">
								<img src="img/thumbnail.jpg" class="thumbnail" />
								<div class="info_box">
									<h3>"${journal.title }"</h3>
									<p>"${journal.nickname}"</p>
									<p>
										<i class="far fa-heart"></i>${journal.count }</p>
								</div>
							</div>
						</a>
					</c:forEach>
					--%>
				</div>
			</div>
			<div class="wrap">
				<div id="explore" class="nav">
					<h2>
						새로 올라온<br>사전답사
					</h2>
					<a href="/locals">+더보기</a>
				</div>
				<div id="exploreList" class="list">
					<ul class="post_list">
						<c:forEach items="${exploreList }" var="explore">
							<li><a href="/readExplore/${explore.eNo }">${explore.title }</a></li>
						</c:forEach>
					</ul>
				</div>
				<div id="planner" class="nav">
					<h2>
						새로 올라온<br>대리플래너
					</h2>
					<a href="/locals">+더보기</a>
				</div>
				<div id="plannerList" class="list">
					 <ul class="post_list">
					<c:forEach items="${plannerList }" var="planner">
							<li><a href="/readPlanner/${planner.pNo }">${planner.title }</a></li>
						 </c:forEach>
					</ul>
				</div>
			</div>
			<div class="wrap">
				<div id="funding" class="nav">
					<h2>
						새로 올라온<br>여행 펀딩
					</h2>
					<a href="/allFunding.jsp">+더보기</a>
				</div>
				<div id="fundingList" class="card_list">

					<c:forEach items="${newList }" var="funding">
						<a class="card_link" href="/fundingViewer.jsp?no=${funding.fdNo }">
							<div class="card">
								<img class="thumbnail" src="img/thumbnail.jpg" alt="자전거" />
								<div class="info_box">
									<h3>${funding.title }</h3>
									<h4>${funding.intro }</h4>
									<p>${funding.nickname }
										<em></em>
									</p>
									<p>${funding.ammount }원<em>(12%)</em>
									<span><i class="far fa-calendar-alt"></i><em class="deadline">${funding.deadline }</em></span>
									</p>
								</div>
							</div>
						</a>
					</c:forEach>
				</div>
			</div>
		</div>

		<div id="bestFD">
			<h2>BEST FD</h2>
			<div id="boxWrap">
				<div id="fdBox">
					<ul id="bestFDList">
						<%--
						<c:forEach items="${userList user}">
						<li class="item_fd"><a
							href="/profile.jsp?uNo=${user.uNo }"><img
								src="/profile/${user.profileImg }" /></a>
							<h4>${user.nickname }</h4>
							<p>${user.sido }/${user.gugun }</p>
							<p>${user.score }</p></li>
						</c:forEach>
						--%>
					</ul>
				</div>
			</div>
			<button id="prevBtn">
				<i class="fas fa-angle-left"></i>
			</button>
			<button id="postBtn">
				<i class="fas fa-angle-right"></i>
			</button>
		</div>
	</div>
	<c:import url="/WEB-INF/templates/footer.jsp"></c:import>
	<script>
    var $popup=$("#popup");
    var $loginForm=$("#loginForm");
    var $findForm=$("#findForm");

    var today = new Date();
    var picker = tui.DatePicker.createRangePicker({
        startpicker: {
            date: today,
            input: '#startpicker-input',
            container: '#startpicker-container'
        },
        endpicker: {
            date: today,
            input: '#endpicker-input',
            container: '#endpicker-container'
        },
        language:'ko'
    });
    
	var $deadline=$(".deadline");
	
	var now=moment().format('YYYY-MM-DD');
	$deadline.each(function() {
		var deadLine = moment($(this).text());		 
		var days=moment.duration(deadLine.diff(now)).asDays()+1;
		$(this).text(days+"일");
	});		

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
    
    var x=0;
    $("#prevBtn").click(function () {
        x-=230;
        if(x==-1150){
            x=0;
        }
        $("#fdBox").css("left",x);
    });
    $("#postBtn").click(function () {
        x+=230;
        if(x==230){
            x=-920;
        }
        $("#fdBox").css("left",x);
    });
</script>
</body>
</html>