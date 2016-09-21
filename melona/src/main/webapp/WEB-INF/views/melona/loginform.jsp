<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="current_page" value="login" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="resources/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
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
	
	<div class="well ">
			<c:if test="${param.error eq 'req'  }">
				<div class="alert alert-danger">
			  		<strong>에러!</strong> 로그인이 필요한 서비스입니다.  
				</div>
			</c:if>
		
			<form role="form" method="post" action="login.do">
				<div class="form-group">
					<label>아이디</label>
					<input type="text" class="form-control" name="id" />
				</div>
				<div class="form-group">
					<label>비밀번호</label>
					<input type="password" class="form-control" name="password" />
				</div>
				<div class="form-group text-right">
					<input type="submit" class="btn btn-primary" value="로그인" />
					<a href="main.do" class="btn btn-default">취소</a>
				</div>
			</form>
		</div>
	
	
	<div id="footer">
		<%@ include file="bottom.jsp"%>
	</div>
	
</body>
</html>