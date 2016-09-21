<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<a href="addSinger.do" class="btn btn-default"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>
		</h2>
		
		<form class="form-inline pull-right" role="form" method="get" action="searchSinger.do">
			<div class="form-group inner-addon left-addon">
			    <label class="sr-only">검색어</label>
				<input type="text" class="form-control input-sm" name="keyword" value="${param.keyword }" placeholder="가수명을 입력해주세요"/>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-success btn-sm " value="검색"/>
			</div>
		</form>
		<br>
		<div class="btn-group" role="group" aria-label="...">
		  <a href="sortSingerByNo.do" class="btn btn-default btn-sm">번호순</a>
		  <a href="sortSingerByName.do" class="btn btn-default btn-sm">이름순</a>
		</div>
		
		<div class="row">
		<br>
		<!-- 
			Album : no, name, releaseDate(발매일), img, country(발매국가), genre, singer, tracks
			AlbumSinger : Album, Singer
		-->
		<c:forEach var="album" items="${albumList }">
			<div class="col-sm-6 panel panel-default" >
				<div class="col-sm-6">
					<img alt="" src="/resources/album_jacket/${album.name }.jpg" class="img-rounded" width="200px" height="200px" style="margin-top: 25px; margin-bottom: 25px">
				</div>
				<div>
					<dl>
						<dt style="float: left">아티스트</dt><dd>${album.singer }</dd>
						<dt style="float: left">장르</dt><dd>${album.genre }</dd>
						<dt style="float: left">발매일</dt><dd>${album.releaseDate }</dd>
						<dt style="float: left">발매국가</dt><dd>${album.country }</dd>
					</dl>
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