<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="current_page" value="main" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="/resources/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="../resources/jquery/jquery.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<style type="text/css">
	img.logo-img {width: 200px; height: 200px;}
</style>
<title>Melona</title>
</head>
<body>
	<div class="container">
		<div id="top">
			<%@ include file="menu.jsp"%>
		</div>
	</div>
	
	<div class="container">
		<br>
		<h2><b>앨범</b>
			<a href="addAlbum.do" class="btn btn-default"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>
		</h2>
		
		<form class="form-inline pull-right" role="form" method="get" action="searchAlbum.do">
			<div class="form-group inner-addon left-addon">
				<label class="sr-only">검색조건</label>
				   	<select class="form-control input-sm" name="opt">
				   		<option>앨범명</option>
				   		<option>가수명</option>
				   	</select>
			    <label class="sr-only">검색어</label>
				<input type="text" class="form-control input-sm" name="keyword" value="${param.keyword }" placeholder="입력해주세요"/>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-success btn-sm " value="검색"/>
			</div>
		</form>
		<br>
		<div class="btn-group" role="group" aria-label="...">
		  <a href="sortAlbumByNo.do" class="btn btn-default btn-sm">번호순</a>
		  <a href="sortAlbumByName.do" class="btn btn-default btn-sm">앨범명순</a>
		  <a href="sortAlbumByReleaseDate.do" class="btn btn-default btn-sm">발매일순</a>
		  
		</div>
		
		<div class="row" style="alig">
		<br>
		<!-- 
			Album : no, name, releaseDate(발매일), img, country(발매국가), genre, singer, tracks
			AlbumSinger : Album, Singer
		-->
		<c:forEach var="album" items="${albumList }">
			<div class="col-sm-6">
				<div class="col-sm-5">
					<img alt="" src="/resources/album_jacket/${album.name }.jpg" class="img-rounded" width="200px" height="200px" style="margin-top: 25px; margin-bottom: 25px">
				</div>
				<div style="margin-left: 250px">
					<br>
					<small><span class="glyphicon glyphicon-music" style="color: green" aria-hidden="true"></span> No.${album.no }</small>
					<p style="font-size: x-large;"><b>${album.name }</b></p>
					<dl style="font-size: medium">
						<dt style="float: left; width: 80px">아티스트</dt>
							<dd>${album.singer.name }</dd>
						<dt style="float: left; width: 80px">장르</dt>
							<dd>${album.genre.name }</dd>
						<dt style="float: left; width: 80px">발매일</dt>
							<dd><fmt:formatDate value="${album.releaseDate }" pattern="yyyy.MM.dd (EE)"/></dd>
						<dt style="float: left; width: 80px">발매국가</dt>
							<dd>${album.country }</dd>
					</dl>
					<a href="updateAlbum.do" class="btn btn-default btn-block">수정</a>
				</div>
			</div>
		</c:forEach>
			
		</div>
	</div>
	
	<div id="footer">
		<%@ include file="../melona/bottom.jsp"%>
	</div>
	
</body>
</html>