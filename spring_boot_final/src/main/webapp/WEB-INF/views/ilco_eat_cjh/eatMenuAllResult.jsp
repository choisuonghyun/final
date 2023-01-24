<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메뉴 확인</title>
	<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
	<script src="<c:url value='/js/js_cjh/eatMenuAll.js'/>"></script>
	<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eatMenuAll.css"/>'>
	</head>
	<body>
		오늘 메뉴 (( 오늘 날짜 이후 전체)))<br>
		<div class="searchBox">
			<form method="get" action="/ilcoeat/searchMenuAll">
			</form>
		</div>
	<div class="box" id="ListBox">
		<c:forEach var="menu" items="${menuAllList}" >
			<section>
				<c:choose>
					<c:when test="${menu.menu_type == 'Day-A'}">
						<c:set var="type" value="점심 A-타입"/>
					</c:when>
					<c:when test="${menu.menu_type == 'Day-B'}">
						<c:set var="type" value="저녁 A-타입"/>
					</c:when>
					<c:when test="${menu.menu_type == 'Night-A'}">
						<c:set var="type" value="저녁 A-타입"/>
					</c:when>
					<c:when test="${menu.menu_type == 'Night-B'}">
						<c:set var="type" value="저녁 B-타입"/>
					</c:when>
					<c:otherwise>
						<div class="row">
							관리자가 일을 안하네요^^;;
						</div>
					</c:otherwise>
				</c:choose>
		
				<div class="row">
					<div class="elmt"><div class="elmt1">${menu.menu_date}</div><div class="elmt2">${type }</div><div class="elmt3"> "${menu.mainMenu}"/"${menu.subMenu}"/"${menu.other}"</div></div>
				</div>
			</section>
		</c:forEach>
	</div>
	</body>
</html>