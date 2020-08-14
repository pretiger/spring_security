<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script>
function join(){
	location.href="${path}/user/join.do";
}
</script>
</head>
<body>
<h2>로그인 하세요</h2>
<span style="color: red;">${errMsg}</span>
<form method="post" action="${path}/user/login_check.do">
<!-- XSS공격을 방어하기 위해서 스프링 시큐리티에서 방드시 아래 값을 전달해야 에러가 발생하지 않음 -->
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
<table>
	<tr>
		<td>아이디</td>
		<td><input name="userid"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="passwd"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="로그인">
			<input type="button" value="회원가입" onclick="join()">
			<input type="button" value="목록" onclick="location.href='${path}/'">
		</td>
	</tr>
</table>
</form>
</body>
</html>