<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.important {
		font-weight: bold;
		font-size: 40px;
	}
	.blue {
		color: blue;
	}
	.red {
		color: red;
		border: 1px solid blue;
	}
</style>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(document).ready(() => {
		$("#add").click(()=> {
			$("h1,h2").addClass("blue").fadeOut("slow");
			$("div").addClass("important");
		});
		$("#remove").click(()=> {
			$("h1,h2").removeClass("blue").fadeIn("slow");
			$("div").removeClass("important");
		});
		$("#toggle").click(()=>{
			$("h1,h2,div").toggleClass("red");
		});
		$("#kang").click(()=>{
			$("p").css({
				"background-color" :  "yellow",
				"font-size" : "200%"
			});
		});
	});
</script>


</head>
<body>
	<p>정윤휘</p>
	<div>2024년 8월16일에 여행감</div>
	<p>강승현</p>
	<div>지각</div>
	<p>조재현</p>
	<div>운동중</div>
	<p>장현세</p>
	<div>집가는중</div>
	<p>윤채영</p>
	<div>덩달아 가는중</div>
	<p>유종현</p>
	<div>지각</div>
	<button id="kang">이름 강조</button>
	
	<hr>
	<h1>스타일 지정</h1>
	<h2>addClass() / removeClass() / css()</h2>
	<button id="add">스타일추가</button>
	<button id="remove">스타일해제</button>
	<button id="toggle">class toggle하기</button>
</body>
</html>