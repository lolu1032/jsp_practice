<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page session="true"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인폼</title>
<jsp:include page="../include/head.jsp"></jsp:include>
<%@include file="../include/head.jsp" %>
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
         <h1>로그인</h1>
				<form action="Login_ok.jsp" method="get">
					id: <input type="text" name="id"><br> 
					pass: <input type="password" name="pass"><br> 
						<input type="submit">
				</form>
			</div>
   </div>
   
   <div class="footer">
       <jsp:include page="../include/foot.jsp"></jsp:include>
   </div>

</div>

</body>
</html>