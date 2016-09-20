<%@page import="com.melona.model.C_Seat"%>
<%@page import="java.util.List"%>
<%@page import="com.melona.service.C_SeatService"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
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
	$("img[name=seatNo]").on({ 
	    'click': function() { 
	         var src = ($(this).attr('src') === "resources/icons/seat.png") 
	            ? "resources/icons/seat2.png"
	            : "resources/icons/seat.png"
	         $(this).attr('src', src);
	         
	         var no = $("img[name=seatNo]").attr('id');
	         console.log(no);
	    } 
	});
});
</script>
<title>좌석 예매</title>
</head>
<body>
<%
	WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);

	C_SeatService service = context.getBean(C_SeatService.class);
	List<C_Seat> seatList = service.getSeat();
%>
<h1>좌석을 선택해주세요.</h1>
<table border="1">
<%
		for (C_Seat cseat : seatList) {
		%>
			<tr>
				<td>좌석번호 : <%=cseat.getNo() %></td>
				<td><img alt="" src="resources/icons/seat.png" id="<%=cseat.getNo() %>" name="seatNo"></td>
				<td><%=cseat.getPrice() %> 원</td>
				<td><%=cseat.getGrade() %> 석</td>
			</tr>
		<%
		}
%>
</table>
</body>
</html>