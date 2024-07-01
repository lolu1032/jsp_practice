<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(document).ready(()=>{
		var xWidth = 100;
		var yHeight = 100;
		
		$("div").click(() => {
			$(this).width(xWidth).addClass("box");
			$(this).height(yHeight).addClass("box");
			xWidth = xWidth - 10;
			yHeight = yHeight - 10;
		});
	});
</script>
<style>
div{
	width: 100px;
	height: 100px;
}
	.box {
		background-color: yellow;
	}
</style>
<body>

</body>
</html>