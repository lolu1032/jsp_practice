<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	//response.sendRedirect("layout.jsp");
%>
<script>
	location.href="layout.jsp";
</script>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<jsp:include page="../include/head.jsp"></jsp:include>
<%@include file="../include/head.jsp"%>
</head>
<body>
	<div class="frame">
		<div class="header">
			<jsp:include page="../include/top.jsp"></jsp:include>
		</div>

		<div class="container">
			<div class="nav">
				<jsp:include page="../include/nav.jsp"></jsp:include>
			</div>
			<div class="content">
				<h1>전송된 결과</h1>
				<%=id  %>,<%=pass %>
			</div>
		</div>

		<div class="footer">
			<jsp:include page="../include/foot.jsp"></jsp:include>
		</div>

	</div>

</body>
</html>