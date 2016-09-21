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
<style type="text/css">
	img.logo-img {
		width: 200px;
		height: 200px;
	}
	
	img.singer-img, img.album-img {
		width: 250px;
		height: 350px;
	}
	
</style>
<title>Melona</title>
</head>
<body>
	<div class="container">
		<div id="top">
			<%@ include file="../melona/menu.jsp"%>
		</div>

		<div class="row">
			<br>
			<div class="col-sm-1"></div>
			<h2>
				<b>아티스트채널</b>
			</h2>
			<br>
			<div class="col-sm-10">
				<img src="resources/singer_img/${singer.img }.jpg" class="singer-img"/>
				<h3>${singer.name }</h3>
			</div>
			<div class="col-sm-1"></div>
		</div>
		
		<div class="row">
		<hr/>
			<div class="col-sm-1"></div>
			<c:forEach var="album" items="${albumList }" varStatus="loop">
				<div class="col-sm-10">
					<img src="resources/album_jacket/${album.img }.jpg" class="album-img" />
					<p>${album.name }</p>
				</div>
			</c:forEach>

			<div class="col-sm-1"></div>
		</div>
	</div>

	<div id="footer">
		<%@ include file="../melona/bottom.jsp"%>
	</div>
</body>
</html>