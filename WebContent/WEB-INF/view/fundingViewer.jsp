<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>

    <meta charset="UTF-8">
    <title>뷰어 예제</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/tui-editor-contents.min.css">
    <link rel="stylesheet" href="/css/tui-editor-contents.min.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="icon" href="img/favicon-96x96.png">
    <link rel="stylesheet" href="/css/footer.css">
    <style>
        #viewerSection {
            width:1040px;
            border:1px solid #e5e5e5;
            padding:20px;
            margin: auto;

        }
        #main{
            width:1040px;
            height: 500px;
            border:1px solid #e5e5e5;
            padding:20px;
            margin: auto;
            position: relative;

        }
        #fundingTitle{
            text-align: center;
            font-weight: bold;
            font-size: 30px;
        }

        #myProfile{
            text-align: center;
            /* position:absolute; */
            width: 60px;
            height: 60px;
            margin: 10px auto;
            border-radius:50px;
        }
        #myProfile>img{
            text-align: center;
            /* position:absolute; */
            width: 60px;
            height: 60px;
            margin: 10px auto;
            border-radius:50px;
        }
        #nickname{
            text-align: center;
            /* background-color: #40beed;*/
            width: 100px;
            margin: auto;
            font-weight: bold;
        }
        #fundingPicture{
            margin-left: 50px;
            width: 570px;
            height: 330px;
            margin-top: 30px;
            background-color: #40beed;
            border-radius: 5px;
            box-shadow:0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);

        }
        #fundingPicture>img {
        	width:570px;
        	height: 330px;
        	
        }

        #fundingBtn{
            margin-left: 910px;


        }
        .fBtn {
            width: 125px;

            display: inline-block;
            padding: 5px 5px;
            background: #40beed;
            color: white;
            font-size: 20px;
            text-decoration: none;
            border-radius: 5px;
            position: absolute;
        }
        .fBtn:hover {
            box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-shadow: 0 0 5px;
            background: #0091ea;
        }
        button.fBtn{
            cursor: pointer;
            border: none;
            line-height: 1em;
        }
        #fundingData{
            position: absolute;
            left: 680px;
            top: 175px;
        }
        .row{
            font-weight: bold;
            font-size: 20px;
            margin: 10px;
        }
        .rowData{
           text-indent: 50px;
        }
        /*#replyForm{*/
            /*margin: auto;*/
            /*width:1080px;*/
            /*border:1px solid #e5e5e5;*/
            /*padding:20px;*/
            /*position: relative;*/
        /*}*/

        .full {
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
        }

        #fPopup {
            background: rgba(0, 0, 0, 0.6);
            display: none;
        }

        #title {
            font-size: 30px;
            margin: 10px;
            position: fixed;
        }

        #fundingBox {
            width: 500px;
            min-height: 270px;
            background: #fff;
            position: fixed;
            left: 50%;
            top: 50%;
            margin: -140px 0 0 -250px;
            border-radius: 5px;
            padding: 20px;
            opacity: 99%;
            background: #FFFFFF;
            font-weight: bold;
            box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .1);
            display: none;
        }

        #mainFunding {
            position: absolute;
            top: 70px;
            left: 50px;


        }

        #lastBtn {
            margin-top: 255px;
            margin-left: 170px;
            width: 150px;
            display: inline-block;
            padding: 5px 5px;
            background: #40beed;
            color: white;
            font-size: 15px;
            text-decoration: none;
            border-radius: 5px;
        }
        #lastBtn:hover{
            box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-shadow: 0 0 5px;
            background: #0091ea;
        }
        .row1{
            margin-top: 10px;
        }
        input{
            height: 20px;
            margin-top: 5px;
            border: 1px solid #7b8184;
            border-radius: 3px;
        }
        #require{
            width: 360px;
            height: 50px;
            border: 1px solid #7b8184;
            border-radius: 3px;
            margin-top: 5px;
        }
        dd{
            margin-top: 5px;
            margin-bottom: 15px;
        }
 /*       #fundSuccess{
            text-align: center;
            margin-left:910px;
            position: absolute;
        } 후기보기는 펀딩완료시 바뀌도록 */


        #replyListBox {
            width: 1080px;
            margin: 20px auto;
            border:1px solid #e5e5e5;

        }


        #replyListBox li {
            padding: 10px;
            min-height: 140px;
            border-bottom: 2px dotted #bbb;
            overflow: hidden;
            position: relative;
            padding-bottom: 20px;
        }

        #replyListBox .box_reply {
            width: 730px;
            min-height: 100px;
            /* 포지셔닝 컨텍스트 지정 */
            position: relative;
            padding-left: 20px;
            padding-top: 50px;
            left:130px;
            top:0;
        }





        #replyListBox .comments {
            width: 620px;
            min-height: 50px;
            background: #FFFFFF;
            border-radius: 12px 12px 12px 12px;
            padding: 10px;
            position: relative;
            color: #5f5f5f;
            white-space: pre-wrap;
            /* 단어를 브레이크 */
            word-wrap: break-word;
            box-shadow: 0 8px 20px 0 rgba(0,0,0,.1);
            bottom: 20px;
            border: 1px solid #e5e5e5;
        }

        #replyListBox .time {
            top:140px;
            left: 970px;
            position: absolute;
            font-size: 15px;
            font-weight:bold;
            color:#7b8184;
        }

        .card_user {
            position: absolute;
            height:120px;
            text-align: center;
            top:30px;
            left:30px;
        }
        .card_user img {
            border-radius: 50px;
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
        }
        .card_user strong {
            position: absolute;
            width:100px;
            left:0;
            font-weight:bold;
            color:#5f5f5f;
            bottom:22px;
            font-size:16px;
        }
        .card_user em{
            position: absolute;
            width:100px;
            left:0;
            font-weight:bold;
            color:#5f5f5f;
            bottom:0;
            font-size:16px;
        }
        .no_reply {
            text-align: center;
            font-size:22px;
            line-height:140px;
        }
        #logoImage{
            background-image: url("/img/로고.png");
        }

    </style>
</head>
<body>
<c:import url="/WEB-INF/templates/header.jsp"></c:import>
<%-- <%

	String noStr=request.getParameter("no");

	int no=0;
	
	if(noStr!=null){
		no=Integer.parseInt(noStr);
	}//if end
	
	Funding funding = FundingsDAO.selectOne(no);
	
	List<Patron> patrons = PatronsDAO.selectList(no);
 	
	System.out.println("patrons:"+patrons);
	
	System.out.println("getContent:"+funding.getContent());
	
	int percent = 0;
	if(funding.getAllPrice()>0) {
		percent = (funding.getAllPrice()/Integer.parseInt(funding.getAmmount()))*100;
	}
	System.out.println(funding.getAmmount());
	System.out.println(funding.getAllPrice());
	System.out.println(funding.getAllPrice()/Integer.parseInt(funding.getAmmount()));
 %> --%>
<div id="main">
    <h1 id="fundingTitle">${funding.title}</h1>
    <div id="myProfile"><img src="/img/${funding.profileImg}" alt="" /></div>
    <div id="nickname">${funding.nickname}</div>
    <div id="fundingPicture"><img src="/funding/thumb/${funding.thumbnail}" alt="펀딩메인사진" /></div>
    <dl id="fundingData">
    
   		<dt class="row">여행요약</dt>
        <dd class="rowData">${funding.intro}</dd>

        <dt class="row">여행 일정</dt>
        <dd class="rowData">${funding.travelDays}일</dd>
    
        <dt class="row">받은펀딩 금액</dt>
        <dd class="rowData">${funding.allPrice}원(%)</dd>

		<dt class="row">펀딩참여 인원</dt>
        <dd class="rowData">7명</dd>
        
        <dt class="row">마감 일자</dt>
        <dd class="rowData"><strong>${funding.deadline}</strong></dd>
        
    </dl>
    <c:if test="${loginUser!=null }">
    <button id="fundingBtn" class="fBtn">펀딩 하기</button>
    </c:if>
    <!--<div id="fundSuccess"><a href="" id="fundingReview" class="btn">후기 보기</a></div>-->
</div>
<div id="viewerSection"></div>
<div id="replyListBox">
	<ul>
	<%--
	<c:forEach items="patronList" var="patron">
        <li>
            <div class="card_user">
                <img src="img/car.jpg" width="100"/>
                <strong>${patron.nickname }</strong>
                <em>${patron.price } 코인</em>
            </div><!-- //card_user -->
            <div class="box_reply">
                <div class="comments">${patron.requier }</div>
            </div><!--//box_reply-->
            <time class="time" data-time="">${patron.regiDate }</time>
        </li>
        </c:forEach>
         --%>
    </ul>
</div>

<!--펀딩하기 팝업-->
<div id="fPopup" class="full"></div>
    <div id="fundingBox">
       <form id="fundForm" method="post" action="/fundingRequire.jsp">
       <input type="hidden" name="fdNo" value="${fdNo }" />
       <fieldset>
        <h1 id="title">후원하기</h1>
        <div id="mainFunding">
            <div class="row1">
                <dl>
                    <dt>후원 항목</dt>
                    <dd class="">${funding.intro}</dd>
                </dl>
            </div>
            <div class="row1">
                <strong>후원 금액</strong><br>
                <input id="fund" name="price" value="">코인 /  <em>보유코인 10,000코인</em>
            </div>
            <div class="row1">
                <strong>요청 사항</strong><br>
                <textarea type="text" id="require" name="require" value="" placeholder="모든 요청 사항이 반영이 되는 것은 아닙니다."></textarea>
            </div>
        </div>
        <button id="lastBtn" class="fBtn" type="submit">펀딩 하기</button>
        </fieldset>
        </form>
    </div>
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
<script src="/js/tui-code-snippet.min.js"></script>
<script src='/js/markdown-it.js'></script>
<script src="/js/to-mark.min.js"></script>
<script src="/js/codemirror.js"></script>
<script src="/js/highlight.js"></script>
<script src="/js/squire-raw.js"></script>
<script src="/js/tui-editor-Editor.js"></script>
<script src="/js/chat.js"></script>
<script src="/js/fix-footer.js"></script>
<script>
var $fPopup = $("#fPopup");
var $fundingBox = $("#fundingBox");
$("#fundingBtn").click(function (e) {
    $fPopup.show();
    $fundingBox.show();
});
$fPopup.click(function () {
    $fPopup.hide();
    $fundingBox.hide();
});
$("#lastBtn").click(function(){
alert("펀딩완료")
        $fPopup.hide();
    $fundingBox.hide();
   
});
   // 펀딩 팝업

 $('#viewerSection').tuiEditor({
        viewer: true,
        height: 600,
        initialValue:`${funding.content}`
    });
// ## 안녕하세요?
// 지금 **테스트**중입니다.
// > 이글은 인용문입니다.
// 1. 강아지
// 2. 고양이
// * 리스트1
// * 리스트2
// ![귀여운 고양이](https://t1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/4arX/image/hXVdEebWb_3V5cW6eRhgNkM9z60.jpg "아주 귀여운 고양이")
//
// | 제목1 | 제목2 | 제목3 |
// | --- | --- | --- |
// | 안녕 | 하세 | 용 |`



</script>
</body>
</html>