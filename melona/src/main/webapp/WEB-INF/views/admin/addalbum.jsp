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
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">앨범 등록</h3>
			</div>
			<form action="addSinger.do" method="post" enctype="multipart/form-data">
				<div class="panel-body">
					<div class="form-group">
						<label>앨범명</label>
						<input type="text" class="form-control" name="name" id="name" placeholder="입력해주세요"/>
					</div>
					<div class="form-group">
						<label>장르</label>
						<select class="form-control" name="genre" id="genre">
						    <option value="" selected="selected">선택해주세요</option>
						    <option value=""></option>
						    <option value=""></option>
						    <option value=""></option>
						    <option value=""></option>
						</select>
					</div>
					<div class="form-group">
						<label>발매일</label>
						<input type="date" class="form-control" name="releaseDate" id="releaseDate"/>
					</div>
					<div class="form-group">
						<label>발매국가</label>
						<select class="form-control" name="country" id="country">
						    <option value="" selected="selected">선택해주세요</option>
						    <option value="korea">한국</option>
						    <option value="japan">일본</option>
						    <option value="china">중국</option>
						    <option value="usa">미국</option>
						    <option value="uk">영국</option>
						</select>
					</div>
					<div class="form-group">
						<label>사진</label>
						<input type="file" class="form-control" name="img" id="img">
					</div>
				</div>
			</form>
			<div class="panel-footer text-right">
				<input type="submit" class="btn btn-success" value="등록">
				<a href="album.do" class="btn btn-default">취소</a>
			</div>
		</div>
	</div>
	
	<div id="footer">
		<%@ include file="../melona/bottom.jsp"%>
	</div>
	
</body>
</html>