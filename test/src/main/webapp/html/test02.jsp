<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
* {
	padding: 0px;
	margin: 0px;
}

header {
	display:flex;
	background: #f6f5ef;
}
.content_nav > ul {
	display: flex;
}
td {
width: 50px;
height: 50px;
background: gray;
}
table {
width: 600px;
height: 400px;
}
</style>
<body>
	<header>
		<div class="header_container">
			<div class="header_content">
				<div class="content_nav">
					<ul>
						<li>Sign in</li>
						<li>My Starbucks</li>
						<li>Customer Service & ideas</li>
						<li>Find a Store</li>
					</ul>
				</div>
				<div class="content_menu">
					<ul class="menu">
						<li>1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<hr>
	<table>
		<tr align="left">
			<td colspan="2">1</td>
			<td>2</td>
		</tr>
		<tr>
			<td>3</td>
			<td>4</td>
			<td rowspan="2">5</td>
		</tr>
		<tr>
			<td>6</td>
			<td>7</td>
		</tr>
	</table>
	<p>테이블 합치기 실습</p>
	<table>
		<tr>
			<td rowspan="2">1</td>
			<td>2</td>
			<td>3</td>
			<td>4</td>
		</tr>
		<tr>
			<td colspan="3">5</td>
		</tr>
		<tr>
			<td>6</td>
			<td rowspan="2">7</td>
			<td>8</td>
			<td>9</td>
		</tr>
		<tr>
			<td rowspan="2">10</td>
			<td colspan="2">11</td>
		</tr>
		<tr>
			<td rowspan="2" colspan="2">12</td>
			<td rowspan="2">13</td>
		</tr>
		<tr>
			<td>14</td>
		</tr>
	</table>
</body>
</html>