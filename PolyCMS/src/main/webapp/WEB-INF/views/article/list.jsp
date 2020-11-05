<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div>
		<h2>게시물 목록</h2>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일시</th>
						<th>조회</th>
						
					</tr>
				</thead>
				<tbody>
				<c:if test="${list.size()<1}">
					<tr>
						<td colspan="4">등록된 게시물이 없습니다.</td>
					</tr>
					</c:if>
					
					<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.articleId}</td>
						<td><a href="${item.articleId}/view">${item.subject}</a></td>
						<td>${item.regDate}</td>
						<td>${item.viewCount}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<span><a href="add">등록</a></span>
			<span><a href="dummy">대량등록</a></span>
			<span><a href="../../list">목록으로</a></span>
		</div>
	</div>
</body>
</html>