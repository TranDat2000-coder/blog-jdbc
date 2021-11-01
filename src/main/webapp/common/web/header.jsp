<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="#">Navbar</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home <span class="sr-only">(current)</span> </a></li>
			<c:if test="${not empty USERMODEL }">
				<li class="nav-item"><a class="nav-link" href="#">Xin chào ${USERMODEL.fullName}</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value='/thoat?action=logout'/>">Đăng xuất</a></li>
			</c:if>
			<c:if test="${empty USERMODEL }">
				<li class="nav-item"><a class="nav-link" href="<c:url value='/dang-nhap?action=login'/>">Đăng nhập</a></li>
			</c:if>
		</ul>
	</div>
</nav>