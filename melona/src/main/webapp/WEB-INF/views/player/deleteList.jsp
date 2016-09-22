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
   #text1 {font-size: large; font-weight: bolder;}
   #text2 {margin-top: 10px;}
   th {text-align: center; color: #5cb85c; }
   td {text-align: center; }
</style>
<title>Melona</title>
<script type="text/javascript">
$(function() {
   
   $(document).on("click", "#btn-top, #btn-up, #btn-down, #btn-bottom",function(){
      var rows = $("tbody :radio:checked").parent().parent();
         
      if ($(this).is("#btn-up")) {
         rows.insertBefore(rows.prev());
         
      } else if ($(this).is("#btn-down")) {
         rows.insertAfter(rows.next());
         
      }
      else if ($(this).is("#btn-top")) {
         rows.insertBefore($("table #playlist tr:first"));
         
      }else {
         rows.insertAfter($("table #playlist tr:last"));
            
         
      }
   });
});

</script>
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
            <span id="text1">순서변경/삭제</span>
            <a href="playlist.do" class="btn btn-warning pull-right">플레이리스트롤 돌아가기</a>
         </div>
         
         <div id="text2" class="well">
            <p>1. 체크박스를 선택 후 화살표 버튼을 클릭하시면 플레이리스트가 이동되며,플레이리스트 순서변경 완료버튼을 클릭하셔야 순서변경이 완료됩니다.</p>
            <p>2. 삭제버튼을 클릭하시면 플레이리스트가 삭제됩니다.</p>
         </div>
         
         <div class="well">
            <button id="btn-top" ><span class="glyphicon glyphicon-triangle-top"></span></button>
            <button id="btn-up" ><span class="glyphicon glyphicon-chevron-up"></span></button>
            <button id="btn-down"><span class="glyphicon glyphicon-chevron-down"></span></button>
            <button id="btn-bottom" ><span class="glyphicon glyphicon-triangle-bottom"></span></button>
         </div>
         <form role="form" method="post" action="deleteList.do">
         <table class="table">
            <colgroup>
               <col width="5%">
               <col width="80%">
               <col width="15%">
            </colgroup>
            <thead>
               <tr>
                  <th>no</th>
                  <th>플레이리스트명</th>
                  <th>삭제</th>
               </tr>
            </thead>
            <tbody id="playlist">
               <c:forEach var="album" items="${albums }" varStatus="status"  begin="0" end="${albums.size() }"  >
                  <tr>
                     <td id="index"><input type="radio" name="chk" id="${status.index }"></td>
                     <td id="title">${album.no }</td>
                     <td><input type="text" class="hidden" name="listNo" value="${album.no }"><a href="deleteL.do?no=${album.no }" class="btn btn-xs btn-danger">삭제</a></td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
         <div class="row text-center">
         	<input type="submit" class="btn btn-success" value="순서변경완료">
         </div>
         </form>
      </div>
      <div class="col-sm-1"></div>
   </div>
   
   <div id="footer">
      <%@ include file="../melona/bottom.jsp"%>
   </div>
   
</body>
</html>