<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
</script>	

<title>좌석 확인</title>

<div id=container>
	<table id="choice_seat_list">
		<c:forEach items="${listcheck }" var="seatVO">
				<tr>
					<td id="seat_num">${seatVO.seat_num }</td>
					<%-- <td id="seat_YN">${seatVO.seat_YN }</td> --%>
					<td id="air_name">${seatVO.air_name }</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan=20>
					<button type="submit" id='goPayment'>결제하기</button>
				</td>
			</tr>		
	</table>
</div>





