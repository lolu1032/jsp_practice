<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.hong {
		color: white;
		background-color: black;
	}
</style>
<script type="text/javascript">
	function test01() {
		alert("확인창");
		console.log("브라우저에 콘솔에 출력");
	}
	function test2(n) {
		var result = 0;
		for(var i = 0; i <= n; i++) {
			result+=1;
		}
		alert("결과는 " + result);
	}
	
	function printTime() {
		alert("로드될때 실행");
		const test = document.getElementById("testspan");
		test.innerHTML = "테스트라구요<hr>";
		test.style.color = "red";
	}
	window.onload = () => {
		printTime();
	}
	function hideT() {
		var obj = document.getElementById("test3333");
		obj.style.visibility ='hidden';
	}
	function showT() {
		var obj = document.getElementById("test3333");
		obj.style.visibility ='visible';
	}
</script>
</head>
<body>
	<div>
		<button onclick="test2(10)">결과버튼</button>
	</div>
	<div>
		<span id="testspan"></span><br>
		<span id="test2222">여기는</span><br>
		<span id="test3333">보이고</span><br>
		<button onclick="hideT()">없애는버튼</button>
		<button onclick="showT()">나타나버튼</button>
		
	</div>
	<div>
		<form>
			<input type="button" value="확인버튼" onclick="test01();">
			<button>확인버튼</button>
		</form>
	</div>
</body>
</html>