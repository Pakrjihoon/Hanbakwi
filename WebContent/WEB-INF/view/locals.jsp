<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>사전답사 & 대리 플래너</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css" integrity="sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="icon" href="img/favicon-96x96.png">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <style>
        #wrap {
            width: 1080px;
            height: 900px;
            margin: 20px auto;
            top:50px;
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        }
        #allList {
            width: 1080px;
            height: 150px;
            margin: 20px auto;
            /*background-color: #40beed;*/
            border-top: 1px solid black;
            border-bottom: 1px solid black;
            font-weight: 600;
            font-size: 50px;
            text-align: center;
            line-height: 143px;
        }
        #location {
            width: 1080px;
            height: 100px;
            font-size: 50px;
            text-align: center;
            line-height: 100px;
        }
        select {
            width: 200px;
            height: 30px;
            padding-left: 10px;
            font-size: 18px;
            color: #424242;
            border: 1px solid #424242;
            border-radius: 3px;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
        }
        select::-ms-expand {
            display: none;
        }
        select>option {
            text-align: center;
        }
        /* check, hover 스타일 설정 FireFox */
        select option:checked,
        select option:hover {
            box-shadow: 0 0 10px 100px #ff00ff inset;
            color: #fff;
        }
        #write {
            padding: 10px 30px 10px 30px;
            background-color: #40BEED;
            text-decoration: none;
            float: right;
            margin-top: 70px;
            margin-right: 180px;
            border-radius: 5px;
            color: #fff;
            font-size: 20px;
            border: none;
        }
        #select {
            margin-left: 190px;
            margin-top: 30px;
            width: 100%;
            height: 100px;
            font-size: 25px;

        }
        #select>a{
            text-decoration: none;
            color:#424242;
            margin: 10px;
            display: block;
            padding-left: 10px;
            float: left;
            width: 200px;
            height: 50px;
            line-height: 50px;
            border-radius: 10px;
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
            background-color: #fff;
        }
        #select>.on {
            background-color: #40BEED;
            color: #fff;
        }
        #content {
            position: relative;
            text-indent: 5px;
            left: 200px;
        }
        table {
            width: 700px;
            border-collapse: separate;
            border-spacing: 0 10px;
        }
        caption{
            display: none;
        }
        thead {
            display: none;
        }
        tbody {
            width: 100%;
            font-size: 20px;
            line-height:60px;
        }
        tbody>tr {
            background-color: #f0f0f0;
            height: 60px;
            height: 60px;
            padding: 20px;
            cursor: pointer;
            transition: .2s ease;
            margin: 10px;
        }
        tbody>tr:hover {
            background-color: #40BEED;
        }
        tbody:nth-child(1){
            border-radius: 20px;
        }
        #search {
            width: 100%;
            height: 50px;
            margin: 30px 0 0 30px;
            text-align: center;
        }
        #localsPopup {
            position: fixed;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,.8);
            background-repeat: no-repeat;
            background-position: center 105px;
            left:0;
            top:0;
            display: none;
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        }
        #localsPopup2 {
            position: fixed;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,.8);
            background-repeat: no-repeat;
            background-position: center 105px;
            left:0;
            top:0;
            box-shadow: 0 2px 5px 0 rgba(255, 255, 255, 0.7), 0 2px 10px 0 rgba(255, 255, 255, 0.7);
            display: none;
        }
        .popupContent {
            width: 700px;
            height: 600px;
            position: fixed;
            left: 50%;
            top: 50%;
            margin: -300px 0 0 -350px;
            background-color: #fff;
            box-shadow: 0 2px 5px 0 rgba(255, 255, 255, 0.7), 0 2px 10px 0 rgba(255, 255, 255, 0.7);
        }
        .contentNo {
            display: none;
        }
        #deadlinewrap{
            position: absolute;
            top:10px;
            left:660px;
        }
        .deadline{
            right: -35px;
            color: #fff;
            text-align: center;
            line-height: 30px;
            width:75px;
            height: 60px;
            background-color:#40BEED;
            border-top-left-radius: 7px;
            border-top-right-radius: 7px;
            position: absolute;
            line-height: 2;
        }
        .deadline::after{
            content:"";
            position:absolute;
            width: 0;
            height: 0;
            border-right:50px solid transparent;
            border-top:20px solid #40BEED;
            top: 60px;
            left:0;
        }
        .deadline::before{
            content:"";
            position:absolute;
            width: 0;
            height: 0;
            border-left:50px solid transparent;
            border-top:20px solid #40BEED;
            top: 60px;
            left:25px;
        }
        #text {
        }
        #writePopup {
            position: fixed;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,.8);
            background-repeat: no-repeat;
            background-position: center 105px;
            left:0;
            top:0;
            display: none;
        }
        #writePopup>#writePopup2>h2 {
            margin-top: 10px;
            font-size: 20px;
            color: #424242;
            text-align: center;
            font-weight: bold;
        }
        #writePopup2 {
            width: 350px;
            height: 250px;
            position: fixed;
            left: 50%;
            top: 50%;
            margin: -125px 0 0 -175px;
            background-color: #fff;
            box-shadow: 0 2px 5px 0 rgba(255, 255, 255, 0.7), 0 2px 10px 0 rgba(255, 255, 255, 0.7);
        }
        .category {
            text-decoration: none;
            text-align: center;
            width: 200px;
            height: 50px;
            background-color: #f0f0f0;
            display: block;
            margin: 30px auto 30px auto;
            color: #424242;
            line-height: 50px;
            transition: .3s ease;
            border-radius: 5px;
            font-weight: bold;
            box-shadow: 0 2px 5px 0 rgba(255, 255, 255, 0.7), 0 2px 10px 0 rgba(255, 255, 255, 0.7);
        }
        .category:hover {
            background-color: #40BEED;
            color: #fff;
        }
        #address {
            width: 100%;
            font-size: 30px;
            padding: 10px;
            margin: 10px 0 0 10px;
            font-weight: bold;
        }
        #title {
            padding: 10px;
            width: 100%;
            font-size: 25px;
            font-weight: bold;
        }
        #user {
            width: 440px;
            height: 40px;
            margin-top: 20px;
            padding: 10px;
            font-size: 20px;
            font-weight: bold;
            float: left;
        }
        #timeAndView {
            width: 220px;
            height: 40px;
            margin-top: 20px;
            padding: 10px;
            font-size: 15px;
            float: right;
            line-height: 40px;
        }
        #destination {
            width: 100%;
            padding: 10px;
        }
        #bookmark {
            width: 50px;
            margin-right: 5px;
        }
        #bookmark>i {
            font-size: 30px;
        }
        #apply {
            width: 100px;
            margin-left: 10px;
            margin-right: 10px;
        }
        #bookmark,#apply {
            text-align: center;
            border: none;
            outline: none;
            background-color: #40BEED;
            color: #fff;
            font-size: 20px;
            padding: 5px;
            margin-bottom: 50px;
            float: right;
            height: 50px;
            border-radius: 5px;
            cursor: pointer;
            transition: .3s ease;
        }
        #logoImage {
            background-image: url("/img/로고.png");
        }
        #bookmark:hover,#apply:hover {
            transform: scale(1.03);
        }
        #localsPopup2>.popupContent>h2 {
            width: 100%;
            height: 50px;
            font-size: 35px;
            font-weight: bold;
            padding: 20px;
        }
        #cause {
            display: block;
            width:100%;
            height: 20px;
            padding: 10px;
            margin-left: 50px;
            font-size: 25px;
            font-weight: bold;
        }
        #causeTxt {
            display: block;
            position: fixed;
            height: 300px;
            left: 50%;
            top: 50%;
            margin: -150px 0 0 -300px;
            width: 600px;
        }
        #applyConfirm,#cancle {
            width: 100px;
            margin: 10px;
            height: 50px;
            text-align: center;
            border: none;
            outline: none;
            background-color: #40BEED;
            color: #fff;
            font-size: 20px;
            padding: 5px;
            border-radius: 5px;
            cursor: pointer;
            transition: .3s ease;
            position: relative;
            top: 350px;
            left: 220px;
        }
        .contentPlanner {
            display: none;
        }
    </style>
</head>
<body>
<c:import url="/WEB-INF/templates/header.jsp"></c:import>
<div id="allList"><h1>사전 답사 & 대리 여행 계획 </h1></div>
    <div id="wrap">
        <div id="location">
            <label>지역 <select>
                <option value="000">전체</option>
                <option value="02">서울 </option>
                <option value="031">경기 </option>
                <option value="032">인천</option>
                <option value="033">강원 </option>
                <option value="041">충남 </option>
                <option value="042">대전 </option>
                <option value="043">충북 </option>
                <option value="051">부산 </option>
                <option value="052">울산 </option>
                <option value="053">대구 </option>
                <option value="054">경북 </option>
                <option value="054">경북 </option>
                <option value="055">경남 </option>
                <option value="061">전남 </option>
                <option value="062">광주 </option>
                <option value="063">전북 </option>
                <option value="064">제주 </option>
            </select></label>
        </div>
        <c:if test="${loginUser!=null }"><button id="write">글쓰기</button>
        </c:if>
        <div id="select">
            <a id="explore" class="on" href="">사전답사</a>
            <a id="planner" class="" href="">여행 계획 대리</a>
        </div>
        <div id="content">
            <table>
                <caption>게시물 목록</caption>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>가격</th>
                        <th>진행상황</th>
                        <th>작성자</th>
                    </tr>
                </thead>
                <tbody>
				<c:forEach items="${exploreList }" var="explore">
                    <tr class="contentExplore" data-no="${explore.eNo }"
                    data-title="${explore.title }"
                    data-reward="${explore.reward }"
                    data-isComplete="${explore.isComplete }"
                    data-nickname="${explore.nickname }"
                    data-destination= "${explore.destination }"
                    data-deadline = "${explore.deadline }" 
                    data-content = "${explore.content }">
                    
                    <jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
                    <fmt:formatDate value="${explore.deadline }" pattern="yyyyMMddHHmm" var="endDate"/>
                    <fmt:formatDate value="${now }" pattern="yyyyMMddHHmm" var="nowDate"/>
                    <input type="hidden" name="content" value="${explore.content }"/>
                    <input type="hidden" name="deadline" value="${explore.deadline }"/>
                    <input type="hidden" name="destination" value="${explore.destination }"/>
                    
                        <td class="contentNo"></td>
                        <td>${explore.title }</td>
                        <td>${explore.reward }코인</td>
                         <c:choose> 
                         <c:when test="${endDate<nowDate and explore.isComplete=='B'}">
                         <td class="non-able">마감</td>
                         </c:when>
                         <c:when test="${explore.isComplete=='B'}">
                         <td class="able">매칭전</td>
                         </c:when>
                         <c:when test="${explore.isComplete=='I' }">
                         <td class="non-able">사전답사/여행기 작성 중</td>
                         </c:when>
                         <c:otherwise>
                         <td class="non-able">수행완료</td>
                         </c:otherwise>
                         </c:choose>
                      <td>${explore.nickname }</td>
                    </tr>
                    </c:forEach>
                    <c:forEach items="${plannerList }" var="planner">
                    <jsp:useBean id="now2" class="java.util.Date"></jsp:useBean>
                    <fmt:formatDate value="${planner.deadline }" pattern="yyyyMMddHHmm" var="endDate2"/>
                    <fmt:formatDate value="${now2 }" pattern="yyyyMMddHHmm" var="nowDate2"/>
                    <tr class="contentPlanner" data-no="${planner.pNo }"
                     data-title="${planner.title }"
                    data-reward="${planner.reward }"
                    data-isComplete="${planner.isComplete }"
                    data-nickname="${planner.nickname }"
                    data-endPoint= "${planner.rgNo2 }"
                    data-deadline = "${planner.deadline }" 
                    data-content = "${planner.content }"
                    data-startDate = "${planner.departureDate }"
                    data-budget = "${planner.budget }"
                    data-person = "${planner.person }"
                    data-endDate= "${planner.returnDate }">
                    
                        <td class="contentNo">1123</td>
                        <td>${planner.title }</td>
                        <td>${planner.reward }코인</td>
                        <c:choose> 
                         <c:when test="${endDate2<nowDate2 and planner.isComplete=='B'}">
                         <td class="non-able">마감</td>
                         </c:when>
                         <c:when test="${planner.isComplete=='B'}">
                         <td class="able">매칭전</td>
                         </c:when>
                         <c:when test="${planner.isComplete=='I' }">
                         <td class="non-able">사전답사/여행기 작성 중</td>
                         </c:when>
                         <c:otherwise>
                         <td class="non-able">수행완료</td>
                         </c:otherwise>
                         </c:choose>
                        <td>${planner.nickname }</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div id="search">
            <select>
                <option>전체</option>
                <option>제목</option>
                <option>제목+내용</option>
                <option>작성자</option>
            </select>
            <input type="text">
        </div>
    </div>
    <c:forEach items="${exploreList }" var="explore">
		<div id="localsPopup">
			<div class="popupContent">
				<div id="address"></div>
				<div id="title"></div>
				<div id="user">
					<i class="fas fa-user-circle"></i></div>
				<div id="timeAndView"></div>
				<div id="deadlinewrap">
					<p class="deadline"></p>
				</div>
				<hr>
				<div id="destination"> </div>
				<div id="text"></div>
				<div></div>
				<c:if test="${loginUser!=null }">
					<div>
						<button id="apply">신청하기</button>
						<button id="bookmark">
							<i class="far fa-bookmark"></i>
						</button>
					</div>
				</c:if>
			</div>
		</div>
	</c:forEach>
	<c:if test="${loginUser!=null }">
    <div id="localsPopup2">
        <div class="popupContent">
        <h2>사전답사 신청</h2>
        <span id="cause">신청 사유</span><textarea id="causeTxt" placeholder="내용을 입력해주세요"></textarea>
            <div><button id="applyConfirm">신청하기</button><button id="cancle">취소</button></div>
        </div>
    </div>
    <div id="writePopup">
        <div id="writePopup2">
            <h2>작성하실 카테고리를 선택하세요</h2>
            <a id="writeExplore" class="category" href="/write/explore">사전답사 신청</a>
            <a id="writePlanner" class="category" href="/write/planner">여행 계획 대리 신청</a>
        </div>
    </div>
    </c:if>
<div id="footer">
<div id="copyright">
    <p>상호명 : (주)에르메스 | 대표 : 샤넬 | 개인정보책임자 : 루이비똥</p>
    <p>사업자등록번호 : 201-54-10020 | 통신판매업신고번호 : 제 2018-서울관악-15411호</p>
    <p>주소 : 충청남도 아산시 신창면 순천향로 22, 멀티미디어관 6층 | 광고 및 제휴 : hsh2@sch.ac.kr</p>
    <br/>
    <p>Copyright 2018. HERMES. All rights reserved.</p>
</div>
</div>
<script src="/js/jquery.js"></script>
<script src="/js/fix-footer.js"></script>
<script src="/js/chat.js"></script>
<script src="/js/profilePopup.js"></script>
<script src="/js/moment-with-locales.js"></script>
<script>
	moment.lang('ko');
	var now = moment(new Date());
	
    $("#explore").click(function (e) {
        e.preventDefault();
        $("#planner").removeClass("on");
        $("#explore").addClass("on");
        $(".contentExplore").show();
        $(".contentPlanner").hide();
    });
    $("#planner").click(function (e) {
        e.preventDefault();
        $("#explore").removeClass("on");
        $("#planner").addClass("on");
        $(".contentPlanner").show();
        $(".contentExplore").hide();
    });
    $(".contentExplore").click(function () {
    	
    	//alert(this.dataset.no);
    	var eNo = this.dataset.no;
    	var title = this.dataset.title;
    	var reward = this.dataset.reward;
    	var isComplete = this.dataset.isComplete;
    	var nickname = this.dataset.nickname;
    	var destination = this.dataset.destination;
    	var content = this.dataset.content;
    	var deadline = moment(this.dataset.deadline,"YYYY-MM-DD");
    	var count = moment(this.dataset.deadline,"YYYYMMDD").fromNow();
    	
    	$.ajax({
    		url : "/ajax/local/explore/"+eNo,
    		dataType : "json",
    		type: "GET",
    		error: function() {
    			alert("error");
    		},
    		success : function(json) {
				$("#title").text(json.title);
				$(".fa-user-circle").text(json.nickname)
    			$("#timeAndView").text("View : "+json.views)
    			$("#destination").text("상세목적지 : "+json.destination)
    			$(".deadline").html(count+"<br/>마감");
    			$("#text").text(json.content)
    			$("#address").text(json.sido+" / "+ json.gugun)
    			if(deadline<now) {
    				$("#apply").css("display","none");
    			}else {
    				$("#apply").css("display","inline");
    			}
    		}
    	});
    	$("#localsPopup").fadeIn(500);    
    });
  $(".contentPlanner").click(function () {
    	
    	//alert(this.dataset.no);
    	var pNo = this.dataset.no;
    	var title = this.dataset.title;
    	var reward = this.dataset.reward;
    	var isComplete = this.dataset.isComplete;
    	var nickname = this.dataset.nickname;
    	var destination = this.dataset.destination;
    	var content = this.dataset.content;
    	var deadline = moment(this.dataset.deadline,"YYYY-MM-DD");
    	var count = moment(this.dataset.deadline,"YYYYMMDD").fromNow();
 		var budget = this.dataset.budget;
 		var person = this.dataset.person;
 		var start = moment(this.dataset.startdate).format("YYYY년 MM월 DD일");
 		var endD = moment(this.dataset.enddate).format("YYYY년 MM월 DD일");
 		
    	$.ajax({
    		url : "/ajax/local/planner/"+pNo,
    		dataType : "json",
    		type: "GET",
    		error: function() {
    			alert("error");
    		},
    		success : function(json) {
    			$("#title").text(json.title);
				$(".fa-user-circle").text(json.nickname)
    			$("#timeAndView").text("View : "+json.views)
    			$("#destination").html(" 여행 예산 : "+budget + "원<br/> 여행 인원 : "
    					+person + "<br/> 여행 기간 : "+ start+ " ~ " + endD +" 까지")
    			$(".deadline").html(count+"<br/>마감");
    			$("#text").text(json.content)
    			$("#address").html("출발지 : "+json.sido+" / "+ json.gugun+ "<br/><br/>목적지 : "+ json.dsido+" / "+json.dgugun)
    			if(deadline<now) {
    				$("#apply").css("display","none");
    			}else {
    				$("#apply").css("display","inline");
    			}
    		}
    	});
        $("#localsPopup").fadeIn(500);    
    });
    $("#localsPopup").click(function () {
        $("#localsPopup").fadeOut(500);
    });
    $("#write").click(function () {
        $("#writePopup").fadeIn(500);
    });
    $("#writePopup").click(function () {
       $("#writePopup").fadeOut(500);
    });
    $("#apply").click(function () {
        $("#localsPopup2").fadeIn(500);
    });
    $("#cancle").click(function () {
       $("#localsPopup2").fadeOut(500);
    });
    $("#bookmark").click(function () {
       alert("북마크에 등록 되었습니다");
    });
    $("#applyConfirm").click(function () {
       alert("신청이 완료 되었습니다.");
       $("#localsPopup2").fadeOut(500);
    });
    
    
</script>
</body>
</html>