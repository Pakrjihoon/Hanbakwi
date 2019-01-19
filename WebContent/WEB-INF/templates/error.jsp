<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원하는 페이지를 찾을 수 없습니다.</title>
<c:import url="/WEB-INF/templates/link.jsp"></c:import>
<link rel="stylesheet" href="/css/header.css" />
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<style>
body {
	height: 100%;
}

#errorContent {
	text-align: center;
}

#errorHeader {
	font-weight: bold;
	font-size: 32px;
	margin-top: 50px; margin-bottom : 50px;
	color: #424242;
	margin-bottom: 20px;
	font-family: 'Jua', sans-serif;
}

#transIndex {
	margin: 20px 0 40px 0;
}

#transIndex #errorLink {
	font-size: 22px;
	text-decoration: none;
	color: #424242;
}

#notFound {
	display: block;
	margin: auto;
}
</style>
</head>
<body>
	<c:import url="/WEB-INF/templates/header.jsp"></c:import>
	<div id="errorContent">
		<h2 id="errorHeader">
			죄송합니다.<br /> 요청하신 페이지를 찾을 수 없습니다.
		</h2>
		<img title="404 NOT FOUND" src="/img/notfound.png" id="notFound">
		<div id="transIndex">
			<a id="errorLink" href="/index">메인 페이지로 이동</a>
		</div>
	</div>
	<c:import url="/WEB-INF/templates/footer.jsp"></c:import>
	<script src="/js/jquery.js"></script>
	<script src="/js/fix-footer.js"></script>
</body>
</html>



