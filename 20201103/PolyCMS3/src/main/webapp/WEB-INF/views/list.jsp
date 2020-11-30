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
<%@include file="headernav.jsp"%>
	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3" style="padding-top: 10%;">

				<h1 class="my-4" style="text-align: center;">Poly CMS</h1>
				<div class="list-group">
					<a href="list" class="list-group-item" >⚙게시판 관리⚙</a> 
					<a href="../page/list" class="list-group-item" >⚙페이지 설정⚙</a> 
					<a href="article/20/list" class="list-group-item">공지사항</a> 
					<a href="article/21/list" class="list-group-item">질문게시판</a>
					<a href="article/22/list" class="list-group-item">자유게시판</a>
					<a href="article/24/list" class="list-group-item">갤러리</a>
					<a href="article/25/list" class="list-group-item">일상생활</a>
					<a href="article/26/list" class="list-group-item">공부계획표</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->
			
			<div class="col-lg-9" style="margin-top: 10%; margin-bottom: 30%;">
				<div>
					<h3>게시판 목록</h3>
				</div>
				<table class="table table-bordered" style="border-radius: 5px;">
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">게시판명</th>
							<th scope="col">생성일시</th>
							<th scope="col">첨부</th>
							<th scope="col">형식</th>
							<th scope="col">댓글</th>
							<th scope="col">읽기</th>
							<th scope="col">쓰기</th>
							<th scope="col">관리</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td>등록된 게시판이 없습니다.</td>
						</tr>
						</c:if>
						<c:forEach var="item" items="${list}">
							<tr>
								<td>${item.boardId}</td>
								<td><a href="article/${item.boardId}/list">${item.boardName}</a></td>
								<td>${item.regDate}</td>
								<td>${item.attachType}</td>
								<td>${item.boardType}</td>
								<td>${item.replyType}</td>
								<td>${item.readPerm}</td>
								<td>${item.writePerm}</td>
								<td><%-- <a href="article/${item.boardId}/list">관리</a> --%> 
									<a href="delete/${item.boardId}" type="button" class="btn btn-outline-danger btn-sm">삭제</a>
									<a href="update/${item.boardId}" type="button" class="btn btn-outline-success btn-sm">변경</a>
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
<%@include file="footernav.jsp"%>
</body>
</html>