<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%@ include file="include/header.jsp" %>
</head>
<body>
<h2>Welcom!</h2>
<h2>${msg}</h2>
<a href="${path}/admin">관리자 페이지</a><br>
<a href="${path}/user/logout.do">로그아웃</a>
</body>
</html>
