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
	$("#seat-table button:not('.disabled')").on("click", function() {
		
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
<title>좌석 예매</title>
</head>
<body>
<h1>좌석을 선택해주세요.</h1>
<table class="table" id="seat-table">
	<c:forEach var="s" items="${seats }">
		<th>
			<c:choose>
				<c:when test="${s.reservation eq 'Y'}">
					<td><button class="btn btn-primary" id="${s.no }">${s.no }</button></td>			
				</c:when>
				<c:otherwise>
					<td><button class="btn btn-primary disabled" id="${s.no }">${s.no }</button></td>
				</c:otherwise>
			</c:choose>
		</th>
	</c:forEach>
</table>
<form method="post" action="reserve.do">
	<input type="text" name="reserved" >
	<input type="submit" class="btn btn-success" value="예매하기">
</form>
</body>
</html>