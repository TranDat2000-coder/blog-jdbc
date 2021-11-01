<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title><dec:title default="Trang chủ" /></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="<c:url value='template/admin/assets/css/bootstrap.min.css'/>" />
	<link rel="stylesheet" href="<c:url value='template/admin/assets/font-awesome/4.2.0/css/font-awesome.min.css'/>" />
	<link rel="stylesheet" href="<c:url value='template/admin/assets/css/ace.min.css'/>" class="ace-main-stylesheet" id="main-ace-style" />
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
	<!-- text fonts -->
	<link rel="stylesheet" href="<c:url value='template/admin/assets/fonts/fonts.googleapis.com.css'/>" />
	
	
</head>
<body class="no-skin">
	<!-- header -->
	<%@ include file="/common/admin/header.jsp"%>
	<!-- header -->
	<div class="main-container" id="main-container">
		<div id="sidebar" class="sidebar                  responsive">
			<script type="text/javascript">
				try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
			</script>
			<%@ include file="/common/admin/menu.jsp"%>
		</div>

		<div class="main-content">
			<div class="main-content-inner">
	
			<dec:body />
			</div>
		</div>

		<!-- footer -->
		<%@ include file="/common/admin/footer.jsp"%>
		<!-- footer -->
		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse display"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>

	</div>
	
	

<script src="<c:url value='template/admin/assets/js/jquery.2.1.1.min.js'/>"></script>
<script src="<c:url value='template/admin/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='template/admin/assets/js/bootstrap.min.js'/>"></script>


<!-- ace scripts -->
<script src="<c:url value='template/admin/assets/js/ace-elements.min.js'/>"></script>
<script src="<c:url value='template/admin/assets/js/ace.min.js'/>"></script>

<!-- ace settings handler -->
<script src="<c:url value='template/admin/assets/js/ace-extra.min.js'/>"></script>

<script src="<c:url value='template/admin/assets/js/jquery-ui.custom.min.js' />"></script>
<script src="<c:url value='template/admin/assets/js/jquery.ui.touch-punch.min.js' />"></script>
<script src="<c:url value='template/admin/assets/js/jquery.easypiechart.min.js' />"></script>
<script src="<c:url value='template/admin/assets/js/jquery.sparkline.min.js' />"></script>
<script src="<c:url value='template/admin/assets/js/jquery.flot.min.js' />"></script>
<script src="<c:url value='template/admin/assets/js/jquery.flot.pie.min.js' />"></script>
<script src="<c:url value='template/admin/assets/js/jquery.flot.resize.min.js' />"></script>

<!-- pagigation -->
<script src="<c:url value='template/admin/assets/js/jquery.twbsPagination.js'/>"></script>
</body>
</html>