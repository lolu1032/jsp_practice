<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#c{
		cursor: pointer;
	}
	div.out {
		width: 200px;
		height: 100px;
		border: 1px solid #000;
		text-align: center;
		background-color: yellow;
	}
</style>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>

	var n = 0;
	$(document).ready(() => {
		$("div.out").mouseenter(function(){
			$("p:first",this).html("<b>마우스 들어옴 </b>");
			$("p:last",this).text(++n);
		});
		$("div.out").mouseleave(function() {
			$("p:first",this).text("마우스나감");
			$("p:last",this).text("최종횟수: "+n)
		});
		
		$("ans").hide();
		$(".quest01>div").click(() => {
			$(".quest01>ans").show();
		});
		$(".quest02>div").click(() => {
			$(".quest02>ans").show();
		});
	});
</script>
</head>
<body>
	<div class="out">
		<p>마우스 이벤트 알아보기</p>
		<p>0</p>
	</div>

	<div class="quest01">
		<h2>질문1 : 대한민국의 수도는?</h2>
		<div id="c">[정답 확인]</div>
		<ans>서울입니다.</ans>
		<hr>
	</div>
	<div class="quest02">
		<h2>질문 2 : 대한민국의 국보1호는?</h2>
		<div id="c">[정답 확인]</div>
		<ans>숭례문입니다.</ans>
	</div>
</body>
</html>