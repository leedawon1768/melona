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
	#underbar { border-bottom: 2px solid #343434;}
	#dataform {border-bottom: 4px solid #e0e0e0; border-top: 4px solid #e0e0e0;border-left: 4px solid #e0e0e0; border-right: 4px solid #e0e0e0;}
	#form1 {margin-top: 18px;}
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
			<h3>플레이리스트 만들기</h3>
			<div id="underbar"></div>
			
			<h4>정보 입력</h4>
			
			<div id="dataform">
			<form role="form" class="form-horizontal">
				<div id="form1" class="form-group">
                       <div class="col-sm-2">
                       
                       </div>
                       <label for="title" class="control-label col-sm-2" >제목</label>
                       <div class="col-sm-8">
                       <input type="text" class="form-control " id="title" 
                           placeholder="이름을 입력하세요">
                       </div>
                 </div>
                 <div class="form-group">
                     <div class="col-sm-2">
                     
                     </div>
                     <label for="text" class="control-label col-sm-2" >소계글</label>
                     <div class="col-sm-8">
                     <textarea class="form-control" rows="3" id="text"></textarea>
                     </div>
                 </div>
            </form>
			</div>
		</div>
		<div class="col-sm-1"></div>
	</div>
	
	<div id="footer">
		<%@ include file="../melona/bottom.jsp"%>
	</div>
	
</body>
</html>