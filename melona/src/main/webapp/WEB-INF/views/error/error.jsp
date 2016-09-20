<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../melona/menu.jsp" %>
	<div class="container">
		<div class="alert alert-default">
			<%=exception.getMessage() %>
			<a href="main.do" class="alert-link">홈</a>으로 이동하기
		</div>
	</div>
	<%@ include file="../melona/bottom.jsp" %>
</body>
</html>