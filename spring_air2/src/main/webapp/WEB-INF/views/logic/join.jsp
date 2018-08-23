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
	<form	name="joinform" action="joinSuccess.do" method="post">


	<table>
		<tr>
			<td colspan=2><h1>회원가입 페이지</h1></td>
		</tr>
		<tr>
			<td style="text-align:right;">아이디 :</td>
			<td>
				<input type="text" name="id" id="id" value="아이디">
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">비밀번호 :</td>
			<td>
				<input type="password" name="pass" id="pass"  value="비밀번호">
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">이름 :</td>
			<td>
				<input type="text" name="koname" id="kpname" value="이름">
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">영어이름 :</td>
			<td>
				<input type="text" name="engname" id="engname" value="영어이름">
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
				<input type="text" name="birth" id="birth" value="생일">
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">전화번호 :</td>
			<td>
				<input type="text" name="tel" id="tel" value="전화번호">
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">이메일 주소 :</td>
			<td>
				<input type="text" name="email" id="email">
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">여권번호 :</td>
			<td>
				<input type="text" name="passport" id="passport" value="여권번호">
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">국적 :</td>
			<td>
				<input type="text" name="nation" id="nation" value="국적">
			</td>
		</tr>
		
		<tr>
			<td colspan=2>
				<a href="javascript:joinform.submit()">회원 가입</a> &nbsp;&nbsp;
				<a href="javascript:joinform.reset()">다시작성</a> &nbsp;&nbsp;
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