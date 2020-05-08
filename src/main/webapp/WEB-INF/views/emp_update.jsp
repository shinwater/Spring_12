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
		<hr width="500" color="yellow">
		<h3>:::EMP사우너정보 수정포ㅁ펭지:::</h3>
		<hr width="500" color="yellow">

		<form action="<%=request.getContextPath()%>/emp_update_ok.do">
			<c:set var="dto" value="${cont }" />

			<table border="1" cellspacing="0" width="300">
				<c:if test="${!empty dto }">
					<tr>
						<th>사원번호</th>
						<td><input type="text" name="empno"
							value="${dto.getEmpno() }" readonly></td>
					</tr>
					<tr>
						<th>사원명</th>
						<td><input type="text" name="ename"
							value="${dto.getEname() }" readonly></td>
					</tr>
					<tr>
						<th>담당업무*</th>
						<td><input type="text" name="job" value="${dto.getJob() }"></td>
					</tr>
					<tr>
						<th>관리자번호*</th>
						<td><input type="text" name="mgr" value="${dto.getMgr() }"></td>
					</tr>
					<tr>
						<th>급여*</th>
						<td><input type="text" name="sal" value="${dto.getSal() }"></td>
					</tr>
					<tr>
						<th>보너스*</th>
						<td><input type="text" name="comm" value="${dto.getComm() }"></td>
					</tr>
					<tr>
						<th>부서번호*</th>
						<td><c:set var="dept" value="${dept }" /> 
						<c:if test="${empty dept }">
								<select>
									<option value="">:::부서번호없음:::</option>
								</select>

						</c:if> 
						<c:if test="${!empty dept }">
								<select name="deptno">
									<c:forEach items="${dept }" var="dept">
										<c:if test="${dto.getDeptno()  == dept.getDeptno() }">
											<option value="${dept.getDeptno() }" selected>${dept.getDname() }[${dept.getDeptno() }]</option>
										</c:if>
										<c:if test="${dto.getDeptno() != dept.getDeptno() }">
											<option value="${dept.getDeptno() }">${dept.getDname() }[${dept.getDeptno() }]</option>
										</c:if>
									</c:forEach>
								</select>
							</c:if></td>

					</tr>
				</c:if>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="사원등ㄺ"> <input type="reset" value="다시작성"></td>
				</tr>
			</table>

		</form>

	</div>

</body>
</html>