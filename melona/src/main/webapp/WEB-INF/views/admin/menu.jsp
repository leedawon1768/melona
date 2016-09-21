<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 
<div class="row">
	<div class="col-sm-1"></div>
	<div class="col-sm-2">
		<a href="main.do"><img src="../resources/icons/logo.jpg" alt="" class="logo-img" style="width:180px ; height:150px ;"></a>
	</div>
</div>
<div class="row">
	<div class="col-sm-1"></div>

	<div class="col-sm-10">
		<ul class="nav navbar-nav">
			<li class="${current_page eq 'main' ? 'active' : '' } dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" href="#">메로나 <b class="caret"></b></a>
		        <ul class="dropdown-menu">
		        	<li><a href="singer.do">가수</a></li>
		            <li><a href="album.do">앨범</a></li>
		            <li><a href="music.do">음악</a></li>
		        </ul>
			</li>
			<li class="${current_page eq '' ? 'active' : '' }">
				<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" href="#">메로나 티켓 <b class="caret"></b></a>
				<ul class="dropdown-menu">
		        	<li><a href="concert.do">공연</a></li>
		            <li><a href="stage.do">공연장</a></li>
		        </ul>
			</li>
			<li class="${current_page eq 'stats' ? 'active' : '' }">
				<a href="stats.do">통계</a>
			</li>
			<li class="${current_page eq '' ? 'active' : '' }">
				<a href="member.do">회원 관리</a>
			</li>
		</ul>
	</div>
</div>
<div class="col-sm-1"></div>
<hr />
