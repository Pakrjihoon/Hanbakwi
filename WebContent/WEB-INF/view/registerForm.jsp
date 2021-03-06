<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="icon" href="/img/favicon-96x96.png">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="/css/footer.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR"
	rel="stylesheet">
<style>
#registerFormHeader {
	width: 100%;
	height: 80px;
	font-weight: bold;
}

#registerLogo {
	width: 45%;
	height: 80px;
	float: left;
	background-image: url("/img/로고.png");
	background-position: right;
	background-repeat: no-repeat;
	background-size: 80px 80px;
}

#registerFormHeaderText {
	width: 55%;
	height: 80px;
	float: right;
	font-weight: bold;
	color: #424242;
	font-size: 35px;
	text-align: left;
	line-height: 80px;
}

#registerForm {
	margin: auto;
	width: 1080px;
	/* background-color: #0091ea;*/
	/* display: block;*/
	font-size: 20px;
	font-weight: 500;
	margin: 30px auto 30px auto;
}

.msg.bad {
	font-size: 15px;
	color: #E91E63;
	display: none;
}

.msg.good {
	font-size: 15px;
	color: #2196F3;
	display: none;
}

#idBox.good .good, #pwdBox.good .good {
	display: inline;
}

#idBox.bad .bad, #pwdBox.bad .bad {
	display: inline;
}

.row {
	/*background-color: #dd4444;*/
	margin-top: 20px;
	margin-left: 380px;
}

input {
	height: 25px;
	border-radius: 3px;
	border: 1px solid #7b8184;
	margin-top: 5px;
}

select {
	height: 25px;
	border-radius: 3px;
	border: 1px solid #7b8184;
	margin-top: 5px;
}

#regist {
	margin: auto;
	display: block;
	width: 300px;
	margin-top: 20px;
	/*  margin-left: 320px;*/
}

.btn {
	display: inline-block;
	padding: 5px 5px;
	background: #40beed;
	color: white;
	font-size: 15px;
	text-decoration: none;
	border-radius: 3px;
}

.btn:hover {
	box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	text-shadow: 0 0 5px;
	background: #40beed;
}

button.btn {
	cursor: pointer;
	border: none;
	line-height: 1em;
}

.fa-female {
	color: #dd4444;
}

.fa-male {
	color: #40beed;
}

.register, .cancel {
	width: 80px;
	height: 25px;
	margin: 10px;
	font-size: 18px;
	text-align: center;
}

strong {
	font-weight: 600;
	font-size: 15px;
}

.row2 {
	margin-top: 20px;
}

#addBtn {
	text-decoration: none;
	color: black;
}

#profileBox {
	width: 140px;
	height: 140px;
	text-align: center;
	font-size: 140px;
	position: relative;
	color: #ddd;
	border-radius: 140px;
	display: block;
	margin: auto;
}

#profileBox.no_image #profileImg {
	display: none;
}

#profileBox label {
	width: 40px;
	height: 40px;
	position: absolute;
	bottom: 4px;
	right: 4px;
	background: #9E9E9E;
	font-size: 20px;
	line-height: 40px;
	text-align: center;
	border-radius: 40px;
	cursor: pointer;
	color: #fff;
	border: 2px solid #fff;
}

#profileBox label:hover {
	background: #14bab6;
}

#profileRow {
	height: 210px;
	position: relative;
}

#profile {
	display: none;
}

#profileImg {
	width: 140px;
	height: 140px;
	position: absolute;
	left: 0;
	top: 0;
	background: red;
	border-radius: 140px;
}

#profileBox.no_image .delete {
	display: none;
}

.delete {
	width: 24px;
	height: 24px;
	border-radius: 24px;
	text-align: center;
	line-height: 24px;
	cursor: pointer;
	position: absolute;
	border: none;
	outline: none;
	right: 8px;
	top: 8px;
	background: #9E9E9E;
	display: block;
}

.delete:hover {
	background: #14bab6;
	color: #fff;
}
</style>

</head>
<body>
	<div id="registerFormHeader">
		<div id="registerLogo"></div>
		<div id="registerFormHeaderText">
			한바퀴 회원
			<c:choose>
				<c:when test="${loginUser!=null }">수정</c:when>
				<c:otherwise>가입</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div id="registerForm">
		<form id="joinForm" action="/index" method="post">
			<c:if test="${loginUser!=null }">
				<input type="hidden" name="_method" value="PUT" />
				<input type="hidden" name="no" value="${loginUser.uNo }" />
			</c:if>
			<fieldset>
				<div class="imgRow" id="profileRow">
					<div id="profileBox" class="fas fa-user-circle no_image">
						<img src="/profile/jw.jpg" width="140" height="140"
							id="profileImg" /> <label class="fas fa-camera"> <input
							type="file" name="profile" id="profile" />
						</label>
						<button type="button" class="delete fas fa-times">
							<span class="screen_out">삭제</span>
						</button>
					</div>
					<!-- //profileBox -->
				</div>
				<!--//profileRow -->
				<div class="row">
					<label>아이디</label><br>
					<p id="idBox">
						<input name="id" maxlength="16" id="id" placeholder="아이디"
							value='${loginUser.id} '
							<c:if test="${loginUser!=null }">disabled</c:if> /> <span
							class="msg good">좋은 아이디입니다.</span> <span class="msg bad">아이디를
							4~16자까지 첫글자는 영어로, 나머지는 영어,숫자,특수기호(_,-)으로 입력해주세요.</span>
					</p>

				</div>


				<div class="row">
					<label>비밀번호</label><br>
					<p id="pwdBox">
						<input name="password" type="password" maxlength="20"
							id="password" placeholder="비밀번호"> <span class="msg good">좋은
							비밀번호입니다.</span> <span class="msg bad">비밀번호를 6~20자까지
							영어,숫자,특수기호(_,-)으로 입력해주세요.</span>
					</p>
				</div>


				<div class="row">
					<label>비밀번호 확인</label><br>
					<p id="pwdcheckBox">
						<input type="password" maxlength="20" id="pwdCheck"
							placeholder="비밀번호"> <span class="msg good">좋은
							비밀번호입니다.</span> <span class="msg bad">비밀번호를 6~20자까지
							영어,숫자,특수기호(_,-)으로 입력해주세요.</span>
					</p>
				</div>

				<div class="row">
					<label>닉네임</label><br> <input name="nickname" maxlength="8"
						id="nickname" placeholder="닉네임을 입력해주세요" <c:if test="${loginUser!=null }">disabled</c:if>
						value="${loginUser.nickname }"/>
				</div>


				<div class="row">

					<input type="text" name="str_email01" id="str_email01"
						style="width: 100px"> @ <input type="text"
						name="str_email02" id="str_email02" style="width: 100px;">
					<select style="width: 100px; margin-right: 10px" name="selectEmail"
						id="selectEmail">
						<option value="" selected>직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="nate.com">nate.com</option>
						<option value="yahoo.co.kr">yahoo.co.kr</option>
						<option value="gmail.com">gmail.com</option>

					</select>
				</div>


				<div class="row">
					<label>생년월일</label><br> <span id="age"> <select
						id="year" name="year">

					</select><em>년</em> <select id="month" name="month">

					</select><em>월</em> <select id="date" name="date">

					</select><em>일</em>

					</span>
				</div>


				<div class="row">
					<label for="gender">성 별</label><br> <span id="gender">
						<input type="radio" checked="checked" id="female" name="gender"
						value="F" checked="checked" /> <label for="female"><i
							class="fa fa-female"></i> 여 자</label> <input type="radio" id="male"
						name="gender" value="M" /> <label for="male"><i
							class="fa fa-male"></i> 남 자</label>
					</span>
				</div>

				<div class="row">
					<label for="phone">전화번호</label><br> <span id="phone"> <select
						id="phone1" title="반드시 선택해주세요." name="phone1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="019">019</option>
					</select> - <input id="phone2" title="3~4글자 숫자만 입력해주세요." class="digit4"
						placeholder="숫자입력" size="4" maxlength="4" name="phone2" /> - <input
						id="phone3" title="4글자 숫자만 입력해주세요." class="digit4"
						placeholder="숫자입력" size="4" maxlength="4" name="phone3" />
					</span>
				</div>


				<div class="row">
					<label>활동지1</label><br> <select name="sido" id=sido1"></select>
					<select name="gugun" id="gugun1"></select>
				</div>


				<div class="row">
					<div class="row2">
						<label>활동지2</label><br> <select name="sido" id="sido2"></select>
						<select name="gugun" id="gugun2"></select>
					</div>
				</div>


				<div class="row">
					<a href="" id="addBtn"><i class="fas fa-plus-square"></i>&nbsp;활동지추가</a>
				</div>


				<div id="regist">
					<button style="width: 100px; height: 35px;" class="btn register"
						type="submit">
						<c:choose>
						<c:when test="${loginUser!=null }">수정완료</c:when>
						<c:otherwise>회원가입</c:otherwise>
						</c:choose></button>
					<button style="width: 100px; height: 35px;" class="btn register"
						type="button" onclick="location.href='/index'">돌아가기</button>
				</div>
			</fieldset>
		</form>
	</div>
	<div id="footer">
		<div id="copyright">
			<p>상호명 : (주)에르메스 | 대표 : 샤넬 | 개인정보책임자 : 루이비똥</p>
			<p>사업자등록번호 : 201-54-10020 | 통신판매업신고번호 : 제 2018-서울관악-15411호</p>
			<p>주소 : 충청남도 아산시 신창면 순천향로 22, 멀티미디어관 6층 | 광고 및 제휴 :
				hsh2@sch.ac.kr</p>
			<br />
			<p>Copyright 2018. HERMES. All rights reserved.</p>
		</div>
	</div>
	<script src="/js/jquery.js"></script>
	<script src="/js/fix-footer.js"></script>
	<script src="/js/underscore-min.js"></script>
	<script>
		//profile 
		var $profile = $("#profile");
		var profileReg = /^image/;
		//profile msg 

		// profile 사진이 변경되면 
		$profile.change(function() {
			//jquery객체에서 순수자바스크립트요소객체 얻기
			var profile = $profile.get(0);

			//input type=file 요소(순수자바스크립트)는 무조건
			//files 배열을 가지고 있습니다.

			//한 개의 파일
			var file = profile.files[0];

			//File 객체의 속성
			//- type : MIME( image/jpeg, audio/mp3, video/mp4 ...)
			//- name : 파일명
			//- lastModified : 최종 수정일
			//- size : 파일 크기

			if (file.size <= 0) {
				alert("파일을 선택해 주세요");
			} //if end
			// 이미지인지 확인
			if (!profileReg.test(file.type)) {
				alert("jpg, png, gif등 이미지 파일을 선택해 주세요")
			} else {

			} // if~else end
			//여기에 넘어왔다는 뜻은 유저가 선택한 파일이 
			// 1바이트 이상의 크기이고 이미지 파일이라는 뜻입니다.

			// ajax로 넘길 폼을 생성하고
			var form = new FormData();

			// 우리가 선택한 파일을 붙임
			form.append("type", "H"); // type=H 일반적인 데이터
			// 1) 파라미터명, 2) 파일 3) 파일명
			form.append("profile", file, file.name);

			//multipart/form-data로 ajax처리
			$.ajax({
				url : "/ajax/user/uploadImg",
				dataType : "json",
				type : "POST",
				processData : false,//multipart/form-data
				contentType : false,//multipart/form-data
				data : form,
				error : function() {
					alert("점검중 입니다.");
				},
				success : function(json) {
					$("#profileImg").attr("src", json.src);
					$("#profileBox").removeClass("no_image");
				}
			}); //ajax() end
		});//change() end

		$(".delete").click(function() {
			$("#profile").val("");
			$("#profileBox").addClass("no_image");
		});

		var $id = $("#id"), //id 입력필드
		$idBox = $("#idBox"), //id입력박스
		regId = /^[a-z][a-z|_|0-9|\-]{3,15}$/, //id 정규표현식
		$pwd = $("#pwd"), //pwd 입력필드
		$pwdBox = $("#pwdBox"), // pwd 입력박스
		regPwd = /^[\w|\-]{6,20}$/; //pwd 정규표현식

		var oldId = "";

		//비밀번호를 검사하는 함수
		function validatePwd() {

			var val = $pwd.val();

			if (regPwd.test(val)) {
				$pwdBox.attr("class", "good");
				return true;
			} else {
				$pwdBox.attr("class", "bad");
				return false;
			}//if~else end

		}//validatePwd() end

		$pwd.keyup(validatePwd);

		// id 유효성검사가 되었는지 확인하는 변수
		var isValidId = false;
		//아이디를 검사하는 함수
		function validateId() {
			//유저가 입력한 id값을 얻어옴
			var val = $id.val();
			if (oldId != val) {
				oldId = val;
			}
			if (regId.test(val)) {
				isValidId = false;
				$idBox.attr("class", "bad");
				$("#idBox .bad").text("이미 사용중인 아이디입니다.");

				$.ajax({
					url : "/ajax/user/check/id",
					dataType : "json",
					target : "get",
					data : {
						"id" : val
					},
					error : function() {
						alert("점검중입니다.");
					},
					success : function(json) {
						if (json.count == 0) {
							isValidId = true;
							$idBox.attr("class", "good");
						} else {
							isValidId = false;
							$idBox.attr("class", "bad");
							$("#idBox .bad").text("이미 사용중인 아이디입니다.");
						} // if~else end
					} // success end
				}); // ajax end
			} else {
				$idBox.attr("class", "bad");
			}//if~else end

		}//validateId() end

		//키를 입력할때마다 유효성검사
		$id.keyup(validateId);
		$id.blur(validateId);

		//이메일 셀렉트 자동완성
		$('#selectEmail').change(function() {
			$("#selectEmail option:selected").each(function() {

				if ($(this).val() == '1') { //직접입력일 경우
					$("#str_email02").val(''); //값 초기화
					$("#str_email02").attr("disabled", false); //활성화
				} else { //직접입력이 아닐경우
					$("#str_email02").val($(this).text()); //선택값 입력
					$("#str_email02").attr("disabled", true); //비활성화
				}
			});
		});

		//생년월일
		function makeBirthDate() {
			for (i = 2018; i >= 1900; i--) {
				$("<option>").text(i).appendTo("#year");
			} //년도 생성
			for (i = 1; i <= 12; i++) {
				$("<option>").text(i).appendTo("#month");
			} //월 생성
			for (i = 1; i <= 31; i++) {
				$("<option>").text(i).appendTo("#date");
			} //일 생성
		};
		makeBirthDate();

		//자동 옵션 초기화 함수
		function init_option() {
			var area0 = [ "시/도 선택", "서울특별시", "인천광역시", "대전광역시", "광주광역시",
					"대구광역시", "울산광역시", "부산광역시", "경기도", "강원도", "충청북도", "충청남도",
					"전라북도", "전라남도", "경상북도", "경상남도", "제주도" ];
			var area1 = [ "강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구",
					"금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구",
					"성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구",
					"중구", "중랑구" ];
			var area2 = [ "계양구", "남구", "남동구", "동구", "부평구", "서구", "연수구", "중구",
					"강화군", "옹진군" ];
			var area3 = [ "대덕구", "동구", "서구", "유성구", "중구" ];
			var area4 = [ "광산구", "남구", "동구", "북구", "서구" ];
			var area5 = [ "남구", "달서구", "동구", "북구", "서구", "수성구", "중구", "달성군" ];
			var area6 = [ "남구", "동구", "북구", "중구", "울주군" ];
			var area7 = [ "강서구", "금정구", "남구", "동구", "동래구", "부산진구", "북구", "사상구",
					"사하구", "서구", "수영구", "연제구", "영도구", "중구", "해운대구", "기장군" ];
			var area8 = [ "고양시", "과천시", "광명시", "광주시", "구리시", "군포시", "김포시",
					"남양주시", "동두천시", "부천시", "성남시", "수원시", "시흥시", "세종시", "안산시",
					"안성시", "안양시", "양주시", "오산시", "용인시", "의왕시", "의정부시", "이천시",
					"파주시", "평택시", "포천시", "하남시", "화성시", "가평군", "양평군", "여주군",
					"연천군" ];
			var area9 = [ "강릉시", "동해시", "삼척시", "속초시", "원주시", "춘천시", "태백시",
					"고성군", "양구군", "양양군", "영월군", "인제군", "정선군", "철원군", "평창군",
					"홍천군", "화천군", "횡성군" ];
			var area10 = [ "제천시", "청주시", "충주시", "괴산군", "단양군", "보은군", "영동군",
					"옥천군", "음성군", "증평군", "진천군", "청원군" ];
			var area11 = [ "계룡시", "공주시", "논산시", "보령시", "서산시", "아산시", "천안시",
					"금산군", "당진군", "부여군", "서천군", "연기군", "예산군", "청양군", "태안군",
					"홍성군" ];
			var area12 = [ "군산시", "김제시", "남원시", "익산시", "전주시", "정읍시", "고창군",
					"무주군", "부안군", "순창군", "완주군", "임실군", "장수군", "진안군" ];
			var area13 = [ "광양시", "나주시", "목포시", "순천시", "여수시", "강진군", "고흥군",
					"곡성군", "구례군", "담양군", "무안군", "보성군", "신안군", "영광군", "영암군",
					"완도군", "장성군", "장흥군", "진도군", "함평군", "해남군", "화순군" ];
			var area14 = [ "경산시", "경주시", "구미시", "김천시", "문경시", "상주시", "안동시",
					"영주시", "영천시", "포항시", "고령군", "군위군", "봉화군", "성주군", "영덕군",
					"영양군", "예천군", "울릉군", "울진군", "의성군", "청도군", "청송군", "칠곡군" ];
			var area15 = [ "거제시", "김해시", "마산시", "밀양시", "사천시", "양산시", "진주시",
					"진해시", "창원시", "통영시", "거창군", "고성군", "남해군", "산청군", "의령군",
					"창녕군", "하동군", "함안군", "함양군", "합천군" ];
			var area16 = [ "서귀포시", "제주시", "남제주군", "북제주군" ];

			// 시/도 선택 박스 초기화
			$("select[name^=sido]").each(
					function() {
						$selsido = $(this);
						$.each(eval(area0), function() {
							$selsido.append("<option value='"+this+"'>" + this
									+ "</option>");
						});
						$selsido.next().append(
								"<option value=''>구/군 선택</option>");
					});

			// 시/도 선택시 구/군 설정
			$("select[name^=sido]").change(
					function() {
						var area = "area"
								+ $("option", $(this)).index(
										$("option:selected", $(this))); // 선택지역의 구군 Array
						var $gugun = $(this).next(); // 선택영역 군구 객체
						$("option", $gugun).remove(); // 구군 초기화

						if (area == "area0")
							$gugun.append("<option value=''>구/군 선택</option>");
						else {
							$.each(eval(area), function() {
								$gugun.append("<option value='"+this+"'>"
										+ this + "</option>");
							});
						}
					});
		}

		init_option();

		$(".row")
				.on(
						"click",
						"#addBtn",
						function(e) {
							e.preventDefault();
							$(".row2")
									.eq($(this).index())
									.after(
											'<div class="row2">\n'
													+ '<label for="addRegister2">활동지3</label><br>\n'
													+ '<select name="sido" id="sido3"></select>\n'
													+ '<select name="gugun" id="gugun3"></select>\n'
													+ '</div>')
							init_option();
							$("#addBtn").css("display", "none");
						});
		$("#joinForm").submit(function() {

			if (!validateId) {
				alert(1);
				return false;
			}//if end

			if (!validatePwd) {
				alert(2);
				return false;
			}//if end

		});
	</script>
</body>
</html>
