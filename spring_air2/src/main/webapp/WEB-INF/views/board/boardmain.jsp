<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
계시판으로 이동 성공<br>
<div>
	<table>
		<c:forEach var="boardVO" items="${boardVO }">
			<tr>
				<td>${boardVO.board_num }</td>
				<td><a href='/board/read?board_num=${boardVO.board_num }'>${boardVO.title}</a></td>
				<td>${boardVO.regdate }</td>
				<td>${boardVO.viewcount }</td>
			</tr>						
		</c:forEach>
	</table>
</div>

<div>
		<c:if test="${pageMaker.prev}">
			<li><a href="boardmain?page=${pageMaker.startPage - 1}">&laquo;</a></li>
		</c:if>
		
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage }" var="idx">
			<li <c:out value="${pageMaker.cri.page==idx?'class=active':'' }"/>>
					<a href="boardmain?page=${pageMaker.makeQuery(idx) }">${idx }</a>
			</li>
		</c:forEach>
		
		<c:if test="${pageMaker.next && pageMaker.endPage>0 }">
			<li><a href="boardmain?page=${pageMaker.makeQuery(pageMaker.endPage+1) }">[다음]</a></li>
		</c:if>
</div>
	
</body>
</html>