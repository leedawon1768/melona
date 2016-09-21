<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="current_page" value="register" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="resources/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="resources/jquery/jquery.js">
$(function() {
	$("form").submit(function() {
		if (!$.trim($(":input[name='id']").val())) {
			alert("아이디는 필수입력값입니다.");
			return false;
		}
		if (!$.trim($(":input[name='name']").val())) {
			alert("이름은 필수입력값입니다.");
			return false;
		}
		if (!$.trim($(":input[name='password']").val())) {
			alert("비밀번호는 필수입력값입니다.");
			return false;
		}
		
		return true;
	});
});
</script>
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
		<h1>회원 가입</h1>
		<div class="well">
			<form role="form" method="post" action="register.do">
				<div class="form-group">
					<label>아이디</label>
					<input type="text" class="form-control" name="id" />
				</div>
				<div class="form-group">
					<label>비밀번호</label>
					<input type="password" class="form-control" name="password" />
				</div>
				<div class="form-group">
					<label>이름</label>
					<input type="text" class="form-control" name="name" />
				</div>
				<div class="form-group">
					<label>주소</label>
					<input type="text" class="form-control" name="address" />
				</div>
				<div class="form-group">
					<label>이메일</label>
					<input type="text" class="form-control" name="email" />
				</div>
				<div class="form-group">
					<label>전화번호</label>
					<input type="text" class="form-control" name="contact" />
				</div>
				<div class="form-group">
					<label>성별</label>
					<input type="text" class="form-control" name="gender" />
				</div>
				<div class="form-group">
					<label>생일</label>
					<input type="text" class="form-control" name="birth" />
				</div>
				<div class="form-group text-right">
					<input type="submit" class="btn btn-primary" value="가입" />
					<a href="main.do" class="btn btn-default">취소</a>
				</div>
			</form>
		</div>
	</div>
	
	
	<div id="footer">
		<%@ include file="bottom.jsp"%>
	</div>
	
</body>
</html>