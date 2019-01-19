<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/tui-editor.min.css">
    <link rel="stylesheet" href="/css/tui-editor-contents.min.css" />
    <link rel="stylesheet" href="/css/tui-date-picker.css"/>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="icon" href="/img/favicon-96x96.png"> 
</head>
<style>
    #logoImage {
        background-image: url("img/123.png");
    }
    #main{
        width: 900px;
        background-clip: content-box;
        background: transparent;
        margin: 10px auto;
    }

   #fundingHeader{
       width: 570px;
       height: 330px;
       background-color: darkgray;
       text-align: center;
       line-height: 200px;
       margin: auto;
       font-size: 30px;
        border-radius: 3px;
   }

   #formBox{
       border: 1px solid transparent;
       padding: 10px;
       box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
   }
   #formBox textarea{
       resize: none;
       width: 500px;
       padding: 10px;
       font-size: 15px;
       vertical-align: top;
       outline: none;
       border-radius: 5px;
   }
   .row{
       margin: 20px;
       font-weight: bold;
       border-radius: 10px;
   }

   input{
       /*resize: none;*/
       outline: none;
       border-radius: 4px;
       height: 25px;
       width: 130px;
       text-decoration: none;
   }
    #formBox input:focus, #formBox textarea:focus{
        border-color:#40beed;
    }
    .box_btn{
        text-align: right;
        margin-left: 10px;
        margin-top: 20px;
    }
    .FundingBtn {
             display: inline-block;
             padding: 5px 5px;
             background: #40beed;
             color: white;
             font-size: 17px;
             text-decoration: none;
             border-radius: 5px;

         }
    .FundingBtn:hover {
        box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        text-shadow: 0 0 5px;
        background: #0091ea;
    }
    .FundingBtn {
        cursor: pointer;
        border: none;
        line-height: 1em;
    }
    #editSection {
        width:875px;
        margin-top: 10px;
        height: 500px;
        border: 1px solid transparent;
       /*  box-shadow: 0 5px 14px 0 rgba(0, 0, 0, 0.1), 0 3px 17px 0 rgba(0, 0, 0, 0.1); */
        font-weight: bold;

    }
    em{
        font-size: 13px;
        padding-left: 5px;
        color: #dd4444;
        
    }

    #funding{
        margin-left: 5px;

    }
    #summary{
        margin-left: 6px;
    }
    #title{
        width: 250px;
        margin-bottom: 5px;
    }
    #endDate{
        position: relative;
        z-index: 1000;
    }

    .tui-calendar td, th {
        vertical-align: middle;
    }
    #editSection .tui-editor-defaultUI button{
		color:red;
	}
	#uploadImage{
		display:none;
	}
	
	    #thumnail{
        display: none;
    }


</style>
<body>
<c:import url="/WEB-INF/templates/header.jsp"></c:import>
<div id="main">
<div id="formBox">
    <form id="writeForm" method="post" action="/funding" method="post">
    <input type="hidden" name="thumbnail" id="thumbnail">
   <input type="hidden" name="uNo" value="${loginUser.uNo}"/>
        <fieldset>
            <input type="hidden" id="contents" name="content" value="${funding.content}">
            <legend class="screen_out">세부사항 입력폼</legend>
            <div id="fundingHeader">
            
            <label for="thumnail"><i class="fas fa-camera" >
            <input type="file" id="thumnail" name="thumnail" value="${funding.thumnail}"></i>
            </label>
            
            <input placeholder="여행 제목을 입력해주세요." maxlength="20" id="title" name="title"  value="${funding.title}">
            
            </div><!-- fundingHeader end -->
            <div class="row">
                <label for="summary">여행요약</label>
                <textarea id ="summary" name="intro" placeholder="여행내용을 요약해주세요.(최대 30자 이내)" maxlength="30" />${funding.intro}</textarea>
            </div>
            <div class="row"> 
                <label for="day1">여행 일정</label>
                <input id = "day1" name="travelDays" placeholder="일 수를 입력하세요." value="${funding.travelDays}">일
            </div>
            <div class="row">
                <label for="funding">펀딩금액</label>
                <input id = "funding" name="ammount" placeholder="금액을 입력해주세요" value="${funding.ammount}"/>원
            </div>
            <div id='endDate' class="row">
                <label for="funding">펀딩 마감일</label>
                    <div class="tui-datepicker-input tui-datetime-input tui-has-focus">
                        <input type="text" id="datepicker-input" aria-label="Date-Time" name="deadline"  value="${funding.deadline}">
                        <span class="tui-ico-date"></span>
                    </div>
                    <div id="wrapper" style="margin-top: -1px;"></div>
            </div>
            <div id="editSection"></div>
            <div id="getDiv"></div>
            <div class="box_btn">
                <!--check필요 -->
                <button class="FundingBtn" id="complete" type="submit"><i class="fas fa-pen-nib"></i> 글쓰기</button>
                <a href=''  class="FundingBtn"><i class="fas fa-redo"></i>취소</a>
            </div>
        </fieldset>
    </form>
    
    <%--이미지 업로드용 --%>
		<input type="file" id="uploadImage"/>
		
		
		
</div><!--fromBox end-->

</div><!--main end-->
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
<script src="/js/tui-date-picker.min.js"></script>
<script src="/js/chat.js"></script>
<script src="/js/profilePopup.js"></script>
<script src="/js/fix-footer.js"></script>
<script>
//마감일 설정 
var datepicker = new tui.DatePicker('#wrapper', {
    date: new Date(),
    input: {
        element: '#datepicker-input',
        format: 'yyyy-MM-dd'
    },
    language: 'ko'
});

var editor = new tui.Editor({
	el: document.querySelector('#editSection'),
	initialEditType: 'wysiwyg',
	previewStyle: 'vertical',
	height: '600px',
	language:"ko",
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
	
	var $uploadImage=$("#uploadImage");
	
	//파일이 사진인지 판단하는 정규표현식
	var fileTypeExp = /^image\//;
    
    $("#writeForm").submit(function(){
    
    	//submit될때 에디터안의 내용을 얻어와서
    	
  
    	//에디터의 값을 얻어오고
    	var value=editor.getValue();
    	
    	//console.log(value);
    	
    	
    	//input type=hidden인 요소에 세팅
    	$("#contents").val(value);
    	
    });//submit() end
    
    //툴바
    const toolbar = editor.getUI().getToolbar();

    //이벤트 등록
    editor.eventManager.addEventType('imageEvent');

    //이벤트 리스너 / 핸들러
    editor.eventManager.listen('imageEvent', function() {
	
    	//파일 선택하는 다이얼로그창 뜸
    	$uploadImage.click();
    	
    });//listen() end

    toolbar.addButton({
    name: 'addImage',
    event: 'imageEvent',
    tooltip: '이미지 입력',
    $el: $('<button class="btn_image"><i class="fas fa-image"></i></button>')
    });

    
    $("#thumnail").change(function() {
    	
    	var file = this.files[0];

    	//console.log(file);

    	if(file.size==0) {
    	alert("제대로 된 파일을 선택해주세요.");
    	return;
    	}

    	console.log(fileTypeExp.test(file.type));

    	if(!fileTypeExp.test(file.type)) {
    	alert("이미지만 선택해주세요.");
    	return;
    	}

    	//alert("여기에 오면 파일이 있고 사진임");

    	var formData = new FormData();

    	formData.append("uploadImg",file,file.name);
    	formData.append("type","T");//B는 board의 줄임말

    	$.ajax({
    	url: '/ajax/funding/image/upload',
    	processData: false,
    	contentType: false,
    	data: formData,
    	type: 'POST',
    	dataType:"json",
    	error:function(xhr,error,code) {
    	alert("에러:"+code);
    	},
    	success: function(result){
    	console.log(result.src);
    	
    	$("#fundingHeader").css("background-image","url("+result.src+")");
    	
    	//해당페이지에서만 쓰면은 필요없는데 다른곳에서도 이용한다면 써야한다
    	$("#thumbnail").val(result.src);

    	}
    	});
    	
    });//change() end
    
    $uploadImage.change(function(){
    	
    	var file = this.files[0];

    	//console.log(file);

    	if(file.size==0) {
    	alert("제대로 된 파일을 선택해주세요.");
    	return;
    	}

    	console.log(fileTypeExp.test(file.type));

    	if(!fileTypeExp.test(file.type)) {
    	alert("이미지만 선택해주세요.");
    	return;
    	}

    	//alert("여기에 오면 파일이 있고 사진임");

    	var formData = new FormData();

    	formData.append("uploadImg",file,file.name);
    	formData.append("type","F");//B는 board의 줄임말

    	$.ajax({
    	url: '/ajax/funding/image/upload',
    	processData: false,
    	contentType: false,
    	data: formData,
    	type: 'POST',
    	dataType:"json",
    	error:function(xhr,error,code) {
    	alert("에러:"+code);
    	},
    	success: function(result){
    	console.log(result.src);

    	var squireExt = editor.wwEditor.getEditor();

    	squireExt.insertHTML("<img src='"+result.src+"'>");

    	//해당페이지에서만 쓰면은 필요없는데 다른곳에서도 이용한다면 써야한다
    	$("<input type='hidden' name='uploadImg'>").val(result.src).appendTo("#writeForm");

    	}
    	});
    	
    	
    	
    });

//content작성값 

    


</script>
</body>
</html>