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
		<hr width="500" color="tomato">
		<h3>::: EMP 테이블 사원등록 폼 :::</h3>
		<hr width="500" color="tomato">
		<br /> <br />

		<form method="post"
			action="<%=request.getContextPath()%>/emp_write_ok.do">
			<table border="1" cellspacing="0" width="300">
				<tr>
					<th>사원번호</th>
					<td><input type="text" name="empno"></td>
				</tr>
				<tr>
					<th>사원명</th>
					<td><input type="text" name="ename"></td>
				</tr>
				<tr>
					<th>담당업무</th>
					<td><input type="text" name="job"></td>
				</tr>
				<tr>
					<th>관리자번호</th>
					<td><input type="text" name="mgr"></td>
				</tr>
				<tr>
					<th>급여</th>
					<td><input type="text" name="sal"></td>
				</tr>
				<tr>
					<th>보너스</th>
					<td><input type="text" name="comm"></td>
				</tr>
				<tr>
					<th>부서번호</th>
					<td>
					<c:set var="dept" value="${dept }" />
					<c:if test="${empty dept }">
						<select>
							<option value="">:::부서번호없음:::</option>
						</select>
					</c:if>
					<c:if test="${!empty dept }">
						<select name="deptno">
							<c:forEach items="${dept }" var="dto">
								<option value="${dto.getDeptno() }">${dto.getDname() }[${dto.getDname() }]</option>
							</c:forEach>
						</select>
					</c:if>
					</td>

				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="사원등ㄺ"> <input type="reset" value="다시작성"></td>
				</tr>
			</table>

		</form>
	</div>
</body>
</html>