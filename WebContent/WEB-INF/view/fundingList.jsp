<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
          integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="icon" href="img/favicon-96x96.png">
    <style>
        body{
            /*font-family: 'Noto Sans KR', sans-serif;*/
        }
        .writeBtn {
            width: 150px;
            font-size: 20px;
            height: 40px;
            background-color: #40beed;
            text-decoration: none;
            color: #FFFFFF;
            border-radius: 5px;
            text-align: center;
            margin-top: 10px;
            line-height: 35px;
            float: right;
            display: inline-block;
        }

        .writeBtn:hover {
            box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-shadow: 0 0 5px;
            background: #0091ea;
        }

        .selectBar {
            width: 130px;
            height: 30px;
            margin-top: 10px;
        }

        .checkFunding {
            margin-left: 710px;

        }

        #allFunding {
            width: 1080px;
            height: 150px;
            margin: auto;
            margin-top: 10px;
            /*background-color: #40beed;*/
            border-top: 1px solid black;
            border-bottom: 1px solid black;
            font-weight: 600;
            font-size: 50px;
            text-align: center;
            line-height: 143px;
        }

        #content {
            width: 1080px;
            /*height: 380px;*/
            margin: auto;
            /* background-color: yellow;*/
        }

        #content > h2 {
            font-size: 25px;
            font-weight: 500;
            margin-top: 50px;
            border-top: 1px solid black;
            width: 300px;
            padding-top: 10px;
        }

        #content > a {
            font-size: 20px;
            font-weight: 500;
            /*margin-top: 50px;*/
            margin: 0 0 0 1320px;
        }

        #content > #fundingList {
            width: 1400px;
            /*height: 300px;*/
            /*background-color: red;*/
            overflow: hidden;

        }

        #fundingList > li.funding { /*이게 박스 하나 */
            width: 230px;
            height: 265px;
            background-color: #ffffff;
            border-radius: 2px;
            float: left;
            margin: 23px 70px 23px 60px;
            box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .1);
            transition: all .1s ease-in-out;
            cursor: pointer;
        }

        #fundingList > li.funding:hover {
            transform: translateY(-2px);
            box-shadow: 0 3px 8px 0 rgba(0, 0, 0, .16);
        }

        /*#bandList>li.band+li.band{*/
        /*margin: 0 0 25px 25px;*/
        /*}*/
        #fundingList div.funding_img {
            width: 230px;
            height: 160px;

            position: relative;

        }

        #fundingList div.funding_img > img {
            width: 230px;
            height: 160px;
            border-radius: 2px 2px 0 0;
            position: absolute;
        }

        #fundingList div.funding_title {
            width: 180px;
            height: 75px;
            margin-left: 10px;
            margin-top: 5px;
        }

        #fundingList div.funding_title > strong {
            width: 180px;
            height: 16px;
            display: inline-block;
            font-size: 15px;

        }

        #fundingList div.funding_title > span {
            width: 180px;
            height: 16.8px;
            display: inline-block;
            font-size: 12px;
            color: #757575;
        }

        .back {
            background: rgba(0, 0, 0, 0.6);
            width: 230px;
            height: 160px;
            border-radius: 2px 2px 0 0;
            position: absolute;
        }

        .success {
            width: 90px;
            height: 90px;
            border-radius: 80px;
            background-color: transparent;
            text-align: center;
            line-height: 85px;
            font-weight: 600;
            font-size: 30px;
            color: #40beed;
            margin: 40px 0 0 40px;
            text-shadow: 1px 1px 1px #0091ea;
        }

        .failure {
            width: 90px;
            height: 90px;
            border-radius: 80px;
            background-color: transparent;
            text-align: center;
            line-height: 85px;
            font-weight: 600;
            font-size: 30px;
            color: #dd4444;
            margin: 40px auto;
            text-shadow: 1px 1px 1px #aa2222;
        }
        #writeBtnDiv {
            width: 1080px;
            height: 50px;
            margin: auto;
        }
        #logoImage {
            background-image: url("img/123.png");
        }
        #title {
        	overflow: hidden;
        	text-overflow:ellipsis;
        	font-weight: bold;
        	white-space: nowrap;
        }
        #intro {
        	overflow: hidden;
        	text-overflow:ellipsis;
        	white-space: nowrap;
        }
        
        
        
        /*
페이징 CSS
*/
.paginate {
	font-size:22px;
	text-align:center;
	height:50px;
	line-height:50px;
	font-weight:500;
	margin: 10px;
}

.paginate a, 
.paginate span,
.paginate strong{
	color:#858585;
	text-decoration:none;
	padding:9px 14px;
	border:1px solid transparent;
	transition:.1s ease;
}

.paginate span {
	border-color:#E1E1E1;
	cursor: not-allowed;
}

.paginate a:hover {
	background:#40beed;
	border-color:#fff;
	font-weight:bold;
	color:#fff;
}

.paginate strong {
	background:#40beed;
	border-color:#40beed;
	color:#fff;
	cursor: not-allowed;
	font-weight:bold;
	box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

/*
비활성화
*/
.paginate span.next,
.paginate span.prev {
	border-color:#E1E1E1;
	color:#E1E1E1;
	cursor:default;
	cursor:not-allowed;
}

.card_user {
	position: absolute;
	height:120px;
	text-align: center;
	top:10px;
	left:10px;
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
	color:#9E9E9E;
	bottom:0;
	font-size:16px;
}
#logoImage{
            background-image: url("/img/로고.png");
        }
    </style>

</head>
<body>
<c:import url="/WEB-INF/templates/header.jsp"></c:import>	
<div id="writeBtnDiv">
<a href="/funding/register" class="writeBtn">펀딩 작성하기</a> 
</div>
<div id="allFunding"><h1>모든 펀딩여행</h1></div>
<div id="content">
        <select class="selectBar" title="">
        <option value="newest" <c:if test="${filter=='newest'}">selected</c:if>>최신순</option>
        <option value="deadline" <c:if test="${filter=='deadline'}">selected</c:if>>마감임박순</option>
        <option value="success" <c:if test="${filter=='success'}">selected</c:if>>펀딩달성임박순</option>
    </select>
    <input type="checkbox" value="" class="checkFunding">완료된 펀딩을 포함하여 보기
    <ul id="fundingList">
    
    <c:forEach items="${fundings}" var="funding">
        <li class="funding">
        <a href="/fundingViewer/${funding.getFdNo()}">
            <div class="funding_img">				
                <img src="/funding/thumb/${funding.thumbnail}" alt="" width="230" height="180" />
                 </a>
                <c:if test="${!funding.isSuccess() && funding.isFail()}">
	                <div class="back">
	                    <div class="failure">FAIL</div>
	                </div>
         		 </c:if>
         		  <c:if test="${funding.isSuccess()}">
                    <div class="back">
                    	<div class="success">SUCCESS!</div>
                    </div>
                   </c:if>
            </div><!--//.funding_img -->
            <div class="funding_title">
                <strong id="title">${funding.title}</strong>
                <strong id="intro">${funding.intro}</strong>
                <span>${funding.nickname}
                       <em>${funding.uTier }</em>
                    </span>
                <span>${funding.ammount}원
                    <em>(목표)</em>
                    </span><br>
                <span><i class="far fa-calendar-alt"></i>
                        <em>${funding.deadline}(마감)</em>
                    </span>
            </div>
        </li> 
        <!--바탕화면 소스 추가 -->
        </c:forEach>
    </ul>
    ${paginate}
   
</div><!--//.content -->

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
<script src="/js/underscore-min.js"></script>
<script src="/js/chat.js"></script>
<script src="/js/profilePopup.js"></script>

<script>

    var $window = $(window),
        $document = $(document);

    // alert(docHeight);

    $window.scroll(function () {

        var docHeight = $document.height(),
            winHeight = $window.height();

        var sTop = $window.scrollTop();

        if (docHeight <= (sTop + winHeight) + 30) {

            for (var i = 0; i < 10; i++) {

               // var tmp = _.template($("#replayTmp").html());
               // $("#fundingList").append(tmp);
            }
        }

    });

    
<%--         $('#viewerSection').tuiEditor({
        viewer: true,
        height: 600,
        initialValue:`<%=article.getContents()%>`
    }); --%>
    
    $(".selectBar").change(function() {
		var value = $(this).val();
		
		//console.log(value);
		var url = "/funding/page/1/filter/"+value;
		
		location.href = url;
		
	});

</script>
</body>
</html>