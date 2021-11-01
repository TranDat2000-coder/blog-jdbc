<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách bài viết</title>
</head>
<body>

	<form action="<c:url value='/admin-new-list'/>" id="formSubmit" method="get">
		<div class="page-content">
			<div class="row">
				<div class="col-xs-12">
					<div class="table-responsive">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Tên bài viết</th>
									<th>Mô tả ngắn</th>
									<th>Mô tả</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${model.listResult}">
									<tr>
										<td>${item.title}</td>
										<td>${item.shortDescription}</td>
										<td>${item.content}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<ul class="pagination" id="pagination"></ul>
						<input type="hidden" id="page" value="" name="page">
						<input type="hidden" id="maxPageItem" value="" name="maxPageItem">
					</div>
				</div>
			</div>
		</div>
	</form>
	<script type="text/javascript">
		var totalPage = ${model.totalPage};
		var currentPage = ${model.page};
		var limit = 2;
		$(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPage,
            visiblePages: 10,
			startPage: currentPage,
            onPageClick: function (event, page) {
            	if(currentPage != page){
            		$("#maxPageItem").val(limit);
    				$("#page").val(page);
                    $("#formSubmit").submit();
            	}
            	
            }
        });
    });
	</script>	
</body>

</html>