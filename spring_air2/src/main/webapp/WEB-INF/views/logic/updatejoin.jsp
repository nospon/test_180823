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
<section id="joinformArea">
	<form name="updateform" action="updatememberlog.do" method="post">
	<table>
		<tr>
			<td colspan=2><h1>회원수정 페이지</h1></td>
		</tr>
		
		<tr>
			<td style="text-align:right;">비밀번호 :</td>
			<td>
				<input type="text" name="pass" id="pass"  >
			</td>
			<td>
				${memberVO.pass}
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">이름 :</td>
			<td>
				<input type="text" name="koname" id="koname">
			</td>
			<td>
				${memberVO.koname}
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">영어이름 :</td>
			<td>
				<input type="text" name="engname" id="engname" >
			</td>
			<td>
				${memberVO.engname}
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">성별 :</td>
			<td>
				<input type="radio" name="gender" id="gender" value="남">남자
				<input type="radio" name="gender"  value="여">여자
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">생일 : </td>
			<td>
				<input type="text" name="birth" id="birth" >
			</td>
			<td>
				${memberVO.birth}
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">전화번호 :</td>
			<td>
				<input type="text" name="tel" id="tel" >
			</td>
			<td>
				${memberVO.tel}
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">이메일 주소 :</td>
			<td>
				<input type="text" name="email" id="email">
			</td>
			<td>
				${memberVO.email}
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">여권번호 :</td>
			<td>
				<input type="text" name="passport" id="passport" >
			</td>
			<td>
				${memberVO.passport}
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">국적 :</td>
			<td>
				<input type="text" name="nation" id="nation" >
			</td>
			<td>
				${memberVO.nation}
			</td>
		</tr>
		
		<tr>
			<td colspan=2>
				<a href="javascript:updateform.submit()">수정하기</a> &nbsp;&nbsp;
				<a href="javascript:updateform.reset()">다시작성</a> &nbsp;&nbsp;
				<a href="../home.do">홈</a>
			</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
	</table>
	
	</form>
</section>
</body>
</html>