<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="current_page" value="total" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="resources/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<script src="resources/bootstrap/js/bootstrap.js"></script>
<style type="text/css">
img.logo-img {
	width: 200px;
	height: 200px;
}

img.singer-img, img.album-img {
	width: 250px;
	height: 250px;
}
</style>
<title>Melona</title>
</head>
<body>
	<div class="container">
		<div id="top">
			<%@ include file="../melona/menu.jsp"%>
		</div>

		<div class="row">
			<span class="glyphicon glyphicon-play"></span>' '에 대한 검색결과입니다.

			<hr style="border: solid 1px gray">

			<!-- <ul class="nav nav-pills"> -->
			<ul class="nav nav-tabs nav-justfield">
				<li class="active"><a href="#searchTotal" data-toggle="tab">통합검색</a></li>
				<li><a href="searchSinger.do" data-toggle="tab">아티스트</a></li>
				<li><a href="#music" data-toggle="tab">곡</a></li>
				<li><a href="#album" data-toggle="tab">앨범</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane fade in active" id="searchTotal">
					<div class="row">
                    	<%@ include file="singer.jsp"%>
                    </div>
                    
                    <hr>
                    
                    <div class="row">
                    	<%@ include file="music.jsp"%>
                    </div>
                    
                    <hr>
                    
                    <div class="row">
                    	<%@ include file="album.jsp"%>
                    </div>
                </div>
                
				<%-- <div class="tab-pane fade" id="singer">
					<%@ include file="singer.jsp"%>
				</div> --%>
				
				<div class="tab-pane fade" id="music">
					<%@ include file="music.jsp"%>
				</div>
				
				<div class="tab-pane fade" id="album">
					<%@ include file="album.jsp"%>
				</div>
			</div>
		</div>
	</div>

	<hr />
	
	<div id="footer">
		<%@ include file="../melona/bottom.jsp"%>
	</div>
</body>
</html>