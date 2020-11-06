<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}
.content {
	width: 100%;
}
.container {
	padding-left: 400px;
}
.container li {
	padding-right: 10px;
}
</style>
<link href="resources/css/default.css" rel="stylesheet" />
<link href="resources/css/style.css" rel="stylesheet" />
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/uni.js"></script>


</head>

<body>

	<header class="header">
		<h1 class="logo">
			<a href="/">PolyCMS 2020</a>
		</h1>
		<nav class="gnb">
			<ul>
				<li><a href="board/list">게시판 관리</a></li>
				<li><a href="board/article/3/list">공지사항</a></li>
				<li><a href="board/article/4/list">FAQ</a></li>
				<li><a href="board/article/7/list">댓글 게시판</a></li>
			</ul>
		</nav>
		<div class="menu-toggle-btn">
			<img src="resources/images/menu_bar.png" alt="">
		</div>
	</header>

	<article>

		<div id="demo" class="carousel slide" data-ride="carousel">
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resources/images/main_img.jpg" alt="Los Angeles"
						width="1100" height="500">
					<div class="carousel-caption">
						<h3>Los Angeles</h3>
						<p>We had such a great time in LA!</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/images/main_img2.jpg" alt="Chicago"
						width="1100" height="500">
					<div class="carousel-caption">
						<h3>Chicago</h3>
						<p>Thank you, Chicago!</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/images/main_img3.jpg" alt="New York"
						width="1100" height="500">
					<div class="carousel-caption">
						<h3>New York</h3>
						<p>We love the Big Apple!</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>

	</article>
	<section class="content">
			<div style="text-align: center"><h2 class="sec-tit font-s2em">Site Intro</h2></div>
		<article class="container">
			<ul class="link-list">
			
			
				<div><li><a href=""> <img src="resources/images/icon1.png" alt="">
						<h3>공지사항</h3>
						<ul>
							<c:if test="${notice.size() < 1}">
								<li>등록된 게시물이 없습니다.</li>
							</c:if>
							<c:forEach var="item" items="${notice}">		
									<li><span>${item.articleId}</span> 
										<span><a href="board/article/9/${item.articleId}/view">${item.subject}</a></span>
										<span><fmt:formatDate value="${item.regDate}" pattern="yyyy-MM-dd"/></span></li>
									<br>
							</c:forEach>
						</ul>
				</a></li>
				
				<li><a href=""> <img src="resources/images/icon2.png" alt="">
						<h3>FAQ</h3>
						<ul>
							<c:if test="${faq.size() < 1}">
								<li>등록된 게시물이 없습니다.</li>
							</c:if>
							<c:forEach var="item" items="${faq}">
								<li><span>${item.articleId}</span> <span><a href="board/article/8/${item.articleId}/view">${item.subject}</a></span>
									<span><fmt:formatDate value="${item.regDate}" pattern="yyyy-MM-dd"/></span></li>
								<br>
					</c:forEach>
						</ul>
				</a></li></div>
				
				
				<div><li><a href=""> <img src="resources/images/icon3.png" alt="">
						<h3>댓글 게시판</h3>
						<ul>
							<c:if test="${faq.size() < 1}">
								<li>등록된 게시물이 없습니다.</li>
							</c:if>
							<c:forEach var="item" items="${faq}">
								<li><span>${item.articleId}</span> <span><a href="board/article/9/${item.articleId}/view">${item.subject}</a></span>
									<span><fmt:formatDate value="${item.regDate}" pattern="yyyy-MM-dd"/></span></li>
								<br>
					</c:forEach>
						</ul>
				
				</a></li>

				
				<li><a href=""> <img src="resources/images/icon4.png" alt="">
						<h3>게시판 관리</h3>
						<ul>
							<c:if test="${faq.size() < 1}">
								<li>등록된 게시물이 없습니다.</li>
							</c:if>
							<c:forEach var="item" items="${faq}">
								<li><span>${item.articleId}</span> <span><a href="board/article/8/${item.articleId}/view">${item.subject}</a></span>
									<span><fmt:formatDate value="${item.regDate}" pattern="yyyy-MM-dd"/></span></li>
								<br>
					</c:forEach>
						</ul>
	
				</a></li></div>
				
			</ul>
		</article>


		<article class="work">
			<h2 class="sec-tit font-s2em">Portfolio</h2>
			<ul class="work-section">
				<li><a href="">
						<div class="caption">
							<h3>공지사항</h3>
							<span>WEBSITE</span>
						</div> <img src="resources/images/work/work01.jpg" alt="">
				</a></li>
				<li><a href="">
						<div class="caption">
							<h3>자주하는 질문</h3>
							<span>WEBSITE</span>
						</div> <img src="resources/images/work/work02.jpg" alt="">
				</a></li>
				<li><a href="">
						<div class="caption">
							<h3>댓글 게시판</h3>
							<span>WEBSITE</span>
						</div> <img src="resources/images/work/work03.jpg" alt="">
				</a></li>
				<li><a href="">
						<div class="caption">
							<h3>프로젝트</h3>
							<span>WEB/PRINT</span>
						</div> <img src="resources/images/work/work04.jpg" alt="">
				</a></li>
				<li><a href="">
						<div class="caption">
							<h3>프로젝트</h3>
							<span>WEB/PRINT</span>
						</div> <img src="resources/images/work/work05.jpg" alt="">
				</a></li>
				<li><a href="">
						<div class="caption">
							<h3>프로젝트</h3>
							<span>WEB/PRINT</span>
						</div> <img src="resources/images/work/work06.jpg" alt="">
				</a></li>
				<li><a href="">
						<div class="caption">
							<h3>프로젝트</h3>
							<span>WEB/PRINT</span>
						</div> <img src="resources/images/work/work07.jpg" alt="">
				</a></li>
				<li><a href="">
						<div class="caption">
							<h3>프로젝트</h3>
							<span>WEB/PRINT</span>
						</div> <img src="resources/images/work/work08.jpg" alt="">
				</a></li>
			</ul>
		</article>

	</section>
	<footer class="footer">
		<p class="copyright">Copyright(c) 2020 Smart software All rights reserved</p>
	</footer>
</body>
</html>