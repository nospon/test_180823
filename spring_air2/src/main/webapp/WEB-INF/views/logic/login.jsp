<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>login</title>
</head>
<body>
<section id="loginformArea">
	<form	name="loginform" action="loginSusessce.do" method="post">
	

	<table>
		<tr>
			<td colspan=2><h1>로그인 페이지</h1></td>
		</tr>
		<tr>
			<td style="text-align:right;">아이디 :</td>
			<td>
				<input type="text" name="id" id="id">
			</td>
		</tr>
		<tr>
			<td style="text-align:right;">비밀번호 :</td>
			<td>
				<input type="text" name="pass" id="pass">
			</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td colspan=2>
				<a href="javascript:loginform.submit()">로그인</a> &nbsp;&nbsp;
				<a href="join.do">회원가입</a>	&nbsp;&nbsp;
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

<script>
	
</script>
