<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>

<style>
.y1{
	margin-bottom:70px;
	text-align:center;
	padding:30px;
}

.y2{
	background-color: #EBFFE3;
	padding:20px;
	text-align:left;
	height:320px;
	margin-bottom:15px;
	border-radius:20px;
}

.y3{
	background-color: #E2F6FF;
	padding:20px;
	text-align:left;
	height:320px;
	margin-bottom:30px;
	border-radius:20px;
}

.i{
	height:220px;
	width:250px;
	float:left;
	margin-right:40px;
	clear:both;
	background-color:gray;
}

a{
	float:right;
	color:inherit;
}

.info p { line-height: 2; }

</style>

<div class="y1">
	<div align="center" class="col-md-8 offset-md-2 my-4" >
		<h2 style="font-weight: bold">내 반려동물 정보</h2>
	</div>
	<a href="${myctx}/general/petregi">정보 등록</a>
	<br><br>

	<div class="y2">
		<div style="margin-bottom: 12px;">
			<b>내 반려동물 정보</b>
			<a href="#">수정</a>
		</div>
		<div class="i">
			<img src="#">
		</div>
		<div class="info">
			<p>
				<b>이름 : </b>
				<br>
				<b>세부 종 : </b>
				<br>
				<b>생년월일 : </b>
				<br>
				<b>종류  : </b>
				<br>
				<b>성별 : </b>
				<br>
				<b>몸무게 : </b>
				<br>
				<b>특이사항 : </b>
			</p>
		</div>
	</div><br><br>
	
	<div class="y3">
		<div style="margin-bottom: 12px;">
			<b>내 반려동물 정보</b>
			<a href="#">수정</a>
		</div>
		<div class="i">
			<img src="#">
		</div>
		<div class="info">
			<p>
				<b>이름 : </b>
				<br>
				<b>세부 종 : </b>
				<br>
				<b>생년월일 : </b>
				<br>
				<b>종류  : </b>
				<br>
				<b>성별 : </b>
				<br>
				<b>몸무게 : </b>
				<br>
				<b>특이사항 : </b>
			</p>
		</div>
	</div>
</div>
