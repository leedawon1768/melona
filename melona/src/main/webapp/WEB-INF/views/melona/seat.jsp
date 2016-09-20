<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset=UTF-8>
<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<script>
$(document).ready(function() {
	$('#a').on({ 
	    'click': function() { 
	         var src = ($(this).attr('src') === "resources/icons/seat.png") 
	            ? "resources/icons/seat2.png"
	            : "resources/icons/seat.png"
	         $(this).attr('src', src); 
	    } 
	});
});
</script>
<title>좌석 예매 창</title>
</head>
<body>
<h1>Test</h1>
<img alt="" src="resources/icons/seat.png" id="a">
<img alt="" src="resources/icons/seat.png" id="b">
<img alt="" src="resources/icons/seat.png" id="c">
</body>
</html>