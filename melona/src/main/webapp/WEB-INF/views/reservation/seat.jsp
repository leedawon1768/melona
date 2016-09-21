<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset=UTF-8>
<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<script>
$(document).ready(function() {
	$("button:not('.disabled')").on("click", function() {
		
		if ($(this).hasClass("btn-default")) {
			$(this).removeClass('btn-default').addClass("btn-primary");
		} else {
			$(this).removeClass('btn-primary').addClass("btn-default");
		}
		
		var arr = [];
		$("button.btn-default:not('.disabled')").each(function() {
			arr.push($(this).attr("id"));
		});

		$("input[name='reserved']").val(arr.join(","));
	})
});
</script>
<style type="text/css">
#contents {
	width: 1500px;
	height: 900px;
	background-color: gray;
	float:left;
}
#side {
	width: 400px;
	height: 700px;
	background-color: white;
	float:left;
}
</style>
<title>좌석 예매</title>
</head>
<body>
<div id="container">
	<div id="contents">
		<h1>좌석을 선택해주세요.</h1>
		<br />
		<img src="resources/icons/stage.png" height="200" width="350">
		<br />
		<br />
		<table class="table" id="seat-table">
			<c:forEach var="s" items="${seats }">
				<tr>
					<c:choose>
						<c:when test="${(s.reservation eq 'Y') && (s.grade eq 'R')}">
							<button class="btn btn-primary" id="${s.no }" name="${s.grade }">${s.no }</button>				
						</c:when>
						<c:when test="${(s.reservation eq 'Y') && (s.grade eq 'S')}">
							<button class="btn btn-danger" id="${s.no }" name="${s.grade }">${s.no }</button>				
						</c:when>
						<c:when test="${(s.reservation eq 'Y') && (s.grade eq 'A')}">
							<button class="btn btn-warning" id="${s.no }" name="${s.grade }">${s.no }</button>				
						</c:when>
						<c:otherwise>
							<button class="btn btn-default disabled" id="${s.no }">${s.no }</button>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
		</table>
		<form method="post" action="reserve.do">
			선택한 좌석번호 : <input type="text" name="reserved" readonly="readonly" >
			<br />
			<br />
			<input type="submit" class="btn btn-success" value="예매하기">
		</form>
	</div>
	
	<div id="side">
		<c:out value="사이드"></c:out>
	</div>
</div>
</body>
</html>