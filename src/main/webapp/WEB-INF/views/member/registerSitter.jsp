<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>


<style>
body {
	font-family: Arial, sans-serif;
	/* background-color: #FFCD4A; */
	margin: 0;
	padding: 0;
}

.container {
	max-width: 500px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 0 10px #FFCD4A /* rgba(0, 0, 0, 0.1) */;
	border-radius: 5px;
	margin-top: 50px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 15px;
}

.form-group2 {
	margin-bottom: 15px;
	display: flex;
	justify-content: center;
}

label {
	display: block;
	margin-bottom: 5px;
}

input[type="text"], input[type="email"], input[type="password"], input[type="address"]
	{
	width: 60%;
	padding: 5px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

select {
	width: 30%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

input[type="submit"] {
	width: 90%;
	padding: 10px;
	background-color: #FFB600;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #FFCD4A;
}

.error-message {
	color: #ff0000;
	margin-top: 10px;
}

.btn { 
	padding: 5px; 
	font-size: 0.9em; 
	margin-left: 5px;
}

#certification { margin-left: 10px; }
</style>
</head>
<body>
	<div class="container">
		<h2><b>회 원 가 입</b></h2>
		<form action="/register" method="POST">
			<div class="form-group">
				<label for="id">아 이 디 :</label> 
				<input type="text" id=" id" name="id"required> 
				<button type="button" onclick="open_idcheck()" class="btn btn-outline-info">
					중복체크
				</button>
			</div>
			<div class="form-group">
				<label for="password">비 밀 번 호 :</label>
				<input type="password" id="password" name="password" required
					placeholder="8~16자 대,소,특수문자 모두 포함">
			</div>
			<div class="form-group">
				<label for="confirmPassword">비 밀 번 호 확 인 :</label> 
				<input type="password" id="confirmPassword" name="confirmPassword" required>
			</div>
			<div class="form-group">
				<label for="nickname">닉 네 임 :</label> 
				<input type="text" id="nickname" name="nickname" required placeholder="특수문자 사용 불가">
				<button type="button" onclick="open_idcheck()" class="btn btn-outline-info">
					중복체크
				</button>
			</div>
			<div class="form-group">
				<label for="email">이 메 일 :</label> 
				<input type="email" id="email" name="email" required> 
				<select id="email" name="email">
					<option value="vet">@google.com</option>
					<option value="trainer">@naver.com</option>
					<option value="beautician">@daum.net</option>
					<option value="sitter">직접입력</option>
				</select>
				<input type="email" id="email"name="email" required placeholder="직접 입력"> 
			</div>
			<div class="form-group">
				<label for="name">이 름 :</label> 
				<input type="text" id="name" name="name" required>
			</div>
			<div class="form-group">
				<label for="phone"> 휴 대 폰 번 호 :</label> 
				<input type="text" id="phone" name="phone" required> 
				<button type="button" onclick="open_idcheck()" class="btn btn-outline-info">
					본인인증
				</button>
			</div>
			<div class="form-group">
				<label for="dob">생 년 월 일 :</label> 
				<input type="text" id="dob" name="dob" required>
			</div>
			<div class="form-group">
				<label for="address"> 주 소 :</label> 
				<input type="text" id="address" name="address" required> 
				<button type="button" onclick="open_idcheck()" class="btn btn-outline-info">
					우편번호 찾기
				</button>
				<input type="text" id="detailedAddress" name="detailedAddress" required 
					placeholder="상세주소 입력">
			</div>
			<div class="form-group">
				<label for="expert">전 문 가 확 인 :</label> 
				<select id="expert" name="expert">
					<option value="vet">수의사</option>
					<option value="trainer">훈련사</option>
					<option value="beautician">미용사</option>
					<option value="sitter">시터교육수료</option>
				</select>
				<input type="file" class="form-control-file-borderss" name="certification" id="certification">
			</div>
			<div class="form-group">
				<label for="experience">경 험 :</label>
				<textarea id="experience" name="experience" rows="4" required
					placeholder="반려동물을 키운 경험이나, 돌봄이력 등을 자유롭게 기재 하세요."></textarea>
			</div>
			<div class="form-group2">
				<input type="submit" value="회 원 가 입">
			</div>
			<div class="error-message">
				<!-- error message  -->
			</div>
		</form>
	</div>
</body>
</html>
