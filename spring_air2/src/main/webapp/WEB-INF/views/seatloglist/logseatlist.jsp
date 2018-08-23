<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약정보확인(로그인 됫을떄)</title>
</head>
<body>
예약확인
로그인 됫을떄
${tikread.tic_num}<br>
${tikread.engname}<br>
${login.id}
<a href="logout.do">로그아웃</a>



</body>
</html>