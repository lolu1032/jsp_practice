<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	img {
		width: 300px;
		height: 400px;
	}
	a:hover {
		color: blue;
	}
</style>
</head>
<body>
<header>
	<h1>태그연습 - 제목</h1>
	<h2>태그2</h2>
	<h3> 네그3</h3>
</header>
<section>
	<div>
		문단 태그 div
	</div>
	<hr>
	<p>
		피입니다
	</p>
	<hr>
	<div>
		이미지 불러오기<br>
		<img src="../images/1.jpg">
		<img src="./images/1.jpg">
		<img src="/images/1.jpg">
	</div>
</section>
<nav>
	<div>
		문서연결하기 : 하이퍼 <br>
		<a href="http://www.naver.com">네이버로가기</a>
		<a href="http://www.daum.net">다음으로가기</a><br>
		<a href="../index.jsp">index으로 이동하기</a>
	</div>
</nav>
</body>
</html>