<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temps/bootStrap_css.jsp"></c:import>
</head>
<body>
<c:import url="../temps/header.jsp"></c:import>
<h3>${dto.productNum}</h3>
<h3>${dto.productName}</h3>
<h3>${dto.productContents}</h3>
<h3>${dto.productRate}</h3>
<h3>${dto.productJumsu}</h3>

<c:import url="../temps/bootStrap_js.jsp"></c:import>
</body>
</html>