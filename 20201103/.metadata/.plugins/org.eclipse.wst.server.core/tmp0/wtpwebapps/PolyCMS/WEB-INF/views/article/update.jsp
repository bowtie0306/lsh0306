<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<a href="../../../../page/list" class="list-group-item">⚙페이지 설정⚙</a>
					<a href="../../20/list" class="list-group-item">공지사항</a> 
					<a href="../../21/list" class="list-group-item">질문게시판</a> 
					<a href="../../22/list" class="list-group-item">자유게시판</a> 
					<a href="../../24/list" class="list-group-item">갤러리</a>
					<a href="../../25/list" class="list-group-item">일상생활</a>
					<a href="../../26/list" class="list-group-item">공부계획표</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9" style="margin-top: 10%; margin-bottom: 30%;">
				<div>
					<h3>게시물 변경</h3>
				</div>
				<div>
					<div>
						<form method="post">
							<div>
								<label>제목:</label> <input name="subject" type="text" value="${item.subject}" style="width: 87.6%;">
							</div>

							<div>
								<label>내용:</label>
								<textarea name="content" rows="20" cols="100">${item.content}</textarea>
							</div>

							<div>
								<input type="submit" value="변경" class="btn btn-outline-success">
							</div>
						</form>
					</div>
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