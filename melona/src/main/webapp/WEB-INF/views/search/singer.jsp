<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="current_page" value="search" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="resources/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<script src="resources/bootstrap/js/bootstrap.js"></script>
<style type="text/css">
img.logo-img {
	width: 200px;
	height: 200px;
}

img.singer-img, img.album-img {
	width: 250px;
	height: 250px;
}
</style>
<title>Melona</title>
</head>
<body>
	<br>
	<div class="col-sm-1"></div>
	<h4>
		&nbsp;&nbsp;<b>아티스트</b>
	</h4>

	<hr>

	<div class="col-sm-5">
		<img src="resources/singer_img/${singer.img }.jpg" class="singer-img" />
		<h3>${singer.name }</h3>
	</div>
	<div class="col-sm-5"></div>
	<div class="col-sm-1"></div>
</body>
</html>