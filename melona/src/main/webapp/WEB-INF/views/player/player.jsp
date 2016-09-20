<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.css">
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<script src="resources/bootstrap/js/bootstrap.js"></script>
<style type="text/css">
body{
	background-image: url("resources/playerImage/White-Background-BD1.png");
}
	img.pro-img {width: 300px; height: 300px; margin-left: 11px;}
	img.pro-icon {margin-left: 11px; width: 48px; height: 48px;}
	#list {border-left: 2px solid #343434; border-right: 2px solid #343434; border-top: 2px solid #343434; border-bottom: 2px solid #343434; background-image:url("resources/playerImage/sdf.jpg");}
	audio{margin-left: 11px;}
	MARQUEE#musicName{margin-left: 11px;  background-color: #343434; font-weight: bold; color: white; width: 300px; height: 40px;}
	#butlist{margin-left: 350px; margin-top: 10px;}
</style>
<title>Insert title here</title>

<script type="text/javascript">

 var playlists = [];
 var minuspointer = 0;
 var pointer = 0 - minuspointer;
 var randomYN = true;
 ${PlayList };// 숫자 받아오기 성공 
 
 playlists.push("01. 노래 한번 할게요");
 playlists.push("02. 이별 후");
 playlists.push("03. 그 곳에 멈춰서");
 playlists.push("04. 화해");
 playlists.push("05. 이제 날 놓아줘");
 playlists.push("06. 내 생에 가장 아름다운");
 playlists.push("07. 그마저 내려놓는");
 playlists.push("08. 또 설레이는 이 길");
 playlists.push("09. 순심이");
 playlists.push("10. 너에게 달려간다");
 playlists.push("11. 내가 저지른 사랑");
 playlists.push("12. 세상에 하나뿐인 나");

 $(function() {
	 list();
	 
	 
	 $("#playlist").on("click","tr",function(event) {
		event.stopPropagation();
		var index = $(this).index();
		pointer = index;
		$("#icon-2").show();
		load_proc();
	 });
	 
	 $("#playlist").on("click","input",function(event) {
		event.stopPropagation();
	 });
 })
 
 function list() {
	 $("#playlist").find("tr").remove();
	 
	 for(var i=0;i<playlists.length;i++) {
		var aa =playlists[i];
		var html = "<tr><td><input type='checkbox'></td><td id='index'>"+(i+1)+"</td><td id='title'>"+aa+"</td></tr>"
		$("#playlist").append(html)
	 }
	 $("tr").css("color", "white");
	 $("#textArea").css("color", "white");
 }
 
 function doPlay(){
  var obj = document.getElementById('player');
  $("#icon-1").hide();
  $("#icon-2").show();
  $("#icon-7").hide();
  $("#icon-3").show();
  obj.play();
 }
 function doPause(){
  var obj = document.getElementById('player');
  $("#icon-2").hide();
  $("#icon-1").show();
  obj.pause();
 }
 function doStop(){
  var obj = document.getElementById('player');
  $("#icon-2").hide();
  $("#icon-1").show();
  $("#icon-3").hide();
  $("#icon-7").show();
  obj.pause();
  obj.currentTime=0;
 }
 function doPrev(){
	 var obj = document.getElementById('player');
	 $("#icon-7").hide();
	 $("#icon-3").show();
	 $("#icon-2").show();
	 obj.pause();
	 obj.currentTime = 0;
	 

	 	pointer--;
	 	pointer--;

	 load_proc();
 }
 function doNext(){
	 var obj = document.getElementById('player');
	 $("#icon-7").hide();
	 $("#icon-3").show();
	 $("#icon-2").show();
	 obj.pause();
	 obj.currentTime = 0;
	 load_proc();
 }
 function randomPlay() {
	 if(randomYN == true){
		 randomYN = false;
		 $("#icon-6").hide();
		 $("#icon-8").show();
	 }else{
		 randomYN = true;
		 $("#icon-8").hide();
		 $("#icon-6").show();
	 }
 }
 function remove() {
	var checks = $("tbody :checkbox:checked");
	if($("tbody tr").length == 0){
		alert('삭제할 행이 없습니다.');
	}else if(checks.length == 0){
		alert('선택된 체크박스가 하나도 없습니다');
	}
	
	for(var i =0; i<checks.length; i++) {
		var check = checks[i]
		var index = $(check).parent().parent().find("#index").text()-1;
		
		playlists.splice(index, 1);
		
		list();
		
	}
 }
 function up() {
	var checks = $("tbody :checkbox:checked");
	if($("tbody tr").length == 0){
		alert('삭제할 행이 없습니다.');
	}else if(checks.length == 0){
		alert('선택된 체크박스가 하나도 없습니다');
	}
	for(var i =0; i<checks.length; i++) {
		var check = checks[i]
		var title = $(check).parent().parent().find("#title").text();
		var index = $(check).parent().parent().find("#index").text()-1;
		
		playlists.splice(index, 1);
		playlists.splice(index-1,0,title);
		
		list();
	}
}
 function down() {
		var checks = $("tbody :checkbox:checked");
		if($("tbody tr").length == 0){
			alert('삭제할 행이 없습니다.');
		}else if(checks.length == 0){
			alert('선택된 체크박스가 하나도 없습니다');
		}
		for(var i =0; i<checks.length; i++) {
			var check = checks[i]
			var title = $(check).parent().parent().find("#title").text();
			var index = $(check).parent().parent().find("#index").text()-1;
			
			playlists.splice(index, 1);
			playlists.splice(index+1,0,title);
			
			list();
		}
	}

 
 function getItem(){
	 if (randomYN){
		$("#icon-8").hide();
		$("#icon-6").show();
		$("#icon-7").hide();
		if(pointer < 0){
			pointer = playlists.length-1;
			var returnVal = playlists[pointer];
			pointer++;
			return returnVal;
		}else{
		  	var returnVal = playlists[pointer];
		  	pointer++;
		  	if(pointer>playlists.length-1){
		   		pointer = 0;
		  	}
		  	return returnVal;
		}
	 }else{
		 $("#icon-6").hide();
		 $("#icon-8").show();
		 $("#icon-7").hide();
		 pointer = playlists.length-1;
		 pointer = Math.floor(Math.random()*(pointer+1));
		 
		 var returnVal = playlists[pointer];
		 
		 return returnVal;
	 }
  
  
  return returnVal;
 }

 function load_proc(){
  var player = document.getElementById('player');
  var source = document.getElementById('source');
  $("tr").css("color", "white");
  $("tr:eq("+pointer+")").css("color", "red");
  $("#musicName").text($("tr:eq( "+pointer+")").find('#title').text());

  if(player.canPlayType("audio/mpeg")!=""){
    source.src = "resources/music/" + getItem() + ".mp3";
    source.type = "audio/mpeg";
  } else {
    source.src = "resources/music/" + getItem() + ".ogg";
    source.type = "audio/ogg";
  }
  player.load();
  player.play();
  $("#icon-1").hide();

  if(player.attachEvent != null){
    player.attachEvent("onended",load_proc);
  } else {
    player.addEventListener("ended",load_proc,false);
  }
 }

 if(window.attachEvent != null){
   window.attachEvent("onload",load_proc);
 } else {
   window.addEventListener("load",load_proc,false);
 }

</script>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<img src="resources/playerImage/player.png" alt="">
	</nav>
	
	
	
	<div class="col-sm-5">
		<div class="row">
			<img class="pro-img" src="resources/playerImage/a.gif" alt="">
		</div>
		<div class="row">
			<MARQUEE id="musicName" DIRECTION="left" HSPACE="10" VSPACE="10">Not Found</MARQUEE>
		</div>
		<div class="row">
			<audio id="player" controls="controls" loop="loop" preload="auto">
			    <source id="source" src="" type="" />
			    <p>죄송합니다. 지금 사용하고 계신 브라우저가 audio 태그를 지원하지 않습니다.</p>
			</audio>
		</div>
		<div class="row">
			<img id="icon-4" class="pro-icon" src="resources/playerImage/icon/first-track-icon.png" alt="" onclick="doPrev()">
			<img id="icon-1" class="pro-icon" src="resources/playerImage/icon/play-icon.png" alt="" onclick="doPlay()">
			<img id="icon-2" class="pro-icon" src="resources/playerImage/icon/pause-icon.png" alt="" onclick="doPause()">
			<img id="icon-5" class="pro-icon" src="resources/playerImage/icon/last-track-icon.png" alt="" onclick="doNext()">
			<img id="icon-3" class="pro-icon" src="resources/playerImage/icon/stop-icon.png" alt="" onclick="doStop()">
			<img id="icon-7" class="pro-icon" src="resources/playerImage/icon/stop-icon2.png" alt="" onclick="doStop()">
			<img id="icon-6" class="pro-icon" src="resources/playerImage/icon/shuffle-icon.png" alt="" onclick="randomPlay()">
			<img id="icon-8" class="pro-icon" src="resources/playerImage/icon/shuffle-icon2.png" alt="" onclick="randomPlay()">
		</div>
	</div>
	
	
	
	
	
	<div id="list" style="width:300px; height: 400px;overflow: scroll; overflow-x:hidden ">
	<ul class="nav nav-tabs nav-justified ">
        <li class="active"><a href="#news" data-toggle="tab">리스트</a></li>
        <li><a href="#ent" data-toggle="tab">가사</a></li>
    </ul>
    
    <div class="tab-content">
    	<div class="tab-pane active" id="news">
			<table class="table table-hover">
				<colgroup>
					<col width="10%">
					<col width="10%">
					<col width="*">
				</colgroup>
				<tbody id="playlist">
				
				</tbody>
			</table>
    	</div>
    	
    	<div class="tab-pane fade" id="ent">
    		<div id="textArea" class="text-center">
    			가사 없음...
    		</div>
    	</div>
    </div>
    
	</div>
	<div id="butlist" class="row">
		<button class="btn btn-default" onclick="remove()">삭제</button>
		<button class="btn btn-default" onclick="up()">△</button>
		<button class="btn btn-default" onclick="down()">▽</button>
	</div>
</body>
</html>