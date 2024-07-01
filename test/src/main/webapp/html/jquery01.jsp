<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.content{
		width: 400px;
		color: #ccc;
		background-color: #000;
	}
</style>


<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(document).ready(() => {
		$("#of").click(() => {
			$("p").hide();
		});
		$("#on").click(() => {
			$("p").show();
		});
		$(".h").click(()=> {
			$(".content").fadeOut("slow");
		});
		$(".s").click(()=> {
			$(".content").fadeIn("slow");
		});
	});
</script>
</head>
<body>
	<p>메시지 : 제이쿼리를 공부하고있습니다.</p>
	<button id="of">메시지 삭제</button>
	<button id="on">메시지 보이기</button>
	<hr>
	<button class="h">아래 문단 숨기기</button>
	<button class="s">문단 보이기</button>
	<div class="content">
		천천히 사라지고<br>
		나타나고
	</div>
</body>
</html>