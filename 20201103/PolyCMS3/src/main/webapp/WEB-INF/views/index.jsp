<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
</head>
<%@include file="headernav.jsp"%>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3" style="padding-top: 10%;">

				<h1 class="my-4" style="text-align: center;">Poly CMS</h1>
				<div class="list-group">
					<a href="board/list" class="list-group-item" >⚙게시판 관리⚙</a> 
					<a href="page/list" class="list-group-item" >⚙페이지 설정⚙</a> 
					<a href="board/article/20/list" class="list-group-item">공지사항</a> 
					<a href="board/article/21/list" class="list-group-item">질문게시판</a>
					<a href="board/article/22/list" class="list-group-item">자유게시판</a>
					<a href="board/article/24/list" class="list-group-item">갤러리</a>
					<a href="board/article/25/list" class="list-group-item">일상생활</a>
					<a href="board/article/26/list" class="list-group-item">공부계획표</a>
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9" style="margin-top: 10%; margin-bottom: 10%;">

				<div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img class="d-block img-fluid" src="../resources/img/animals.jpg" alt="First slide" style="width: 900px; height: 350px;">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="../resources/img/star.jpg" alt="Second slide" style="width: 900px; height: 350px;">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="../resources/img/nature.jpg" alt="Third slide" style="width: 900px; height: 350px;">
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

		<div class="middle">
			<div class="l-row" style="width: 50%; float: left;">
				<div>
					<c:if test="${list.size() > 0}">
						<c:forEach var="page_content" items="${list}">
							<div>
								<div style="margin-left: 1em; margin-right: 50%;">
									<h3>${page_content.contentName}</h3>
									<hr style="width: 300px;">
								</div>
								<ul>
									<c:if test="${page_content.board.size() < 1}">
										<li>등록된 게시물이 없습니다.</li>
									</c:if>
									<c:forEach var="item" items="${page_content.board}">
										<li>
											<span>${item.articleId} &nbsp | &nbsp </span> 
											<span><a href="board/article/0/${item.articleId}/view">${item.subject}</a></span><br>
											<span><fmt:formatDate value="${item.regDate}" pattern="yyyy-MM-dd" /></span>
										</li>
									</c:forEach>
<%-- 								<a href="board/article/${item.boardId}/${item.articleId}/list" style="float: left; margin-left: 70%;">더보기</a> --%>
								</ul>
								<br>
							</div>
						</c:forEach>
					</c:if>
				</div>
			</div>
		</div>




		<%-- <div class="middle">
			<div class="l-row" style="width: 50%; float: left;">
				<div>
					<c:if test="${list.size() > 0}">
						<c:forEach var="board" items="${list}">
						
							<div>
								<div style="margin-left: 1em; margin-right: 50%;">
									<h3>게시판</h3>
									<hr style="width: 300px;">
								</div>
								<ul>
									<c:if test="${board.size() < 1}">
										<li>등록된 게시물이 없습니다.</li>
									</c:if>
									<c:forEach var="item" items="${board}">
										<li>
											<span>${item.articleId}</span> 
											<span><a href="board/article/0/${item.articleId}/view">${item.subject}</a></span><br>
											<span><fmt:formatDate value="${item.regDate}" pattern="yyyy-MM-dd" /></span>
										</li>
									</c:forEach>
								</ul>
								<a href="board/article/20/list">더보기</a>
							</div>
						
						</c:forEach>
					</c:if>
				</div>
			</div>
		</div> --%>
				
				<%-- <div class="middle">
					<div class="l-row" style="width: 50%; float: left;">
						<div>
							<div style="margin-left: 1em; margin-right: 50%; margin-top: 20%;">
								<h3>자주하는 질문</h3>
								<hr style="width: 300px;">
							</div>
							<ul>
								<c:if test="${faq.size() < 1}">
									<li>등록된 게시물이 없습니다.</li>
								</c:if>
								<c:forEach var="item" items="${faq}">
									<li>
										<span>${item.articleId} : </span> 
										<span>
											<a href="board/article/21/${item.articleId}/view">${item.subject}</a>
										</span>
										<br>
										<span>
											<fmt:formatDate value="${item.regDate}" pattern="yyyy-MM-dd" />
										</span>
									</li>
								</c:forEach>
							</ul>
							<a href="board/article/21/list">더보기</a>
						</div>
					</div> --%>

					<div class="row" style="width: 50%; float: left;">
						<div style="padding-bottom: 5%; margin-left: 1em; margin-right: 50%;">
							<h3>갤러리</h3>
							<hr style="width: 300px;">
						</div>
						<br>
						<div class="col-lg-4 col-md-6 mb-4">
							<a href="#"> 
								<img class="card-img-top" src="../resources/img/1.jpg" alt="" style="border-radius: calc(.25rem - 1px); width: 105px; height: 60px;">
							</a>
							<div class="card-body" style="padding: 0.25rem;">
								<h6 class="card-title">
									<a href="#">Item One</a>
								</h6>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<a href="#"> 
								<img class="card-img-top" src="../resources/img/2.jpg" alt="" style="border-radius: calc(.25rem - 1px); width: 105px; height: 60px;">
							</a>
							<div class="card-body" style="padding: 0.25rem;">
								<h6 class="card-title">
									<a href="#">Item Two</a>
								</h6>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<a href="#"> 
								<img class="card-img-top" src="../resources/img/3.jpg" alt="" style="border-radius: calc(.25rem - 1px); width: 105px; height: 60px;">
							</a>
							<div class="card-body" style="padding: 0.25rem;">
								<h6 class="card-title">
									<a href="#">Item Three</a>
								</h6>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<a href="#"> 
								<img class="card-img-top" src="../resources/img/4.jpg" alt="" style="border-radius: calc(.25rem - 1px); width: 105px; height: 60px;">
							</a>
							<div class="card-body" style="padding: 0.25rem;">
								<h6 class="card-title">
									<a href="#">Item Four</a>
								</h6>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<a href="#"> 
								<img class="card-img-top" src="../resources/img/5.jpg" alt="" style="border-radius: calc(.25rem - 1px); width: 105px; height: 60px;">
							</a>
							<div class="card-body" style="padding: 0.25rem;">
								<h6 class="card-title">
									<a href="#">Item Five</a>
								</h6>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<a href="#"> 
								<img class="card-img-top" src="../resources/img/6.jpg" alt="" style="border-radius: calc(.25rem - 1px); width: 105px; height: 60px;">
							</a>
							<div class="card-body" style="padding: 0.25rem;">
								<h6 class="card-title">
									<a href="#">Item Six</a>
								</h6>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<a href="#"> 
								<img class="card-img-top" src="../resources/img/7.jpg" alt="" style="border-radius: calc(.25rem - 1px); width: 105px; height: 60px;">
							</a>
							<div class="card-body" style="padding: 0.25rem;">
								<h6 class="card-title">
									<a href="#">Item Seven</a>
								</h6>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<a href="#"> 
								<img class="card-img-top" src="../resources/img/8.jpg" alt="" style="border-radius: calc(.25rem - 1px); width: 105px; height: 60px;">
							</a>
							<div class="card-body" style="padding: 0.25rem;">
								<h6 class="card-title">
									<a href="#">Item Eight</a>
								</h6>
							</div>
						</div>

						<div class="col-lg-4 col-md-6 mb-4">
							<a href="#"> 
								<img class="card-img-top" src="../resources/img/9.jpg" alt="" style="border-radius: calc(.25rem - 1px); width: 105px; height: 60px;">
							</a>
							<div class="card-body" style="padding: 0.25rem;">
								<h6 class="card-title">
									<a href="#">Item Nine</a>
								</h6>
							</div>
						</div>
						<a href="board/article/24/list" style="float: left; margin-left: 80%;">더보기</a>
					</div>
				</div>
				<!-- /.row -->
			<!-- </div>
			/.col-lg-9 -->
		
	</div>
	<!-- /.row -->
	</div>
	<!-- /.container -->
<%@include file="footernav.jsp"%>
</body>
</html>