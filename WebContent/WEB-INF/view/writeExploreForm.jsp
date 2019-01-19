<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>사전답사 신청하기</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/tui-editor.min.css">
    <link rel="stylesheet" href="/css/tui-editor-contents.min.css" />
    <link rel="stylesheet" href="/css/tui-date-picker.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="stylesheet" href="/css/writeEP.css">
    <link rel="icon" href="/img/favicon-96x96.png">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <style>
        #destination,#price, #endDate ,#detailDestination{
            display: block;
            margin: 20px 0;
        }
        #logoImage {
            background-image: url("/img/로고.png");
        }
        .Explore {
            width: 150px;
            height: 50px;
            outline: none;
            cursor: pointer;
            background-color: #f0f0f0;
            color: #424242;
            font-size: 25px;
            border: none;
            transition: .2s ease;
            border-radius: 10px;
        }
        .Explore:hover {
            background-color: #40BEED;
            color: #fff;
        }
        #sido2,#gugun2 {
            width: 150px;
            height: 30px;
            font-size: 20px;
            border-radius: 5px;
            border: 1px solid #d0d0d0;
            margin-left: 90px;
        }
        #gugun2 {
            margin-left: 20px;
        }
        #endDate>label {
            margin-left: 30px;
        }
        #price, #endDate {
            font-size: 20px;
        }
        #detailDestination>input {
            width: 500px;
            padding-left: 10px;
        }

    </style>
</head>
<body>
<c:import url="/WEB-INF/templates/header.jsp"></c:import>
<div id="wrap">
    <form id="writeForm" action="/local/explore" method="post">
   <!--  <input type="hidden" name="_method" value="PUT"/> -->
     <input type="hidden" id="contents" name="content"/>
     <input type="hidden" id="uNo" name="uNo" value="${loginUser.uNo }"/>
        <h2 id="planner">사전답사 신청</h2>
        <div id="title">
            <label for="plannerTitle" style="font-size: 20px">제목</label>
            <input type="text" id="plannerTitle" placeholder="제목을 입력해주세요" name="title">
        </div>
        <div id="content">
            <label id="destination">목적지<select name="sido" id="sido2"></select>
                <select name="gugun" id="gugun2"></select></label>
            <label id="detailDestination">상세 목적지<input placeholder="상세 목적지를 입력해주세요 ex)코엑스" style="margin-left: 40px;" type="text" class="inputForm" name="destination"></label>
        </div>
            <label id="price">사례금<input name="reward" class="inputForm" style="margin-left: 90px;" type="text">&nbsp;코인 / <label id="myCoin" style="font-size: 15px;">현재 코인 : <span>100,000,000</span> 코인</label> </label>
            <span id="endDate">마감일
                <label><input style="margin-left:55px;" type="radio" name="end" value="1">1일</label>
                <label><input type="radio" name="end" value="3">3일</label>
                <label><input type="radio" name="end" value="7">1주</label>
                <label><input type="radio" name="end" value="14">2주</label>
                <label><input type="radio" name="end" value="30">한달</label>
                </span>
        <div id="editSection"></div>
        <div id="confirm">
    <button class="Explore" id="register" type="submit">등록하기</button>
    <button class="Explore" id="cancel" type="button">취소하기</button>
</div>
    </form>
</div>
<c:import url="/WEB-INF/templates/footer.jsp"></c:import>
<script src='/js/markdown-it.js'></script>
<script src="/js/to-mark.min.js"></script>
<script src="/js/codemirror.js"></script>
<script src="/js/highlight.js"></script>
<script src="/js/squire-raw.js"></script>
<script src="/js/tui-editor-Editor.js"></script>
<script src="/js/writeEP.js"></script>
<script>
var editor = new tui.Editor({
	el: document.querySelector('#editSection'),
	initialEditType: 'wysiwyg',
	previewStyle: 'vertical',
	height: '550px',
	language:"ko_KR",
	toolbarItems: [
	'heading',
	'bold',
	'italic',
	'strike',
	'divider',
	'hr',
	'quote',
	'divider',
	'ul',
	'ol',
	'task',
	'divider',
	'table',
	'link',
	'divider'
	]
	});

$("#writeForm").submit(function(){
	
	
    
	//submit될때 에디터안의 내용을 얻어와서
	

	//에디터의 값을 얻어오고
	var value=editor.getValue();
	
	//console.log(value);
	
	
	//input type=hidden인 요소에 세팅
	$("#contents").val(value);
	
});//submit() end


</script>
</body>
</html>