<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>대리 여행 계획 신청하기</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/tui-editor.min.css">
    <link rel="stylesheet" href="/css/tui-editor-contents.min.css" />
    <link rel="stylesheet" href="/css/tui-date-picker.css">
    <link rel="stylesheet" href="/css/default.css">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/writeEP.css">
    <link rel="icon" href="/img/favicon-96x96.png">
    <link rel="stylesheet" href="/css/footer.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <style>
        #start,#destination,#budget,#person ,#price, #endDate{
            display: block;
            margin: 20px 0;
        }
        #date {
            width: 150px;
            height: 30px;
            float: left;
            margin-bottom: 20px;
        }

        #logoImage {
            background-image: url("/img/로고.png");
        }
        .plannerBtn {
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
        .plannerBtn:hover {
            background-color: #40BEED;
            color: #fff;
        }
        #sido1,#sido2,#gugun1,#gugun2 {
            width: 150px;
            height: 30px;
            font-size: 20px;
            border-radius: 5px;
            border: 1px solid #d0d0d0;
            margin-left: 90px;
        }
        #gugun1,#gugun2 {
            margin-left: 20px;
        }
        .row {
            float: left;
            width: 180px;
            height:30px;
            position: relative;
            text-indent: 0;
            z-index: 2;
            margin-bottom: 20px;
            margin-left: 50px;
        }
        #dumb {
            display: block;
            float: left;
            width: 30px;
            height: 30px;
        }
        #dateForm {
            width: 100%;
            height: 30px;
        }
        #endDate>label {
            margin-left: 30px;
        }
        #datepicker-input1, #datepicker-input2 {
            border: 1px solid #d0d0d0;
            border-radius: 5px;
        }
        .tui-datepicker-input {
            border: none;
        }
        #dumb {
            width: 30px;
            height: 30px;
            display: block;
            font-size: 20px;
            float: left;
            font-weight: bold;
            line-height: 25px;
            text-indent: 7px;
        }
        .row2 {
            margin-left:10px;
        }
    </style>
</head>
<body>
<c:import url="/WEB-INF/templates/header.jsp"></c:import>
<div id="wrap">
    <form id="writePlanner" action="/local/planner" method="POST">
    <input type="hidden" id="contents" name="content">
    <input type="hidden" id="uNo" name="uNo" value="${loginUser.uNo }"/>
    <input type="hidden" id="rgNo" name="rgNo"/>
    <input type="hidden" id="rgNo2" name="rgNo2"/>
        <h2 id="planner">여행 계획 대리 신청</h2>
        <div id="title">
            <label for="plannerTitle" style="font-size: 20px">제목</label>
            <input type="text" id="plannerTitle" placeholder="제목을 입력해주세요" name="title">
        </div>
        <div id="content">
            <label id="start">출발지<select name="sido1" id="sido1"></select>
                <select name="gugun" id="gugun1"></select></label>
            <label id="destination">목적지<select name="sido2" id="sido2"></select>
                <select name="dgugun" id="gugun2"></select></label>
            <div id="dateForm">
                <div id="date">여행 기간</div>
                <div class="row">
                    <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                        <input type="text" id="datepicker-input1" aria-label="Date-Time" name="departure">
                        <span class="tui-ico-date"></span>
                    </div>
                    <div id="wrapper1" style="margin-top: -1px;"></div>
                </div>
                <div id="dumb">~</div>
                <div class="row row2">
                    <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                        <input type="text" id="datepicker-input2" aria-label="Date-Time" name="returnD">
                        <span class="tui-ico-date"></span>
                    </div>
                    <div id="wrapper2" style="margin-top: -1px;"></div>
                </div>
            </div>
            <label id="budget">여행 예산<input class="inputForm" type="text" name="budget">&nbsp;원</label>
            <label id="person">인원<input style="margin-left: 110px;" class="inputForm" type="number" name="person"></label>
            <label id="price">사례금<input class="inputForm" style="margin-left: 90px;" type="text" name="price">&nbsp;코인 / <label
                    id="myCoin" style="font-size: 15px;">현재 코인 : <span>100,000,000</span> 코인</label> </label>
            <span id="endDate">마감일
                <label><input style="margin-left:55px;" type="radio" name="end" value="1">1일</label>
                <label><input type="radio" name="end" value="3">3일</label>
                <label><input type="radio" name="end" value="7">1주</label>
                <label><input type="radio" name="end" value="14">2주</label>
                <label><input type="radio" name="end" value="30">한달</label>
                </span>
        </div>
        <div id="editSection"></div>
        <div id="confirm">
    <button class="plannerBtn" id="register" type="submit">등록하기</button>
    <button class="plannerBtn" id="cancel" type="button">취소하기</button>
</div>
    </form>
</div>
<c:import url="/WEB-INF/templates/footer.jsp"></c:import>
<script src="/js/markdown-it.js"></script>
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

$("#writePlanner").submit(function(){
    
	//submit될때 에디터안의 내용을 얻어와서
	

	//에디터의 값을 얻어오고
	var value=editor.getValue();
	
	//console.log(value);
	
	
	//input type=hidden인 요소에 세팅
	$("#contents").val(value);
});
</script>
</body>
</html>