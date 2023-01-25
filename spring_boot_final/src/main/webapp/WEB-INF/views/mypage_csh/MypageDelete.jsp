<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원탈퇴</title>
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				height: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 400px;
			}
		</style>
	</head>
	<body>
	<div id="wrap">
	<div class="mypagedeletebox">
	<div id="mypagedelete">
					<form id="myPageForm" class="myPageForm" method="post" action="<c:url value='/myPage_csh/deleteMyPage'/>">
						<h1>회원 탈퇴</h1>
						<hr>
						
						<table>
							<tr><td>회원명</td>
									<td><input type="text" name="memName" value="${mem.memName}" readonly></td></tr>	
							<tr><td>회원아이디</td>
									<td><input type="text" name="memId" value="${mem.memId}" readonly></td></tr>
							<tr><td>비밀번호</td>
									<td><input type="password" name="memPwd" required></td></tr>
							<tr><td>비밀번호 확인</td>
									<td><input type="password" name="memPwd" required></td></tr>								
							<tr><td colspan="2">
								<input id="button" type="submit" value="탈퇴 확인">
							    <input id="button" type="reset" value="취소"></td></tr>
						</table>
					</form>
				</div>
			</div>
			<br><br>
	</div>	
	</body>
</html>
