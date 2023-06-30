<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
.v{
	margin-bottom:100px;
	text-align:center;
	padding:30px;
}
.v2{
	background-color:rgb(255, 251, 224);
	padding:20px;
	text-align:left;
	line-height:1.7;
	height:250px;
	margin-bottom:30px;
	border-radius:20px;
}
.v3{
	background-color:rgb(243, 232, 166);
	padding:20px;
	text-align:left;
	height:450px;
	margin-bottom:30px;
	border-radius:20px;
}
.v4{
	background-color:rgb(255, 251, 224);
	padding:20px;
	text-align:left;
	height:300px;
	width:49%;
	float:left;
	border-radius:20px;
}
.v5{
	background-color:rgb(243, 232, 166);
	padding:20px;
	text-align:left;
	height:300px;
	width:49%;
	float:right;
	border-radius:20px;
}
a{
	float:right;
	color:inherit;
}
.i{
	height:150px;
	width:150px;
	float:left;
	margin-right:20px;
	clear:both;
	background-color:gray;
}
.i2{
	height: 90%;
	width:50%;
	float:left;
	margin-right:20px;
	clear:both;
	background-color:white;
	font-size: 11px;
	
}
.i3{
	width:100%;
	height:200px;
}

.i3 {
		overflow: auto;
		-ms-overflow-style: none; /* 인터넷 익스플로러 */
		scrollbar-width: none; /* 파이어폭스 */
	}
.i3::-webkit-scrollbar {
	    display: none; /* 크롬, 사파리, 오페라, 엣지 */
	}

.i3 td {
	padding: 5px;
}

.v4 .t td, .v3 table td {
	padding: 5px;
}


</style>
<script>
	function del(){
		/* DB 완료 후 수정할 곳 */
		alert("a");
	}
</script>
<div class="v">
	<div align="center" class="col-md-8 offset-md-2 my-4" >
		<h2 style="font-weight: bold">마이페이지 (펫시터)</h2>
	</div>
	
	<a href="#<!-- 값 들어갈 곳 -->">회원정보수정</a>
	<br><br>
	<div class="v2">
		<b>내 소개</b>
		<a href="${myctx}/sitter/introduce">등록/수정</a>
		<br><br>
		<!-- if문 넣어서 등록 정보 없으면 안보이게할 내용 -->
		<div class="i">
			<img src="#<!-- 값 들어갈 곳 -->">
		</div>
		<b>닉네임 : </b><!-- 값 들어갈 곳 -->
		<br>
		<b>지역 : </b><!-- 값 들어갈 곳 -->
		<br>
		<b>소개 제목 : </b><!-- 값 들어갈 곳 -->
		<br>
		<b>간단한 소개 (2~3줄) : </b><!-- 값 들어갈 곳 -->
		<br>
		<b>태그 : </b><!-- 값 들어갈 곳 -->
	</div>
	<div class="v3">
		<b>돌봄 일정</b>
		<br><br>
		<div class="i2">
			<%@include file="./calendar.jsp" %>
		</div>
		<table>
		<!-- 반복문 들어가는 것으로 수정할 곳 -->
		<tr>
			<td width="35%"><b>6월 1일 ~ 3일<!-- 값 수정할 곳 --></b></td>
			<td width="25%">'닉네임'님<!-- 값 수정할 곳 --></td>
			<td width="25%">'반려동물이름'<!-- 값 수정할 곳 --></td>
		</tr>
		<tr>
			<td><b>6월 8일 ~ 9일<!-- 값 수정할 곳 --></b></td>
			<td>'닉네임'님<!-- 값 수정할 곳 --></td>
			<td>'반려동물이름'<!-- 값 수정할 곳 --></td>
		</tr>
		<tr>
			<td><b>6월 20일 ~ 22일<!-- 값 수정할 곳 --></b></td>
			<td>'닉네임'님<!-- 값 수정할 곳 --></td>
			<td>'반려동물이름'<!-- 값 수정할 곳 --></td>
		</tr>
		<!--  
		<b>6월 8일 ~ 9일값 수정할 곳</b> '닉네임'님 - '반려동물이름'값 수정할 곳<br>
		<b>6월 20일 ~ 22일값 수정할 곳</b> '닉네임'님 - '반려동물이름'값 수정할 곳<br> -->
		</table>
	</div>
	<div class="v4">
		<b>돌봄 기록 내역</b>
		<a href="${myctx}/sitter/record">더보기</a>
		<br><br>
		<!-- 반복문 들어가는 것으로 수정할 곳 -->
		<table class="t">
			<tr>
				<td width="15%"><b>6/3<!-- 값 수정할 곳 --></b></td>
				<td width="35%"><b>이용자 닉네임<!-- 값 수정할 곳 --></b></td>
				<td width="35%"><b>반려동물 이름<!-- 값 수정할 곳 --></b></td>
			</tr>
			<tr>
				<td colspan="3" style="padding-bottom: 10px;">돌봄 기록 내용 (뭐 했는지, 특이사항 등등)값<!-- 값 수정할 곳 --></td>
			</tr>
			<tr>
				<td width="15%"><b>6/3<!-- 값 수정할 곳 --></b></td>
				<td width="35%"><b>이용자 닉네임<!-- 값 수정할 곳 --></b></td>
				<td width="35%"><b>반려동물 이름<!-- 값 수정할 곳 --></b></td>
			</tr>
			<tr>
				<td colspan="3" style="padding-bottom: 10px;">돌봄 기록 내용 (뭐 했는지, 특이사항 등등)값<!-- 값 수정할 곳 --></td>
			</tr>
			<tr>
				<td width="15%"><b>6/3<!-- 값 수정할 곳 --></b></td>
				<td width="35%"><b>이용자 닉네임<!-- 값 수정할 곳 --></b></td>
				<td width="35%"><b>반려동물 이름<!-- 값 수정할 곳 --></b></td>
			</tr>
			<tr>
				<td colspan="3" style="padding-bottom: 10px;">돌봄 기록 내용 (뭐 했는지, 특이사항 등등)값<!-- 값 수정할 곳 --></td>
			</tr>
			
		</table>
		
	</div>
	<div class="v5">
		<form>
		<b>채팅 내역 (스크롤)</b>
			<a href="javascript:del()">삭제</a>
			<br><br>
			<div class="i3">
				<table>
					<tr>
						<td width="10%"><input type="checkbox" name="chat" value="#<!-- 값 들어갈 곳 -->"></td>
						<td width="20%">닉네임<!-- 값 수정할 곳 --></td>
						<td width="50%">------마지막 채팅---------<!-- 값 수정할 곳 --></td>
						<td width="10%">날짜<!-- 값 수정할 곳 --></td>
					</tr>
					<tr>
						<td width="10%"><input type="checkbox" name="chat" value="#<!-- 값 들어갈 곳 -->"></td>
						<td width="20%">닉네임<!-- 값 수정할 곳 --></td>
						<td width="50%">마지막 채팅<!-- 값 수정할 곳 --></td>
						<td width="10%">날짜<!-- 값 수정할 곳 --></td>
					</tr>
					<tr>
						<td width="10%"><input type="checkbox" name="chat" value="#<!-- 값 들어갈 곳 -->"></td>
						<td width="20%">닉네임<!-- 값 수정할 곳 --></td>
						<td width="50%">마지막 채팅<!-- 값 수정할 곳 --></td>
						<td width="10%">날짜<!-- 값 수정할 곳 --></td>
					</tr>
					<tr>
						<td width="10%"><input type="checkbox" name="chat" value="#<!-- 값 들어갈 곳 -->"></td>
						<td width="20%">닉네임<!-- 값 수정할 곳 --></td>
						<td width="50%">마지막 채팅<!-- 값 수정할 곳 --></td>
						<td width="10%">날짜<!-- 값 수정할 곳 --></td>
					</tr>
					<tr>
						<td width="10%"><input type="checkbox" name="chat" value="#<!-- 값 들어갈 곳 -->"></td>
						<td width="20%">닉네임<!-- 값 수정할 곳 --></td>
						<td width="50%">마지막 채팅<!-- 값 수정할 곳 --></td>
						<td width="10%">날짜<!-- 값 수정할 곳 --></td>
					</tr>
					<tr>
						<td width="10%"><input type="checkbox" name="chat" value="#<!-- 값 들어갈 곳 -->"></td>
						<td width="20%">닉네임<!-- 값 수정할 곳 --></td>
						<td width="50%">마지막 채팅<!-- 값 수정할 곳 --></td>
						<td width="10%">날짜<!-- 값 수정할 곳 --></td>
					</tr>
					<tr>
						<td width="10%"><input type="checkbox" name="chat" value="#<!-- 값 들어갈 곳 -->"></td>
						<td width="20%">닉네임<!-- 값 수정할 곳 --></td>
						<td width="50%">마지막 채팅<!-- 값 수정할 곳 --></td>
						<td width="10%">날짜<!-- 값 수정할 곳 --></td>
					</tr>
					<tr>
						<td width="10%"><input type="checkbox" name="chat" value="#<!-- 값 들어갈 곳 -->"></td>
						<td width="20%">닉네임<!-- 값 수정할 곳 --></td>
						<td width="50%">마지막 채팅<!-- 값 수정할 곳 --></td>
						<td width="10%">날짜<!-- 값 수정할 곳 --></td>
					</tr>
					<tr>
						<td width="10%"><input type="checkbox" name="chat" value="#<!-- 값 들어갈 곳 -->"></td>
						<td width="20%">닉네임<!-- 값 수정할 곳 --></td>
						<td width="50%">마지막 채팅<!-- 값 수정할 곳 --></td>
						<td width="10%">날짜<!-- 값 수정할 곳 --></td>
					</tr>
					<tr>
						<td width="10%"><input type="checkbox" name="chat" value="#<!-- 값 들어갈 곳 -->"></td>
						<td width="20%">닉네임<!-- 값 수정할 곳 --></td>
						<td width="50%">마지막 채팅<!-- 값 수정할 곳 --></td>
						<td width="10%">날짜<!-- 값 수정할 곳 --></td>
					</tr>
				</table>
			</div>			
		</form>
	</div>
</div>

<div style="clear:both; margin-bottom:50px"></div>	