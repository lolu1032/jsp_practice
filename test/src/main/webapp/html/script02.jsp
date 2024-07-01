<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.h {
	display: flex;
}

.img_container {
	display: flex;
	width: 300px;
	height: 100px;
	overflow: visible;
}

.img_box>img {
	display: flex;
	width: 300px;
	height: 100px;
}
</style>
<body>
	<div class="h">
		<button class="prev"><</button>
		<div class="img_container">
			<div class="img_content">
				<div class="img_box">
					<img alt="" src="../images/2.jpg">
				</div>
				<div class="img_box">
					<img alt="" src="../images/3.jpg">
				</div>
				<div class="img_box">
					<img alt="" src="../images/4.jpg">
				</div>
			</div>
		</div>
		<button class="next">></button>
	</div>
	<script type="text/javascript">
		const nextbtn = document.querySelector('.next');
		const prevbtn= document.querySelector('.prev');
		const img = document.querySelectorAll("img");
		nextbtn.addEventListener('click',() => {
			img.forEach((img,index) => {
		           if (index === 0) {
		                img.style.transform = "translateY(-100px)";
		            }else {
		                img.style.transform = "translateY(-100px)";
		            }
			})
		})
		prevbtn.addEventListener('click',() => {
			img.forEach((img,index) => {
		           if (index === 0) {
		                img.style.transform = "translateY(0px)";
		            }else {
		                img.style.transform = "translateY(0px)";
		            }
			})
		})
	</script>
</body>
</html>