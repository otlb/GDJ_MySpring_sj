<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temps/bootStrap_css.js"></c:import>
</head>
<body>
<c:import url="../temps/header.jsp]"></c:import> 

	<section>
	<table>
	<c:forEach items="${requestScope.list}", value="dto" >
		<tr>
		<td>${dto.productNum}</td>
		<td><a href="/product/detail?productNum=${dto.productNum}">${dto.productName}</a></td>
		<td>${dto.productcontents}</td>
		<td>${dto.productRate}</td>
		<td>${dto.productJumsu}</td>
		</tr>
	</c:forEach>
	</table>
	
	
	</section>
<c:import url=" ../temps/bootStrap_js.jsp"></c:import>
</body>
</html>