<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<a href="list" class="list-group-item">⚙게시판 관리⚙</a> 
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
			<div class="col-lg-9" style="margin-top: 10%; margin-bottom: 65%;">
				<div>
					<h3>게시판 등록</h3>
				</div>
				<form method="post">
					<div>
						<label>게시판명:</label> <input name="boardName" type="text" style="width: 87.6%;">
					</div>

					<div>
						<input type="submit" value="등록" class="btn btn-outline-primary">
					</div>
				</form>
			</div>
			<!-- /.col-lg-9 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<%@include file="footernav.jsp"%>
</body>
</html>