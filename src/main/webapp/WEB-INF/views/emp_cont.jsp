<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<hr width="500" color="gray">
		<h3>:::emp상세보기 페이쥥:::</h3>
		<hr width="500" color="gray">

		<c:set var="dto" value="${cont }"></c:set>
		<table border="1" cellspacing="0" width="500">
			<tr>
				<th>사원번호</th>
				<td>${dto.getEmpno() }<input type="hidden"
					value="${dto.getEmpno() }"></td>
			</tr>
			<tr>
				<th>사원이름</th>
				<td>${dto.getEname() }</td>
			</tr>
			<tr>
				<th>담당업무</th>
				<td>${dto.getJob() }</td>
			</tr>
			<tr>
				<th>관리자번호</th>
				<td>${dto.getMgr() }</td>
			</tr>
			<tr>
				<th>입사일자</th>
				<td>${dto.getHiredate().substring(0,10) }</td>
			</tr>
			<tr>
				<th>급여</th>
				<td>${dto.getSal() }</td>
			</tr>
			<tr>
				<th>보너스</th>
				<td>${dto.getComm() }</td>
			</tr>
			<tr>
				<th>부서번호</th>
				<td>${dto.getDeptno() }</td>
			</tr>
			<tr>
				
				<td colspan="2" align="center">
					<input type="button" onclick="location.href='emp_update.do?no=${dto.getEmpno()}'" value="수정">
					<input type="button" onclick="location.href='emp_delete.do?no=${dto.getEmpno()}'" value="삭제">
					<input type="button" onclick="location.href='emp_list.do'" value="목록으로">
				</td>
			</tr>
			
		</table>

	</div>
</body>
</html>