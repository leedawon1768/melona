<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="row">
	<div class="col-sm-1"></div>
	<div class="col-sm-6">
		<br /> <br /> <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="main.do"><img src="resources/icons/logo.jpg" alt="" class="logo-img"></a>
	</div>
	<div class="col-sm-2">
		<ul class="list-unstyled">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<div class="col-sm-2"></div>
	<div class="col-sm-1"></div>
</div>
<hr/>
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
