<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 
<div class="row">
	<div class="col-sm-1"></div>
	<div class="col-sm-2">
		<a href="main.do"><img src="resources/icons/logo.jpg" alt="" class="logo-img" style="width:180px ; height:150px ;"></a>
	</div>
	
	<div class="col-sm-3">
		<form class="form-inline" style="margin-top: 75px;">
			<div class="form-group">
				<label class="sr-only" for="exampleInputEmail3">search</label>
				<input type="search" class="form-control" id="search1" placeholder="검색어를 써봐요">
			</div>
			<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
		</form>
	</div>

	<div class="col-sm-2">
		<ul class="list-unstyled" style="margin-top: 80px;">
			<li>실시간 검색어!!!!!!!!!!!!!!!!!!!<!-- 이이상 더 쓰면 줄바뀐 현상 --></li>
		</ul>
	</div>
	<div class="col-sm-3">
		<ul class="nav navbar-nav navbar-right">
			<li class="${current_page eq 'ticket' ? 'active' : '' }"><a
				href=""><img src="resources/icons/메로나티켓.png" alt=""></a>
			</li>
		</ul>
	</div>
	<div class="col-sm-1"></div>
	
</div>
<div class="row">
	<div class="col-sm-1"></div>

	<div class="col-sm-10">
		<ul class="nav navbar-nav">
			<li class="${current_page eq 'main' ? 'active' : '' }"><a
				href="chart.do"><img src="resources/icons/멜론차트.png" alt=""></a>
			</li>
			<li class="${current_page eq 'blog' ? 'active' : '' }"><a
				href="genre.do"><img src="resources/icons/최신.png" alt=""></a>
			</li>
			<li class="${current_page eq 'page2' ? 'active' : '' }"><a
				href="new.do"><img src="resources/icons/장르.png" alt=""></a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li class="${current_page eq 'main' ? 'active' : '' }"><a
				href="main.do"><img src="resources/icons/마이뮤직.png" alt=""></a>
			</li>
		</ul>
	</div>
</div>
<div class="col-sm-1"></div>
<hr />
