<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="current_page" value="main" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="resources/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<style type="text/css">
	img.logo-img {width: 200px; height: 200px;}
</style>
<title>Melona</title>
</head>
<body>
	<div class="container">
		<div id="top">
			<%@ include file="../melona/menu.jsp"%>
		</div>
	</div>	
	
	<div>
		<!-- 구현 -->	
		<h1>검색결과페이지!!!</h1>
	</div>
	
	<div id="footer">
		<%@ include file="../melona/bottom.jsp"%>
	</div>
	
</body>
</html>