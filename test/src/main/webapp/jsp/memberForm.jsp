<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<jsp:include page="../include/head.jsp"></jsp:include>
<%@include file="../include/head.jsp"%>
</head>
<script>
	function Validation() {
		let id = document.getElementById("uid");
		let pw = document.getElementById("pw");
		let cpw = document.getElementById("cpw");
		let mail = document.getElementById("mail");
		let uname = document.getElementById("uname");
		let num = document.getElementById("num");
		
		var regMail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		var regIdPw = /^[a-zA-Z0-9]{4,12}$/;
		var regName = /^[가-힣a-zA-Z]{2,15}$/;
		var regJumin = /^[0-9]{6}[1234]{1}[0-9]{6}$/; // 수정된 주민등록번호 정규표현식
		if(!regIdPw.test(uid.value)){
            alert("정규식")
            uid.focus();
            return false;
        }else if(uid.value.length < 4 && uid.value.length > 12) {
        	 alert("4~12자 영문 대소문자, 숫자만 입력하세요.")
             uid.focus();
             return false;
        }else if(cpw.value != pw.value) {
        	 alert("비밀번호가 틀립니다.")
             cpw.focus();
             return false;
        }else if(pw.value.length < 4 && pw.value.length > 12) {
        	alert("4~12자 영문 대소문자, 숫자만 입력하세요.")
            pw.focus();
            return false;
        }else if(pw.value == "") {
        	alert("비밀번호를 입력해주세요")
            pw.focus();
            return false;
        }else if(!regMail.test(mail.value)) {
        	alert("이메일제대로")
            mail.focus();
            return false;
        }else if(mail.value == "") {
        	alert("이메일입력해주세요")
            mail.focus();
            return false;
        }else if(!regName.test(uname.value)) {
        	alert("이름정규식")
            uname.focus();
            return false;
        } else if (!regJumin.test(num.value)) {
            alert("주민등록번호를 올바르게 입력해주세요.");
            num.focus();
            return false;
        }
		document.joinForm.submit();
	}
</script>
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
				<form name="joinForm" action="member_ok.jsp" method="post">
					<table text-align="center" align="center" border="1" width="800"
						height="600" cellspacing="0">
						<tr>
							<td bgcolor="#48dbfb" align="center" colspan="2" height="50"><b>회원
									기본 정보</b></td>
						</tr>
						<tr>
							<td bgcolor="#c8d6e5" align="center" width="150">아이디:</td>
							<td bgcolor="white"><input type="text" size="20" name="uid"
								id="uid" minlength="4" maxlength="12"> 4~12자의 영문 대소문자의
								숫자로만 입력</td>
						</tr>
						<tr>
							<td bgcolor="#c8d6e5" align="center">비밀번호:</td>
							<td bgcolor="white"><input type="password" size="20"
								name="pw" id="pw" minlength="4" maxlength="12"> 4~12자의
								영문 대소문자의 숫자로만 입력</td>
						</tr>
						<tr>
							<td bgcolor="#c8d6e5" align="center">비밀번호확인:</td>
							<td bgcolor="white"><input type="password" size="20"
								name="cpw" id="cpw"></td>
						</tr>
						<tr>
							<td bgcolor="#c8d6e5" align="center">메일주소:</td>
							<td bgcolor="white"><input type="email" size="30"
								name="mail" id="mail"> 예) id@domain.com</td>
						</tr>
						<tr>
							<td bgcolor="#c8d6e5" align="center">이름:</td>
							<td bgcolor="white"><input type="text" size="30"
								name="uname" id="uname"></td>
						</tr>
						<tr>
							<td bgcolor="#48dbfb" align="center" colspan="2" height="50"><B>개인
									신상 정보</B></td>
						</tr>
						<tr>
							<td bgcolor="#c8d6e5" align="center">주민등록번호:</td>
							<td bgcolor="white"><input maxlength="13" type="text"
								size="30" name="num" id="num">예) 1234561234567</td>
						</tr>
						<tr>
							<td bgcolor="#c8d6e5" align="center">생일:</td>
							<td bgcolor="white"><input type="text" size="8" name="year"
								id="year">년 <select name="month" id="month">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select>월 <select name="day" id="day">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
							</select>일</td>
						</tr>
						<tr>
							<td bgcolor="#c8d6e5" align="center">관심분야:</td>
							<td bgcolor="white"><input type="checkbox" name="hobby"
								value="computer">컴퓨터&nbsp;&nbsp; <input type="checkbox"
								name="hobby" value="net">인터넷&nbsp;&nbsp; <input
								type="checkbox" name="hobby" value="trable">여행&nbsp;&nbsp;
								<input type="checkbox" name="hobby" value="movie">영화감상&nbsp;&nbsp;
								<input type="checkbox" name="hobby" value="music">음악감상&nbsp;&nbsp;
							</td>
						</tr>
						<tr height="100">
							<td bgcolor="#c8d6e5" align="center" rowspan="2">자기소개:</td>
							<td bgcolor="white"><textarea rows="10" cols="75" name="me"
									id="me"> </textarea></td>
						</tr>
					</table>
					<br>
					<div align="center">
						<button type="button" width="30" onclick="Validation()">회원
							가입</button>
						<input type="reset" onclick="alert('초기화 했습니다.')" value="다시 입력">
					</div>
				</form>
			</div>
		</div>

		<div class="footer">
			<jsp:include page="../include/foot.jsp"></jsp:include>
		</div>

	</div>
</body>
</html>