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
		<h2><b>가수</b></h2>
		<br>
		<div class="panel panel-success">
			<div class="panel-heading">
				<label class="panel-title">목록</label>
			</div>
			<div class="panel-body">
				<table class="table table-striped text-center">
					<colgroup>
						<col width="*">
						<col width="*">
						<col width="*">
					</colgroup>
					<thead>
						<tr>
							<th class="text-center">번호</th>
							<th class="text-center">사진</th>
							<th class="text-center">가수명</th>
						</tr>
					</thead>
					<tbody class="text-center">
						<tr>
							<td>g</td>
							<td>g</td>
							<td>g</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="panel-footer text-right">
				<a href="addSinger.do" class="btn btn-success">등록</a>
			</div>
		</div>
	</div>
	
	<div id="footer">
		<%@ include file="../melona/bottom.jsp"%>
	</div>
	
</body>
</html>