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
	th {text-align: center; color: #5cb85c; }
	td {text-align: center; }
	table { margin-top: 15px;}
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
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
			
			<div class="row" id="bar">
				<%@ include file="../melona/mymusicbar.jsp"%>
			</div>
			
			<div class="row">
				<span>총 ?개 </span>
				<a href="deleteList.do" class="btn btn-warning">삭제</a>
				<a href="addplaylist.do" class="btn btn-success"><span class="glyphicon glyphicon-headphones"></span> 플레이이스트 만들기</a>
			</div>
						
			<table class="table">
				<thead>
				<colgroup>
					<col width="15%">
					<col width="50%">
					<col width="15%">
					<col width="10%">
					<col width="10%">
				</colgroup>
					<tr>
						<th>no</th>
						<th>플레이리스트 정보</th>
						<th>좋아요</th>
						<th>듣기</th>
						<th>전체다운</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>a</td>
						<td>a</td>
						<td>a</td>
						<td>a</td>
						<td>a</td>
					</tr>
					<tr>
						<td>a</td>
						<td>a</td>
						<td>a</td>
						<td>a</td>
						<td>a</td>
					</tr>
					<tr>
						<td>a</td>
						<td>a</td>
						<td>a</td>
						<td>a</td>
						<td>a</td>
					</tr>
					<tr>
						<td>a</td>
						<td>a</td>
						<td>a</td>
						<td>a</td>
						<td>a</td>
					</tr>
					<tr>
						<td>a</td>
						<td>a</td>
						<td>a</td>
						<td>a</td>
						<td>a</td>
					</tr>
				</tbody>
			</table>
			
		</div>
		<div class="col-sm-1"></div>
	</div>
	
	<div id="footer">
		<%@ include file="../melona/bottom.jsp"%>
	</div>
	
</body>
</html>