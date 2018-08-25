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
</body>
</html>