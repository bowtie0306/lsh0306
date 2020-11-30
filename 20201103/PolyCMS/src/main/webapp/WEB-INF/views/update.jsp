<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
					<a href="../../page/list" class="list-group-item" >⚙페이지 설정⚙</a> 
					<a href="../article/20/list" class="list-group-item">공지사항</a> 
					<a href="../article/21/list" class="list-group-item">질문게시판</a> 
					<a href="../article/22/list" class="list-group-item">자유게시판</a> 
					<a href="../article/24/list" class="list-group-item">갤러리</a> 
					<a href="../article/25/list" class="list-group-item">일상생활</a> 
					<a href="../article/26/list" class="list-group-item">공부계획표</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9" style="margin-top: 10%; margin-bottom: 40%;">
				<div>
					<h3>게시판 변경</h3>
				</div>
				<form method="post">
					<div>
						<label>번호:</label>${item.boardId}
					</div>

					<div>
						<label>게시판명:</label> <input name="boardName" type="text"
							value="${item.boardName}">
					</div>

					<div>
						<label>형식:</label> <select name="boardType">
							<option value="0" ${boardType == 0 ? 'selected' : ''}>공지형</option>
							<option value="1" ${boardType == 1 ? 'selected' : ''}>답변형</option>
							<option value="2" ${boardType == 2 ? 'selected' : ''}>자유형</option>
							<option value="3" ${boardType == 3 ? 'selected' : ''}>갤러리</option>
						</select>
					</div>

					<div>
						<label>첨부파일:</label> <select name="attachType">
							<option value="0" ${attachType == 0 ? 'selected' : ''}>없음</option>
							<option value="1" ${attachType == 1 ? 'selected' : ''}>단일</option>
							<option value="2" ${attachType == 2 ? 'selected' : ''}>다중</option>
						</select>
					</div>

					<div>
						<label>댓글:</label> <select name="replyType">
							<option value="0" ${replyType == 0 ? 'selected' : ''}>없음</option>
							<option value="1" ${replyType == 1 ? 'selected' : ''}>가능</option>
							<option value="2" ${replyType == 2 ? 'selected' : ''}>다중</option>
						</select>
					</div>

					<div>
						<label>읽기 권한:</label> <input type="number"
							value="${item.readPerm}" name="readPerm">
					</div>
					<div>
						<label>쓰기 권한:</label> <input type="number"
							value="${item.writePerm}" name="writePerm">
					</div>

					<div>
						<input type="submit" value="변경" class="btn btn-outline-success">
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