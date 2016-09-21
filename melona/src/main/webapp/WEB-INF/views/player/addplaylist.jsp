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
	input {margin-top: 10px }
	label {margin-top: 20px }
</style>
<title>Melona</title>
</head>
<body>
	<div class="container">
		<div id="top">
			<%@ include file="../melona/menu.jsp"%>
		</div>
	</div>	
	
	<div class="container">
		<div class="col-sm-4"></div>
		<div class="well col-sm-4">
			<h3>플레이리스트 만들기</h3>
			<form role="form" method="post" action="addplaylist.do">
				<div class="form-group">
					<label>리스트명</label>
					<input type="text" class="form-control" name="name">
				</div>
				<input type="submit" class="btn btn-success" value="확인">
				
			</form>
		</div>
		<div class="col-sm-4"></div>
	</div>
	
	<div id="footer">
		<%@ include file="../melona/bottom.jsp"%>
	</div>
	
</body>
</html>