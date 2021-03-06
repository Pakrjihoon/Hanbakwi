<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link rel="stylesheet" href="/css/reset.css" />
<link rel="stylesheet" href="/css/footer.css">
<link rel="stylesheet" href="/css/header.css">
<link rel="icon" href="/img/favicon-96x96.png">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/myPage.css">
<style>
#logoImage {
	background-image: url("/img/로고.png");
}
</style>
</head>
<body>
	<c:import url="/WEB-INF/templates/header.jsp"></c:import>
	<div id="wrap">
		<div id="wrapBox">
			<div id="profileInfoBox">
				<div id="profile">
					<label for="photoadd"><img
						src="/img/${loginUser.profileImg }" width="100px"
						height="100px" /></label> <input type="file" id="photoadd" />
					<p>${loginUser.nickname }</p>
				</div>
				<p class="address">활동 지역 1 : 서울시 / 노원구</p>
				<p class="address" id="address2">활동 지역 2 : 서울시 / 관악구</p>
				<label class="switch"> <input type="checkbox"> <span
					class="slider round"></span>
				</label> <a href="" id="cog"><i class="fas fa-cog"></i></a>
			</div>
			<div id="scoreBox">
				<div class="box_grade">
					<div class="star_grade"></div>
					<div class="box_btn">
						<button class="btn_grade"></button>
						<button class="btn_grade"></button>
						<button class="btn_grade"></button>
						<button class="btn_grade"></button>
						<button class="btn_grade"></button>
					</div>
				</div>
			</div>
			<div id="buttonBox">
				<div class="myPageBtn" id="bt2">
					<i class="far fa-envelope"></i>
				</div>
				<div class="myPageBtn" id="bt3">
					<i class="fas fa-camera"></i>
				</div>
			</div>
			<div id="followBox">
				<a href="#" id="follower">팔로워 12</a> <a href="#" id="follow">팔로우
					23</a>
			</div>
			<div id="menuBox">
				<ul>
					<li><i class="fas fa-circle"></i> 작성한 여행기(1)</li>
					<li><i class="fas fa-circle "></i> 내가 찾은 명소(1)</li>
					<li><i class="fas fa-circle"></i> 작성한 리뷰(1)</li>
					<li><i class="fas fa-circle"></i> 사전답사 신청내역(1)</li>
					<li><i class="fas fa-circle"></i> 여행 플랜 내역(1)</li>
					<li><i class="fas fa-circle"></i> 펀딩 내역(1)</li>
					<li><i class="fas fa-circle"></i> 북마크 및 좋아요(2)</li>
				</ul>
			</div>
		</div>
		<div id="gradeWrapBox">
			<h3>${loginUser.nickname }님의등급</h3>
			<div id="gradeBox">
				<p id="sum">합계 거리 245km</p>
				<p id="question">
					<i class="far fa-question-circle"></i>
				</p>
			</div>
			<div id="bar"></div>
			<div id="tierBox">
				<c:set var="tier" value="${loginUser.uTier }"></c:set>
				<c:choose>
					<c:when test="${tier=='B' }">
						<p id="tier">브론즈</p>
					</c:when>
					<c:when test="${tier=='S' }">
						<p id="tier">실버</p>
					</c:when>
					<c:when test="${tier=='G' }">
						<p id="tier">골드</p>
					</c:when>
					<c:when test="${tier=='P' }">
						<p id="tier">플래티넘</p>
					</c:when>
					<c:otherwise>
						<p id="tier">다이아</p>
					</c:otherwise>
				</c:choose>
				<svg xmlns="http://www.w3.org/2000/svg"
					xmlns:svg="http://www.w3.org/2000/svg">
                <!-- Created with SVG-edit - https://github.com/SVG-Edit/svgedit-->
                <g class="layer">
                    <title>Layer 1</title>
                    <g id="svg_12">
                        <polygon fill="#b7814e" id="svg_36"
						points="87.33505249023438,54.5001220703125 60.723388671875,91.1279296875 17.664825439453125,77.1373291015625 17.664825439453125,31.862884521484375 60.723388671875,17.872314453125 87.33505249023438,54.5001220703125 "
						stroke="#f2cba7" transform="rotate(54.3036 52.4999 54.5001)" />
                        <polygon fill="#aa682e" id="svg_38"
						points="49.822296142578125,16.86639404296875 52.066497802734375,23.322708129882812 58.90032958984375,23.46197509765625 53.453521728515625,27.591461181640625 55.432830810546875,34.13385009765625 49.822296142578125,30.229690551757812 44.211761474609375,34.13385009765625 46.191070556640625,27.591461181640625 40.7442626953125,23.46197509765625 47.578094482421875,23.322708129882812 49.822296142578125,16.86639404296875 52.066497802734375,23.322708129882812 "
						stroke="#f2cba7" />
                        <path
						d="m34.40974,57.66473c0,-3.40336 0,-6.80672 0,-10.21008c-0.82967,0.23205 -1.63249,0.72935 -2.50224,0.70026c0.95828,-0.88752 2.70991,-1.16861 4.0117,-1.75059c5.68623,-2.00315 11.37416,-4.02469 17.16875,-5.69438c1.67719,-0.0824 3.26616,0.88831 4.88374,1.2942c3.66021,1.31312 7.3925,2.48064 10.93582,4.08603c-0.80908,1.08511 -3.54972,0.62881 -3.19491,2.67329c-0.24841,5.66516 -0.10407,11.3392 -0.14252,17.00852c-2.35822,0.69928 -4.70576,1.47058 -7.07063,2.12507c-8.0299,-0.00743 -16.0598,-0.01483 -24.0897,-0.02223c0,-3.40335 0,-6.80676 0,-10.21008l0,-0.00001l0,0l-0.00001,0zm3.24587,3.88064c0,-2.00161 0,-4.00323 0,-6.00485c2.05572,0 4.11143,0 6.16715,0c0,4.00324 0,8.00648 0,12.00972c4.76061,0 9.52121,0 14.28182,0c0,-6.70813 0,-13.41625 0,-20.12438c-7.79008,0 -15.58016,0 -23.37025,0c0,6.70813 0,13.41625 0,20.12438c0.97376,0 1.94752,0 2.92128,0c0,-2.00162 0,-4.00323 0,-6.00486l0,0l0,-0.00001zm12.3343,-3.40816c0,-0.86556 0,-1.73112 0,-2.5967c1.62294,0 3.24587,0 4.8688,0c0,1.73113 0,3.46227 0,5.19339c-1.62294,0 -3.24587,0 -4.8688,0c0,-0.86556 0,-1.73112 0,-2.59669zm4.21963,0.16229c0,-0.70327 0,-1.40654 0,-2.10981c-1.19015,0 -2.3803,0 -3.57045,0c0,1.40655 0,2.81309 0,4.21963c1.19015,0 2.3803,0 3.57045,0c0,-0.70327 0,-1.40654 0,-2.10981l0,0l0,-0.00001zm-10.71136,3.57045c0,-1.89342 0,-3.78684 0,-5.68027c-1.83933,0 -3.67865,0 -5.51798,0c0.03574,3.66282 -0.10765,7.33423 0.17293,10.98916c0.90931,0.57244 2.3156,0.29124 3.44657,0.37138c0.63283,0 1.26566,0 1.89849,0c0,-1.89342 0,-3.78685 0,-5.68027l0,0l-0.00001,0zm18.74489,4.24058c0.89261,-0.29524 1.78523,-0.59048 2.67784,-0.88573c-0.04029,-5.69321 0.12247,-11.39319 -0.19963,-17.07986c-0.78629,-0.99876 -2.90194,1.25868 -4.21812,0.17938c-1.11599,-0.6702 -2.01591,-0.7036 -1.67427,0.84607c-0.07501,5.66785 -0.1744,11.34291 0.06208,17.00745c-0.28849,2.14841 2.43537,-0.19615 3.3521,-0.06731l0,0zm2.18063,-18.98248c0.72208,-0.34057 3.61461,-0.74737 1.64927,-1.36969c-3.85178,-1.63722 -7.76501,-3.16667 -11.77994,-4.35387c-1.64734,-0.23269 -3.19277,0.65036 -4.75345,1.04564c-0.89755,0.11546 -1.74264,0.82195 -0.34597,1.02288c4.15197,1.56152 8.29594,3.17303 12.54915,4.43924c0.89667,-0.16053 1.78951,-0.54376 2.68094,-0.7842l0,0zm-12.97315,-2.10825c-1.51474,-0.57545 -3.02948,-1.1509 -4.54421,-1.72635c-3.185,1.1119 -6.40112,2.14186 -9.54826,3.35651c6.20719,0.20797 12.42481,0.0732 18.63669,0.09619c-1.51474,-0.57545 -3.02948,-1.1509 -4.54422,-1.72635z"
						fill="#512807" id="svg_9" stroke="#664120" stroke-dasharray="null"
						stroke-linecap="null" stroke-linejoin="null" stroke-width="null" />
                    </g>
                </g>
                <g class="layer">
                    <title>Layer 1</title>
                    <g id="svg_13">
                        <polygon fill="#a0a0a0" id="svg_29"
						points="86.3349609375,52.500274658203125 59.723297119140625,89.12811279296875 16.66473388671875,75.13751220703125 16.66473388671875,29.863067626953125 59.723297119140625,15.872482299804688 86.3349609375,52.500274658203125 "
						stroke="#d6d4d4" transform="rotate(54.3036 51.5 52.5003)" />
                        <polygon fill="#c9c9c9" id="svg_30"
						points="23.82220458984375,30.955078125 26.06640625,37.411376953125 32.900238037109375,37.5506591796875 27.45343017578125,41.680145263671875 29.4327392578125,48.2225341796875 23.82220458984375,44.318359375 18.211669921875,48.2225341796875 20.19097900390625,41.680145263671875 14.744171142578125,37.5506591796875 21.5780029296875,37.411376953125 23.82220458984375,30.955078125 26.06640625,37.411376953125 "
						stroke="#e8e8e8" />
                        <polygon fill="#c9c9c9" id="svg_32"
						points="73.82220458984375,31.8665771484375 76.06640625,38.3228759765625 82.90023803710938,38.462127685546875 77.45343017578125,42.59161376953125 79.4327392578125,49.134002685546875 73.82220458984375,45.2298583984375 68.211669921875,49.134002685546875 70.19097900390625,42.59161376953125 64.74417114257812,38.462127685546875 71.5780029296875,38.3228759765625 73.82220458984375,31.8665771484375 76.06640625,38.3228759765625 "
						stroke="#e8e8e8" />
                        <path
						d="m47.43717,43.67794c-1.93213,-0.49785 -3.58529,-1.84362 -4.43312,-3.60881c-0.52193,-1.08668 -0.63956,-1.62974 -0.64096,-2.95918c-0.00144,-1.36472 0.11812,-1.90278 0.67325,-3.02978c0.85372,-1.73317 2.29987,-2.94333 4.18747,-3.50414c1.02738,-0.30524 2.54265,-0.32584 3.58453,-0.04874c1.39741,0.37167 2.68876,1.20758 3.5669,2.30892c1.49643,1.87678 1.89817,4.307 1.08967,6.59171c-0.31063,0.87781 -0.70391,1.51853 -1.37075,2.2332c-0.98322,1.05374 -2.02172,1.67715 -3.36348,2.0191c-0.90615,0.23094 -2.39238,0.22991 -3.2935,-0.00228l0,0l-0.00001,0zm6.1449,10.03178c0,-1.52556 -0.02033,-2.77374 -0.04517,-2.77374c-0.07227,0 -3.02728,2.48548 -3.02728,2.54626c0,0.07828 2.92909,3.00122 3.00753,3.00122c0.03571,0 0.06493,-1.24818 0.06493,-2.77374l0,0l-0.00001,0zm-1.06287,11.71372c0.41045,-0.47118 0.7779,-1.25259 0.93661,-1.99176c0.09831,-0.45787 0.11588,-0.95298 0.07848,-2.21152l-0.04819,-1.62157l-4.41134,-4.36701c-3.84383,-3.80521 -4.41867,-4.34321 -4.46835,-4.18195c-0.03136,0.10179 -0.03999,1.78642 -0.01918,3.74362l0.03783,3.55855l3.73172,3.715c2.05245,2.04325 3.75753,3.71598 3.78908,3.71719c0.03155,0.0012 0.19954,-0.16104 0.37333,-0.36054l0,0l0.00001,-0.00001zm-2.76195,1.59876c0.07226,-0.02773 -0.85349,-1.01119 -2.48886,-2.64404c-2.05999,-2.0568 -2.61614,-2.56904 -2.66245,-2.45222c-0.10735,0.2708 -0.07218,1.22614 0.06467,1.75692c0.39724,1.54073 1.67631,2.83805 3.20287,3.24858c0.44884,0.12071 1.65435,0.17878 1.88377,0.09075l0,0l0,0.00001zm-1.92159,2.21829c-2.51049,-0.47574 -4.47544,-2.27175 -5.27652,-4.82287l-0.20005,-0.63709l0,-6.74232c0,-6.28938 0.01049,-6.77672 0.15614,-7.2544c0.75248,-2.4678 2.44173,-4.16661 4.81106,-4.83826c0.95311,-0.27018 2.60248,-0.26862 3.56256,0.00338c2.30846,0.65401 4.08539,2.42936 4.75859,4.75437l0.1963,0.67794l0,6.65698l0,6.65698l-0.1963,0.67794c-0.38921,1.34421 -1.21573,2.61148 -2.25954,3.46447c-0.63848,0.52176 -1.85996,1.13594 -2.62224,1.3185c-0.82194,0.19684 -2.13672,0.23472 -2.93,0.08439l0,0l0,-0.00001z"
						fill="#c4b4b4" id="svg_26" stroke="#d3d3d3"
						stroke-dasharray="null" stroke-linecap="null"
						stroke-linejoin="null" />
                    </g>
                </g>
                <g class="layer">
                    <title>Layer 1</title>
                    <g id="svg_14">
                        <polygon fill="#f0dd92" id="svg_1"
						points="86.01275634765625,54.5 59.401092529296875,91.1278076171875 16.342529296875,77.13723754882812 16.342529296875,31.862762451171875 59.401092529296875,17.8721923828125 86.01275634765625,54.5 "
						stroke="#f2e5b5" transform="rotate(54.3036 51.178 54.5)" />
                        <polygon fill="#ffff56" id="svg_2"
						points="23.5,32.95477294921875 25.74420166015625,39.411102294921875 32.578033447265625,39.55035400390625 27.1312255859375,43.67987060546875 29.11053466796875,50.22222900390625 23.5,46.318084716796875 17.88946533203125,50.22222900390625 19.8687744140625,43.67987060546875 14.421966552734375,39.55035400390625 21.25579833984375,39.411102294921875 23.5,32.95477294921875 25.74420166015625,39.411102294921875 "
						stroke="#ffffff" />
                        <polygon fill="#ffff56" id="svg_6"
						points="49.5,15.86627197265625 51.74420166015625,22.32257080078125 58.578033447265625,22.46185302734375 53.1312255859375,26.591339111328125 55.11053466796875,33.13372802734375 49.5,29.22955322265625 43.88946533203125,33.13372802734375 45.8687744140625,26.591339111328125 40.421966552734375,22.46185302734375 47.25579833984375,22.32257080078125 49.5,15.86627197265625 51.74420166015625,22.32257080078125 "
						stroke="#ffffff" />
                        <polygon fill="#ffff56" id="svg_8"
						points="73.5,33.86627197265625 75.74420166015625,40.32257080078125 82.57803344726562,40.46185302734375 77.1312255859375,44.591339111328125 79.11053466796875,51.13372802734375 73.5,47.22955322265625 67.88946533203125,51.13372802734375 69.8687744140625,44.591339111328125 64.42196655273438,40.46185302734375 71.25579833984375,40.32257080078125 73.5,33.86627197265625 75.74420166015625,40.32257080078125 "
						stroke="#ffffff" />
                        <path
						d="m37.00204,70.48383c1.45503,-0.01828 -1.38572,-0.08484 -1.88961,-0.12153c-4.21045,-0.1021 -7.70476,-4.28826 -7.24999,-8.44258c0.09209,-4.1571 4.09604,-7.8089 8.26346,-7.39058c1.08478,-0.46081 2.62467,1.05994 3.29819,0.33357c1.72995,-3.0517 3.40609,-6.13528 5.20574,-9.14638c1.53294,-0.2188 3.35921,-0.38793 4.85045,0.0268c0.68942,1.08599 -0.56404,1.38164 -1.34621,1.21399c-0.873,0 -1.746,0 -2.619,0c-0.63199,1.15302 -1.28051,2.29685 -1.92628,3.44218c3.66797,0 7.33594,0 11.0039,0c0.08168,-0.39018 1.00819,-1.23085 0.18679,-1.13947c-1.49231,-0.18809 -0.55881,-1.9128 0.5463,-1.42215c1.55123,0.057 3.15729,-0.15292 4.66197,0.15807c0.80378,1.61314 -1.52029,1.26707 -2.51654,1.28417c-0.73741,-0.24068 -0.89023,0.49649 -1.1822,1.0009c-1.18377,1.21257 -0.44798,2.49055 0.34763,3.67261c0.29183,0.53774 0.49973,1.28407 1.20987,0.78161c1.44814,-0.31822 3.02689,-0.32976 4.46788,0.04233c3.01108,0.89458 5.42534,3.68634 5.62747,6.84881c0.18239,1.94251 -0.23288,3.94477 -1.44199,5.51183c-1.40239,2.00867 -3.67829,3.10855 -6.07257,3.33167m-1.87716,0.01961c-2.18279,-0.56015 -4.19528,-1.86331 -5.36203,-3.83071c-0.76354,-0.98339 -0.86281,-2.50596 -1.26864,-3.49242c-1.07038,-0.014 -2.14076,-0.02801 -3.21113,-0.04201c-2.16792,-3.48754 -4.07876,-7.13494 -6.16998,-10.6711c-0.40764,1.21059 -2.72504,2.85761 -1.44548,3.97198c3.21128,2.6945 3.63892,7.95761 0.89227,11.13021c-1.25873,1.41103 -3.00485,2.3834 -4.79981,2.93306m0.13787,-1.91867c3.46379,-0.75429 5.67722,-4.74814 4.47913,-8.07899c-0.37026,-1.08483 -1.38902,-2.81775 -2.28883,-2.83551c-0.95916,1.65604 -1.82204,3.37138 -2.87326,4.97194c-2.30838,0.40604 -0.19349,-2.40465 0.29495,-3.35973c0.52367,-1.1653 2.42534,-3.05035 0.02974,-3.02244c-1.6818,-0.16736 -3.46909,-0.00552 -4.82959,1.11076c-2.91973,1.93213 -3.47234,6.35134 -1.26125,9.01531c1.49685,1.94074 4.08174,2.76584 6.44911,2.19866l0,0zm24.2348,-0.00048c2.95646,-0.69463 5.08397,-3.73325 4.70129,-6.74901c-0.20239,-3.35151 -3.5448,-6.06203 -6.86774,-5.61156c-2.49002,-0.23566 -0.10612,2.0503 0.2498,3.16162c0.3386,1.18002 2.2039,2.62936 1.16251,3.78013c-2.33572,0.09785 -4.72871,-0.06871 -7.05802,0.1668c0.41836,3.0887 3.34141,5.64372 6.49559,5.40736c0.44265,-0.00361 0.88742,-0.04106 1.31657,-0.15534l0,0zm-9.54192,-6.90269c0.28133,-2.41668 1.65119,-4.61498 3.64901,-5.99047c0.11803,-0.59281 -1.09166,-3.32322 -1.53461,-1.41964c-1.36721,2.48511 -2.74165,4.96688 -4.06697,7.47452c0.6349,0.01536 1.34663,0.12622 1.95257,-0.06441zm7.13667,-0.11986c-0.78813,-1.48163 -1.59376,-2.95436 -2.41753,-4.41647c-1.65251,0.87143 -2.73965,2.71562 -2.99663,4.55634c1.80433,-0.03846 3.63892,0.09428 5.41886,-0.09612l-0.00469,-0.04375l0,0l-0.00001,0zm-7.72954,-5.34421c0.7773,-1.43462 1.56934,-2.86167 2.32263,-4.30903c-3.27552,-0.07343 -6.55848,-0.08952 -9.8329,0.01552c1.68189,2.89058 3.20138,5.89313 5.04035,8.68212c0.88921,-1.36776 1.64442,-2.94245 2.46991,-4.38861l0,0l0.00001,0z"
						fill="#dbdb62" id="svg_15" stroke="#bfbf00"
						stroke-dasharray="null" stroke-linecap="null"
						stroke-linejoin="null" />
                    </g>
                </g>
                <g class="layer">
                    <title>Layer 1</title>
                    <g id="svg_16">
                        <polygon fill="#2b9689" id="svg_18"
						points="87.3349609375,53.500274658203125 60.723297119140625,90.12808227539062 17.66473388671875,76.13751220703125 17.66473388671875,30.863067626953125 60.723297119140625,16.872467041015625 87.3349609375,53.500274658203125 "
						stroke="#7aefc4" transform="rotate(54.3036 52.5 53.5003)" />
                        <polygon fill="#307066" id="svg_19"
						points="25.82220458984375,32.955078125 28.06640625,39.411376953125 34.900238037109375,39.5506591796875 29.45343017578125,43.680145263671875 31.4327392578125,50.2225341796875 25.82220458984375,46.318359375 20.211669921875,50.2225341796875 22.19097900390625,43.680145263671875 16.744171142578125,39.5506591796875 23.5780029296875,39.411376953125 25.82220458984375,32.955078125 28.06640625,39.411376953125 "
						stroke="#ffffff" />
                        <polygon fill="#307066" id="svg_20"
						points="42.82220458984375,23.866546630859375 45.06640625,30.3228759765625 51.900238037109375,30.462127685546875 46.45343017578125,34.59161376953125 48.4327392578125,41.134002685546875 42.82220458984375,37.2298583984375 37.211669921875,41.134002685546875 39.19097900390625,34.59161376953125 33.744171142578125,30.462127685546875 40.5780029296875,30.3228759765625 42.82220458984375,23.866546630859375 45.06640625,30.3228759765625 "
						stroke="#ffffff" />
                        <polygon fill="#307066" id="svg_21"
						points="59.82220458984375,23.866546630859375 62.06640625,30.3228759765625 68.90023803710938,30.462127685546875 63.45343017578125,34.59161376953125 65.4327392578125,41.134002685546875 59.82220458984375,37.2298583984375 54.211669921875,41.134002685546875 56.19097900390625,34.59161376953125 50.744171142578125,30.462127685546875 57.5780029296875,30.3228759765625 59.82220458984375,23.866546630859375 62.06640625,30.3228759765625 "
						stroke="#ffffff" />
                        <polygon fill="#307066" id="svg_22"
						points="75.82220458984375,33.866546630859375 78.06640625,40.3228759765625 84.90023803710938,40.462127685546875 79.45343017578125,44.59161376953125 81.4327392578125,51.134002685546875 75.82220458984375,47.2298583984375 70.211669921875,51.134002685546875 72.19097900390625,44.59161376953125 66.74417114257812,40.462127685546875 73.5780029296875,40.3228759765625 75.82220458984375,33.866546630859375 78.06640625,40.3228759765625 "
						stroke="#ffffff" />
                        <path
						d="m49.57886,41.83089c-0.31815,0 -0.60121,0.14338 -0.84004,0.40346c-0.23863,0.25986 -0.43601,0.63223 -0.60025,1.09727c-0.32845,0.92996 -0.53049,2.23633 -0.641,3.80084c-0.1103,1.5615 -0.12889,3.37972 -0.08306,5.32608c-3.92999,1.76997 -11.90074,5.42449 -12.54104,6.24046c-0.85248,1.08638 -0.57705,2.33143 -0.23352,3.15795l13.10367,-2.92794c0.27698,3.81561 0.67081,7.59476 1.014,10.55602c-1.28146,0.41173 -3.67353,1.22471 -4.16728,1.72885c-0.68019,0.69449 -0.68018,2.93735 -0.68018,2.93735l5.36309,-0.47887c0.12631,0.96678 0.20531,1.53089 0.20531,1.53089l0.00784,0.0509l0.04232,0l0.09873,0l0.04232,0l0.00784,-0.0509c0,0 0.07884,-0.56412 0.2053,-1.53089l5.36466,0.47887c0,0 0.00001,-2.24285 -0.68018,-2.93735c-0.49394,-0.50433 -2.88775,-1.31916 -4.16885,-1.73075c0.34248,-2.95217 0.73562,-6.71687 1.01244,-10.52018l12.95009,2.89399c0.34352,-0.82652 0.62054,-2.07157 -0.23195,-3.15795c-0.63238,-0.80588 -8.41052,-4.37911 -12.38902,-6.1726c0.04754,-1.97159 0.03006,-3.81459 -0.0815,-5.39395l0,-0.00377c-0.11057,-1.56278 -0.31283,-2.86789 -0.641,-3.79707c-0.1642,-0.46491 -0.35997,-0.83732 -0.59868,-1.09727c-0.23883,-0.26008 -0.52189,-0.40346 -0.84004,-0.40346l-0.00001,0l-0.00001,0.00002z"
						fill="#5dd396" id="svg_10" stroke="#51bf3b"
						stroke-dasharray="null" stroke-linecap="null"
						stroke-linejoin="null" transform="rotate(70.2367 49.501 58.5425)" />
                    </g>
                </g>
                <g class="layer">
                    <title>Layer 1</title>
                    <g id="svg_17">
                        <path
						d="m15.89494,49.05263l15.25,-33.99874l40.66667,0l15.25,33.99874l-15.25,33.99874l-40.66667,0l-15.25,-33.99874z"
						fill="#598be0" id="svg_40" stroke="#f0f0f0"
						stroke-dasharray="null" stroke-linecap="null"
						stroke-linejoin="null" transform="rotate(90.4659 51.478 49.0526)" />
                        <polygon fill="#3590ea" id="svg_42"
						points="30.5,26.86627197265625 32.74420166015625,33.322601318359375 39.5780029296875,33.46185302734375 34.1312255859375,37.59136962890625 36.11053466796875,44.13372802734375 30.5,40.229583740234375 24.88946533203125,44.13372802734375 26.8687744140625,37.59136962890625 21.4219970703125,33.46185302734375 28.25579833984375,33.322601318359375 30.5,26.86627197265625 32.74420166015625,33.322601318359375 "
						stroke="#ffffff" />
                        <polygon fill="#3590ea" id="svg_44"
						points="50.5,17.86627197265625 52.74420166015625,24.322601318359375 59.5780029296875,24.46185302734375 54.1312255859375,28.59136962890625 56.11053466796875,35.13372802734375 50.5,31.229583740234375 44.88946533203125,35.13372802734375 46.8687744140625,28.59136962890625 41.4219970703125,24.46185302734375 48.25579833984375,24.322601318359375 50.5,17.86627197265625 52.74420166015625,24.322601318359375 "
						stroke="#ffffff" />
                        <polygon fill="#3590ea" id="svg_45"
						points="69.5,25.86627197265625 71.74420166015625,32.322601318359375 78.5780029296875,32.46185302734375 73.1312255859375,36.59136962890625 75.11053466796875,43.13372802734375 69.5,39.229583740234375 63.88946533203125,43.13372802734375 65.8687744140625,36.59136962890625 60.4219970703125,32.46185302734375 67.25579833984375,32.322601318359375 69.5,25.86627197265625 71.74420166015625,32.322601318359375 "
						stroke="#ffffff" />
                        <polygon fill="#3590ea" id="svg_46"
						points="35.5,56.86627197265625 37.74420166015625,63.322601318359375 44.5780029296875,63.46185302734375 39.1312255859375,67.59136962890625 41.11053466796875,74.13372802734375 35.5,70.22958374023438 29.88946533203125,74.13372802734375 31.8687744140625,67.59136962890625 26.4219970703125,63.46185302734375 33.25579833984375,63.322601318359375 35.5,56.86627197265625 37.74420166015625,63.322601318359375 "
						stroke="#ffffff" />
                        <polygon fill="#3590ea" id="svg_47"
						points="67.5,55.86627197265625 69.74420166015625,62.322601318359375 76.5780029296875,62.46185302734375 71.1312255859375,66.59136962890625 73.11053466796875,73.13372802734375 67.5,69.22958374023438 61.88946533203125,73.13372802734375 63.8687744140625,66.59136962890625 58.4219970703125,62.46185302734375 65.25579833984375,62.322601318359375 67.5,55.86627197265625 69.74420166015625,62.322601318359375 "
						stroke="#ffffff" />
                        <path
						d="m37.32249,45.41735l14.34998,-11.07699l14.35001,11.07699l-5.48119,17.92302l-17.73759,0l-5.48121,-17.92302z"
						fill="#8cb8f2" id="svg_48" stroke="#aacded"
						stroke-dasharray="null" stroke-linecap="null"
						stroke-linejoin="null" />
                        <path
						d="m45.64,49.3125l6,-11l6,11l-6,11l-6,-11zm0,0l12,0"
						fill="#e3f2f9" id="svg_58" stroke="#ffffff"
						stroke-dasharray="null" stroke-linecap="null"
						stroke-linejoin="null" />
                    </g>
                </g>


            </svg>
				<div id="tierIng">
					<div id="length"></div>
					<label id="startLength">0km</label>
					<div id="tierImg">
						<label><img src="/img/bicycle.gif" width="75px"
							height="75px">45km</label>
					</div>
					<label id="endLength">100km</label>
				</div>
				<a href="" id="tierReward">티어 보상?</a>
				<p id="nextTier">다음 등급까지</p>
			</div>
			<div class="contentBox">
				<h3 class="text1">북마크 및 좋아요</h3>
				<div class="bar2"></div>
				<span class="menuBtn"> <a href="" class="btn2 on"
					id="bookmark">북마크</a> <a href="" class="btn2" id="like">좋아요</a>
				</span>
				<div id="bookmarkList" class="on2">
					<ul>

						<li class="bookmarkList_li contentlist"><img class="photo"
							src="/img/광1.jpg" /> <span class="text2">부산 광안리 사전답사 요청합니다
						</span> <span class="text3">부산 광안대교 근처 횟집을 사전답사 부탁드립니다</span> <i
							class="fas fa-times removeBookmark"></i></li>
						<li class="bookmarkList_li contentlist"><img class="photo"
							src="/img/인1.jpg" /> <span class="text2">강사님집 사전답사 부탁드립니다.
						</span> <span class="text3">서울 인사동 한국문화체험 할만한 곳 사전답사 부탁드립니다</span> <i
							class="fas fa-times removeBookmark"></i></li>

					</ul>
				</div>
				<div id="likeList">
					<ul>
						<li class="likeList_li contentlist"><img class="photo2"
							src="/img/참치1.jpg" /> <span class="text22">新 참치 </span> <span
							class="text33">너무 비싼데 맛있어서 3점</span> <i
							class="fas fa-times removeLike"></i></li>

					</ul>
				</div>
			</div>
			<!-- contentbox end-->
			<div class="writeReview ">
				<div id="reviewWrapbox">
					<ul class="reviewTab">
						<li class="on3"><a href="" class="myreviewBtn" id="all">전체</a></li>
						<li><a href="" class="myreviewBtn" id="room">숙소</a></li>
						<li><a href="" class="myreviewBtn" id="restaurant">음식점</a></li>
						<li><a href="" class="myreviewBtn" id="culture">관광지</a></li>
					</ul>
					<div id="bar2"></div>
				</div>
				<div id="allWrap">
					<ul>
						<li class="card_one"><img src="/img/참치1.jpg" class="cardPhoto">
							<div class="blah">新 참치</div>
							<div class="box_grade">
								<div class="star_grade"></div>
								<div class="box_btn">
									<button class="btn_grade"></button>
									<button class="btn_grade"></button>
									<button class="btn_grade"></button>
									<button class="btn_grade"></button>
									<button class="btn_grade"></button>
								</div>
								<div class="blah">너무 비싼데 맛있어서 3점</div>
							</div></li>
						<!-- 
                    <li class="card_two">
                        <img src="img/분1.jpg" class="cardPhoto">
                        <div class="blah">분짜하노이</div>
                        <div class="box_grade">
                            <div class="star_grade"></div>
                            <div class="box_btn">
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                            </div>
                            <div class="blah">관악구 쌀국수 맛집</div>
                        </div>
                    </li>
                    <li class="card_three">
                        <img src="img/신1.jpg" class="cardPhoto">
                        <div class="blah">신라호텔</div>
                        <div class="box_grade">
                            <div class="star_grade"></div>
                            <div class="box_btn">
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                            </div>
                            <div class="blah">대한민국 특급호텔</div>
                        </div>
                    </li>
                    -->
					</ul>
				</div>

				<div id="roomWrap">
					<ul>
						<!-- 
                    <li class="card_one">
                        <img src="img/jul.jpg" class="cardPhoto">
                        <div class="blah">JMT</div>
                        <div class="box_grade">
                            <div class="star_grade"></div>
                            <div class="box_btn">
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                            </div>
                            <div class="blah">하하 별로</div>
                        </div>
                    </li>
                    <li class="card_two">
                        <img src="img/jul.jpg" class="cardPhoto">
                        <div class="blah">JMT</div>
                        <div class="box_grade">
                            <div class="star_grade"></div>
                            <div class="box_btn">
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                            </div>
                            <div class="blah">하하 별로</div>
                        </div>
                    </li>
                    <li class="card_three">
                        <img src="img/jul.jpg" class="cardPhoto">
                        <div class="blah">JMT</div>
                        <div class="box_grade">
                            <div class="star_grade"></div>
                            <div class="box_btn">
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                            </div>
                            <div class="blah">하하 별로</div>
                        </div>
                    </li>
                     -->
					</ul>
				</div>
				<div id="restaurentWrap">
					<ul>
						<li class="card_one"><img src="img/참치1.jpg" class="cardPhoto">
							<div class="blah">新 참치</div>
							<div class="box_grade">
								<div class="star_grade"></div>
								<div class="box_btn">
									<button class="btn_grade"></button>
									<button class="btn_grade"></button>
									<button class="btn_grade"></button>
									<button class="btn_grade"></button>
									<button class="btn_grade"></button>
								</div>
								<div class="blah">너무 비싼데 맛있어서 3점</div>
							</div></li>
						<!-- 
                    <li class="card_two">
                        <img src="img/jul4.jpg" class="cardPhoto">
                        <div class="blah">JMT</div>
                        <div class="box_grade">
                            <div class="star_grade"></div>
                            <div class="box_btn">
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                            </div>
                            <div class="blah">하하 별로</div>
                        </div>
                    </li>
                    <li class="card_three">
                        <img src="img/jul4.jpg" class="cardPhoto">
                        <div class="blah">JMT</div>
                        <div class="box_grade">
                            <div class="star_grade"></div>
                            <div class="box_btn">
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                            </div>
                            <div class="blah">하하 별로</div>
                        </div>
                    </li>
                     -->
					</ul>
				</div>
				<div id="cultureWrap">
					<ul>
						<!-- 
                    <li class="card_one">
                        <img src="img/jul3.jpg" class="cardPhoto">
                        <div class="blah">JMT</div>
                        <div class="box_grade">
                            <div class="star_grade"></div>
                            <div class="box_btn">
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                            </div>
                            <div class="blah">하하 별로</div>
                        </div>
                    </li>
                    <li class="card_two">
                        <img src="img/jul3.jpg" class="cardPhoto">
                        <div class="blah">JMT</div>
                        <div class="box_grade">
                            <div class="star_grade"></div>
                            <div class="box_btn">
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                            </div>
                            <div class="blah">하하 별로</div>
                        </div>
                    </li>
                    <li class="card_three">
                        <img src="img/jul3.jpg" class="cardPhoto">
                        <div class="blah">JMT</div>
                        <div class="box_grade">
                            <div class="star_grade"></div>
                            <div class="box_btn">
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                                <button class="btn_grade"></button>
                            </div>
                            <div class="blah">하하 별로</div>
                        </div>
                    </li>
                     -->
					</ul>
				</div>
			</div>
			<!--myreviewEnd -->
			<div class="findingSight">
				<div id="f_s_Wrapbox">
					<ul class="f_s_reviewTab">
						<li class="on3"><a href="" class="f_s_myreviewBtn"
							id="f_s_all">전체</a></li>
						<li><a href="" class="f_s_myreviewBtn" id="f_s_room">숙소</a></li>
						<li><a href="" class="f_s_myreviewBtn" id="f_s_restaurant">음식점</a></li>
						<li><a href="" class="f_s_myreviewBtn" id="f_s_culture">관광지</a></li>
					</ul>
					<div id="f_s_bar2"></div>
				</div>
				<div id="f_s_allWrap">
					<ul>
						<li class="f_s_card_one"><img src="/img/경1.jpg"
							class="f_s_cardPhoto">
							<div class="f_s_blah">경복궁</div>
							<div class="f_s_blah">서울/종로구</div> <i class="fas fa-heart"></i><span>
								333</span></li>
					</ul>
				</div>

				<div id="f_s_roomWrap">
					<ul>아직 내역이 존재하지 않습니다.
					</ul>
				</div>
				<div id="f_s_restaurentWrap">
					<ul>아직 내역이 존재하지 않습니다.
					</ul>
				</div>
				<div id="f_s_cultureWrap">
					<ul>
						<li class="f_s_card_one"><img src="img/경1.jpg"
							class="f_s_cardPhoto">
							<div class="f_s_blah">경복궁</div>
							<div class="f_s_blah">서울/종로구</div> <i class="fas fa-heart"></i><span>
								333</span></li>

					</ul>
				</div>
			</div>
			<!--findingSightEnd -->

			<div class="fundWrap">
				<h3 class="fundText1">펀딩 내역</h3>
				<div class="fundBar"></div>
				<span class="menuBtn"> <a href="" class="btn2 on"
					id="myFunding">내가 쓴 펀딩</a> <a href="" class="btn2" id="mySpon">후원한
						펀딩 목록</a> <a href="" id="writeFunding"><i
						class="far fa-plus-square"></i> 펀딩 작성</a>
				</span> <select id="order">
					<option>전체보기</option>
				</select>
				<div id="myFundingWrap">
					<div class="List">
						<ul>
							<li class="list">
								<div class="fundPhoto">
									<img src="/img/강1.jpg" width="140" height="140">
								</div>
								<div class="fundText2">[진행중] 펭귄보러 강릉가기</div>
								<div class="fundText3">ㄱㄱ?</div>
								<div class="fundText4">후원금액 : 50,000,000 (50%)</div>
								<div class="fundText5">후원 인원 : 1명</div>
								<div class="deadlinewrap">
									<p class="deadline">
										마감까지</br> 1일
									</p>
								</div>
								<div class="text6">2018.11.16</div>
							</li>

						</ul>
					</div>
				</div>
				<div id="mySponWrap">
					<div class="List">
						<ul>
							<li class="list">
								<div class="fundPhoto">
									<img src="/img/제1.jpg" width="140" height="140">
								</div>
								<div class="fundText2">[완료] sdf</div>
								<div class="fundText3">sdf</div>
								<div class="fundText4">후원금액 : 2,000 (900%)</div>
								<div class="fundText5">후원 인원 : 3명</div>
								<div class="deadlinewrap">
									<p class="deadline">
										마감까지</br> 0일
									</p>
								</div>
								<div class="text6">2018.11.3</div>
							</li>

						</ul>
					</div>
				</div>
			</div>
			<!--funding end-->
			<div class="preWrap">
				<h3 class="preText1">사전답사 신청 내역</h3>
				<div class="preBar"></div>
				<span class="menuBtn"> <a href="" class="btn2 on"
					id="mywrite">내가 쓴 게시물</a> <a href="" class="btn2" id="myrequest">내가
						신청한 게시물</a>
				</span>
				<div id="myWriteList">
					<ul>
						<li class="writeList"><span><i class="fas fa-circle"></i>강사님집
								사전답사좀요</span>
							<div class="infoBox">
								<div class="detail writePhoto">
									<img src="/img/defaultimg.png" width="50" height="50">
								</div>
								<a href="" class="detail writeNickName">아카나무</a> <a href=""
									class="detail writeBan"><i class="fas fa-ban"></i>신고하기</a> <a
									href="" class="detail writeKakao">오픈카톡</a> <a href=""
									class="detail writeMessage">메세지함</a> <a href=""
									class="detail writeComplete">답사완료</a>
							</div></li>
					</ul>
				</div>
				<div id="applyList">
					<ul>


					</ul>
				</div>
			</div>
			<!--사전답사 끝-->
			<div class="p_Wrap">
				<h3 class="preText1">여행플랜 신청 내역</h3>
				<div class="preBar"></div>
				<span class="menuBtn"> <a href="" class="btn2 on"
					id="p_mywrite">내가 쓴 게시물</a> <a href="" class="btn2"
					id="p_myrequest">내가 신청한 게시물</a>
				</span>
				<div id="p_myWriteList">
					<ul>
						<li class="p_writeList"><span><i class="fas fa-circle"></i>
								제주도 동쪽지역 여행플랜 부탁드립니다.</span>
							<div class="p_infoBox">
								<div class="detail p_writePhoto">
									<img src="img/tom.jpg" width="50" height="50">
								</div>
								<a href="" class="detail p_writeNickName">이동규</a> <a href=""
									class="detail p_writeBan"><i class="fas fa-ban"></i>신고하기</a> <a
									href="" class="detail p_writeKakao">오픈카톡</a> <a href=""
									class="detail p_writeMessage">메세지함</a> <a href=""
									class="detail p_writeSelect"">채택하기</a> <a href=""
									class="detail p_writeComplete">답사완료</a>
							</div></li>
					</ul>
				</div>
				<div id="p_applyList">
					<ul>
						<li class="p_List">서울여행플랜 계획 부탁드립니다.</li>

					</ul>
				</div>
			</div>
			<!--여행플랜 끝-->
			<div class="d_wrap">
				<h3 class="d_text1">작성한 여행기</h3>
				<div class="prebar"></div>
				<span class="menuBtn"> <a href="" id="writeDiary"><i
						class="far fa-plus-square"></i> 새 일정 만들기</a>
				</span> <select id="d_order">
					<option>전체보기</option>
				</select>
				<div idl="ist" data-num="0">
					<ul class="title">
						<div class="more">...</div>
						<button class="wordSign">...</button>
						<div class="clickMore">
							<div class="popupAux"></div>
							<ul class="clickMoreList">
								<li class="udt"><a href="#">수정</a></li>
								<li class="del"><a href="#">삭제</a></li>
							</ul>
						</div>
						<li class="d_list">
							<div class="d_photo">
								<img src="/img/에2.jpg" width="140" height="140" />
							</div>
							<h2 class="d_text2">환상의 나라 에버랜드로~</h2>
							<div class="d_text3">에버랜드에서 즐기는 재밌는 어트랙션</div>
						</li>
					</ul>
					<ul class="diaryList" style="width: 290px">
						<li class="diary firstList">
							<div class="border"></div>
							<div class="circle">에버랜드</div>
						</li>
						<li class="diary">
							<div class="border"></div>
							<div class="circle">동물원</div>
						</li>
						<li class="diary">
							<div class="border"></div>
							<div class="circle">캐리비안 베이</div>
						</li>
					</ul>
					<!-- 
                <ul class="title">
                    <div class="more">...</div>
                    <button class="wordSign">...</button>
                    <div class="clickMore">
                        <div class="popupAux"></div>
                        <ul class="clickMoreList">
                            <li class="udt"><a href="#">수정</a></li>
                            <li class="del"><a href="#">삭제</a></li>
                        </ul>
                    </div>
                    <!-- 
                    <li class="d_list">
                        <div class="d_photo"></div>
                        <h2 class="d_text2">환상의 나라 에버랜드로~</h2>
                        <div class="d_text3">모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저
                            즐기자모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저 즐기자모든 수상레저
                            즐기자
                        </div>
                    </li>
                    
                </ul>
                <ul class="diaryList" style="width:290px">
                    <li class="diary firstList">
                        <div class="border"></div>
                        <div class="circle">에버랜드zzz</div>
                    </li>
                    <li class="diary">
                        <div class="border"></div>
                        <div class="circle">롯데월드</div>
                    </li>
                    <li class="diary">
                        <div class="border"></div>
                        <div class="circle">서울랜드</div>
                    </li>
                     -->
					</ul>
				</div>
			</div>
			<!--작성한 여행기 끝-->
		</div>
		<div class="mainPopup"></div>
		<!--팝업 배경 불투명-->
		<!--추가 팝업 -->
		<div id="addWorkBoxPopup" style="overflow: scroll">
			<ul id="addContents">
				<li class="selectBox"><a href=""><img src="/img/jul.jpg"
						width="200" height="200"></a></li>
				<li class="selectBox"><a href=""><img src="/img/jul.jpg"
						width="200" height="200"></a></li>
				<li class="selectBox"><a href=""><img src="/img/jul.jpg"
						width="200" height="200"></a></li>
				<li class="selectBox"><a href=""><img src="/img/jul.jpg"
						width="200" height="200"></a></li>
				<li class="selectBox"><a href=""><img src="/img/jul.jpg"
						width="200" height="200"></a></li>
				<li class="selectBox"><a href=""><img src="/img/jul.jpg"
						width="200" height="200"></a></li>
				<li class="selectBox"><a href=""><img src="/img/jul.jpg"
						width="200" height="200"></a></li>
				<li class="selectBox"><a href=""><img src="/img/jul.jpg"
						width="200" height="200"></a></li>
				<li class="selectBox"><a href=""><img src="/img/jul.jpg"
						width="200" height="200"></a></li>
			</ul>
			<div id="boxPopup">
				<ul id="contents">
					<li class="imgSelectBox"><img src="/img/jul.jpg" width="700"
						height="700"></li>
				</ul>
			</div>
			<!--addWorkBoxPopupp end-->
		</div>
		<!--addWorkBoxPopupp end-->
		<div id="pre_Wrap">
			<div id="pre_Popup">
				<div id="pre_Text1">사전답사 완료!</div>
				<div id="pre_Text2">
					잠깐! 이사람과의 사전답사가 전부 종료된 것인지</br> 반드시 확인 후 완료해 주세요!
				</div>
				<div id="pre_Text3">평가 해 주세요~</div>
				<div class="pre_box_grade">
					<div class="pre_star_grade"></div>
					<div class="pre_box_btn">
						<button class="pre_btn_grade"></button>
						<button class="pre_btn_grade"></button>
						<button class="pre_btn_grade"></button>
						<button class="pre_btn_grade"></button>
						<button class="pre_btn_grade"></button>
					</div>
				</div>
				<button id="pre_Close">
					<i class="far fa-times-circle"></i>
				</button>
				<button id="pre_Complete">완료하기</button>
			</div>
		</div>
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
	<script src="/js/profilePopup.js"></script>
	<script>
		var $li = $("#menuBox ul")
		// var $body = $("body");

		$(".pre_btn_grade").click(function() {
			var idx = $(this).index();
			//alert(idx);
			$(".pre_star_grade").css("width", (idx + 1) * 41.2);
		});
		$(".wordSign").click(function() {
			//alert("d");
			// $(".wordSign").removeClass("show");
			$(this).toggleClass("show");
		});

		$(".popupAux").click(function() {
			$(".wordSign").removeClass("show");
		})
		$(".btn2").click(function(e) {
			e.preventDefault()
			$(".on").removeClass("on");
			$(this).addClass("on");
		});

		$("#bookmark").click(function() {
			$("#bookmarkList").css("display", "block");
			$("#likeList").css("display", "none");
		});

		$("#like").click(function() {
			$("#likeList").css("display", "block");
			$("#bookmarkList").css("display", "none");
		});

		$("#myFunding").click(function() {
			$("#myFundingWrap").css("display", "block");
			$("#mySponWrap").css("display", "none");
		});
		$("#mySpon").click(function() {
			$("#mySponWrap").css("display", "block");
			$("#myFundingWrap").css("display", "none");
		});

		$("#mywrite").click(function() {
			$("#myWriteList").css("display", "block");
			$("#applyList").css("display", "none");
		});
		$("#myrequest").click(function() {
			$("#applyList").css("display", "block");
			$("#myWriteList").css("display", "none");
		});
		$("#p_mywrite").click(function() {
			$("#p_myWriteList").css("display", "block");
			$("#p_applyList").css("display", "none");
		});
		$("#p_myrequest").click(function() {
			$("#p_applyList").css("display", "block");
			$("#p_myWriteList").css("display", "none");
		});

		$("#menuBox li:nth-child(1)").click(function() {
			$(".writeReview").hide();
			$(".contentBox").hide();
			$(".fundWrap").hide();
			$(".preWrap").hide();
			$(".p_Wrap").hide();
			$(".d_wrap").show()
			$(".findingSight").hide();
		});
		$("#menuBox li:nth-child(2)").click(function() {
			// alert("2");
			$(".writeReview").hide();
			$(".contentBox").hide();
			$(".fundWrap").hide();
			$(".preWrap").hide();
			$(".p_Wrap").hide();
			$(".d_wrap").hide()
			$(".findingSight").show();
			$(".f_s_myreviewBtn").click(function(e) {
				e.preventDefault()
				$(".on3").removeClass("on3");
				$(this).parent().addClass("on3");
			});
			$("#f_s_all").click(function(e) {
				e.preventDefault();
				$("#f_s_allWrap").css("display", "block");
				$("#f_s_roomWrap").css("display", "none");
				$("#f_s_restaurentWrap").css("display", "none");
				$("#f_s_cultureWrap").css("display", "none");

			});
			$("#f_s_room").click(function(e) {
				e.preventDefault();
				$("#f_s_allWrap").css("display", "none");
				$("#f_s_roomWrap").css("display", "block");
				$("#f_s_restaurentWrap").css("display", "none");
				$("#f_s_cultureWrap").css("display", "none");

			});
			$("#f_s_restaurant").click(function() {
				$("#f_s_allWrap").css("display", "none");
				$("#f_s_roomWrap").css("display", "none");
				$("#f_s_restaurentWrap").css("display", "block");
				$("#f_s_cultureWrap").css("display", "none");

			});
			$("#f_s_culture").click(function() {
				$("#f_s_allWrap").css("display", "none");
				$("#f_s_roomWrap").css("display", "none");
				$("#f_s_restaurentWrap").css("display", "none");
				$("#f_s_cultureWrap").css("display", "block");

			});
		});
		$("#menuBox li:nth-child(3)").click(function() {
			// alert("3");
			$(".writeReview").show();
			$(".findingSight").hide();
			$(".contentBox").hide();
			$(".fundWrap").hide();
			$(".preWrap").hide();
			$(".p_Wrap").hide();
			$(".d_wrap").hide()
			$(".myreviewBtn").click(function(e) {
				e.preventDefault()
				$(".on3").removeClass("on3");
				$(this).parent().addClass("on3");
			});
			$("#all").click(function() {
				$("#allWrap").css("display", "block");
				$("#roomWrap").css("display", "none");
				$("#restaurentWrap").css("display", "none");
				$("#cultureWrap").css("display", "none");

			});
			$("#room").click(function() {
				$("#allWrap").css("display", "none");
				$("#roomWrap").css("display", "block");
				$("#restaurentWrap").css("display", "none");
				$("#cultureWrap").css("display", "none");

			});
			$("#restaurant").click(function() {
				$("#allWrap").css("display", "none");
				$("#roomWrap").css("display", "none");
				$("#restaurentWrap").css("display", "block");
				$("#cultureWrap").css("display", "none");

			});
			$("#culture").click(function() {
				$("#allWrap").css("display", "none");
				$("#roomWrap").css("display", "none");
				$("#restaurentWrap").css("display", "none");
				$("#cultureWrap").css("display", "block");

			});
		});

		$("#menuBox li:nth-child(4)").click(function() {
			// alert("4");
			$(".writeReview").hide();
			$(".findingSight").hide();
			$(".contentBox").hide();
			$(".fundWrap").hide();
			$(".preWrap").show();
			$(".p_Wrap").hide();
			$(".d_wrap").hide()
		});
		$("#menuBox li:nth-child(5)").click(function() {
			$(".writeReview").hide();
			$(".findingSight").hide();
			$(".contentBox").hide();
			$(".fundWrap").hide();
			$(".preWrap").hide();
			$(".p_Wrap").show();
			$(".d_wrap").hide()
		});
		$("#menuBox li:nth-child(6)").click(function() {
			// alert("6");
			$(".writeReview").hide();
			$(".findingSight").hide();
			$(".contentBox").hide();
			$(".fundWrap").show();
			$(".preWrap").hide();
			$(".p_Wrap").hide();
			$(".d_wrap").hide()
		});
		$("#menuBox li:nth-child(7)").click(function() {
			// alert("7");
			$(".writeReview").hide();
			$(".findingSight").hide();
			$(".contentBox").show();
			$(".fundWrap").hide();
			$(".preWrap").hide();
			$(".p_Wrap").hide();
			$(".d_wrap").hide()
		});
		$(".removeBookmark").click(function() {
			$(this).parent().remove();
		});
		$(".removeLike").click(function() {
			$(this).parent().remove();
		});
		$(".writeComplete").click(function(e) {
			e.preventDefault();
			$("#pre_Wrap").show();
		});
		$("#pre_Close").click(function() {
			$("#pre_Wrap").hide();
		})
		$("#pre_Complete").click(function() {
			$("#pre_Wrap").hide();
		})
		$("#bt3").click(function(e) {
			e.preventDefault();
			$(".mainPopup").show();
			$("#addWorkBoxPopup").show();
		});

		$(".mainPopup").click(function(e) {
			e.preventDefault();
			$(".mainPopup").hide();
			$("#addWorkBoxPopup").hide();
			$("#boxPopup").hide();

		});
		$(".selectBox img").on("click", function(e) {
			e.preventDefault();
			$("#boxPopup").show();
		});

		$("#menuBox li").click(function() {
			// alert(1);
			// e.preventDefault()
			$(".menuon").removeClass("menuon");
			$(this).addClass("menuon");
		})
	</script>
</body>
</html>