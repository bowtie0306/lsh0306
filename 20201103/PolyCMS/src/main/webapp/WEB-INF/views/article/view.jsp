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
			<!-- <div class="col-lg-3" style="padding-top: 10%; float: left;">
				<h1 class="my-4" style="text-align: center;">Poly CMS</h1>
				<div class="list-group">
					<a href="../../../list" class="list-group-item">⚙게시판 관리⚙</a>
					<a href="../../20/list" class="list-group-item">공지사항</a> 
					<a href="../../21/list" class="list-group-item">질문게시판</a> 
					<a href="../../22/list" class="list-group-item">자유게시판</a> 
					<a href="../../24/list" class="list-group-item">갤러리</a> 
					<a href="../../25/list" class="list-group-item">일상생활</a> 
					<a href="../../26/list" class="list-group-item">공부계획표</a>
				</div>
			</div> -->
			<!-- /.col-lg-3 -->
			<div>
				<div style="padding-top: 20%;">
					<h3>게시물 목록</h3>
					<span style="float: right;"><a href="../list">목록가기</a></span>
				</div>
				<div>
					<table class="table table-bordered" style="border-radius: 5px;">
						<tbody>
							<tr>
								<th>조회수</th>
								<td>${item.viewCount}</td>
							</tr>
							<tr>
								<th>글번호</th>
								<td>${item.articleId}</td>
							</tr>
							<tr>
								<th>제목</th>
								<td>${item.subject}</td>
							</tr>
							<tr>
								<th>내용</th>
								<td><textarea class="form-control" placeholder="${item.content}" name="bbsContent" maxlength="2048" style="height: 350px; width:1000px;"></textarea></td>
							</tr>
						</tbody>
					</table>
				</div>
			<div style="float: right;">
				<span><a href="delete" type="button" class="btn btn-outline-danger btn-sm">삭제</a></span> 
				<span><a href="update" type="button" class="btn btn-outline-success btn-sm">변경</a></span>
				<span><a href="../list" type="button" class="btn btn-outline-warning btn-sm">목록</a></span>
			</div>
				<br><hr>
				<div style="padding-bottom: 20%;">
					<div>
						<form method="post">
							<input name="writer" type="hidden" value="익명"> 
							<input name="content" type="text"> 
							<input type="submit" value="댓글">
						</form>
					</div>
					<c:if test="${reply.size() < 1}">
						<div>댓글이 없습니다.</div>
					</c:if>
					<ul>
						<c:forEach var="item" items="${reply}">
							<li><span>${item.writer}</span>
								<br><span>${item.content}</span>
								<br><span>${item.regDate}</span>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<%@include file="../footernav.jsp"%>
</body>
</html>