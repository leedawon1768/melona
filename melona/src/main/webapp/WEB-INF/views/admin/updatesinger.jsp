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
				<h3 class="panel-title">${singer.name }의 정보 수정</h3>
			</div>
			<form action="updateSinger.do" method="post" enctype="multipart/form-data">
				<div class="panel-body">
					<div class="form-group">
						<label>가수명</label>
						<input type="text" class="form-control" name="name" id="name" value="${singer.name }"/>
					</div>
					<div class="form-group">
						<label>사진</label>
						<input type="file" class="form-control" name="img" id="img" value="${singer.img }">
					</div>
				</div>
			</form>
			<div class="panel-footer text-right">
				<input type="submit" class="btn btn-success" value="수정">
				<a href="main.do" class="btn btn-default">취소</a>
			</div>
		</div>
	</div>
	
	<div id="footer">
		<%@ include file="../melona/bottom.jsp"%>
	</div>
	
</body>
</html>