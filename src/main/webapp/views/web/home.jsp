<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
</head>
<body>
	<div class="row mt-5">
		<div class="col-xl-4">
			<div class="menu-page">
				<h1>Category</h1>
				<ul>
					<li><a href="#">Category 1</a></li>
					<li><a href="#">Category 2</a></li>
					<li><a href="#">Category 3</a></li>
					<li><a href="#">Category 4</a></li>
					<li><a href="#">Category 5</a></li>
				</ul>
			</div>
		</div>
		<div class="col-xl-8">
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
				  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
				  <div class="carousel-item active">
					<img src="..." class="d-block w-100" alt="...">
				  </div>
				  <div class="carousel-item">
					<img src="..." class="d-block w-100" alt="...">
				  </div>
				  <div class="carousel-item">
					<img src="..." class="d-block w-100" alt="...">
				  </div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				  <span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				  <span class="carousel-control-next-icon" aria-hidden="true"></span>
				  <span class="sr-only">Next</span>
				</a>
			  </div>
		</div>
	</div>
	<div class="row mt-5">
		<div class="col-xl-12">
			<div class="card-deck">
				<div class="card">
				  <img src="..." class="card-img-top" alt="...">
				  <div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
					<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				  </div>
				</div>
				<div class="card">
				  <img src="..." class="card-img-top" alt="...">
				  <div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
					<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				  </div>
				</div>
				<div class="card">
				  <img src="..." class="card-img-top" alt="...">
				  <div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
					<p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
				  </div>
				</div>
			  </div>
		</div>
	</div>
</body>
</html>