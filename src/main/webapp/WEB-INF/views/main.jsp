<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>

	<div align="center">
		<hr width="500" color="blue">
		<h3>:::EMP 테이블 메인페이지:::</h3>
		<hr width="500" color="blue">
		
		<a href="<%=request.getContextPath()%>/emp_list.do">[전체목록]</a>
	</div>
</body>
</html>
