<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%@include file="../headernav.jsp"%>
	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3" style="padding-top: 10%;">

				<h1 class="my-4" style="text-align: center;">Poly CMS</h1>
				<div class="list-group">
					<a href="../../../board/list" class="list-group-item">⚙게시판 관리⚙</a> 
					<a href="list" class="list-group-item">⚙페이지 설정⚙</a>
					<a href="../board/article/20/list" class="list-group-item">공지사항</a> 
					<a href="../board/article/21/list" class="list-group-item">질문게시판</a>
					<a href="../board/article/22/list" class="list-group-item">자유게시판</a>
					<a href="../board/article/24/list" class="list-group-item">갤러리</a>
					<a href="../board/article/25/list" class="list-group-item">일상생활</a>
					<a href="../board/article/26/list" class="list-group-item">공부계획표</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->
			
			<div class="col-lg-9" style="margin-top: 10%; margin-bottom: 50%;">
				<div>
					<h3>페이지 목록</h3>
				</div>
				<table class="table table-bordered" style="border-radius: 5px;">
					<thead>
						<tr>
							<th scope="col">페이지 경로</th>
							<th scope="col">페이지명</th>
							<th scope="col">관리</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td>등록된 페이지가 없습니다.</td>
						</tr>
						</c:if>
						<c:forEach var="item" items="${list}">
							<tr>
								<td>${item.uri}</td>
								<td>${item.pageName}</td>
								<td><a href="content/list?uri=${item.uri}" type="button" class="btn btn-outline-dark btn-sm">관리</a>
									<a href="delete?uri=${item.uri}" type="button" class="btn btn-outline-danger btn-sm">삭제</a>
									<a href="update?uri=${item.uri}" type="button" class="btn btn-outline-success btn-sm">변경</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div>
					<a href="add" class="btn btn-outline-primary">등록</a>
				</div>
			</div>
			<!-- /.col-lg-9 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
<%@include file="../footernav.jsp"%>
</body>
</html>