<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>

<style>
.t1{
	margin-bottom:100px;
	text-align:center;
	padding:30px;
}
.t2{
	background-color:rgb(255, 251, 224);
	padding:20px;
	text-align:left;
	height:300px;
	width:49%;
	float:left;
	border-radius:20px;
	margin-bottom: 30px;
}
.t3{
	background-color:rgb(243, 232, 166);
	padding:20px;
	text-align:left;
	height:300px;
	width:49%;
	float:right;
	border-radius:20px;
	margin-bottom: 30px;
}

.t3, .t4, .t5 {
		overflow-y: scroll;
		-ms-overflow-style: none; /* 인터넷 익스플로러 */
		scrollbar-width: none; /* 파이어폭스 */
	}
.t3::-webkit-scrollbar {
	    display: none; /* 크롬, 사파리, 오페라, 엣지 */
	}
	
.t4::-webkit-scrollbar {
	    display: none; /* 크롬, 사파리, 오페라, 엣지 */
	}
	
.t5::-webkit-scrollbar {
	    display: none; /* 크롬, 사파리, 오페라, 엣지 */
	}

.t4{
	background-color:rgb(243, 232, 166);
	padding:20px;
	text-align:left;
	height:300px;
	width:49%;
	float:left;
	border-radius:20px;
	margin-bottom: 30px;
}
.t5{
	background-color:rgb(255, 251, 224);
	padding:20px;
	text-align:left;
	height:300px;
	width:49%;
	float:right;
	border-radius:20px;
	margin-bottom: 30px;
}
.t6{
	clear: both;
	background-color:rgb(255, 251, 224);
	padding:20px;
	text-align:left;
	height:250px;
	margin-bottom:30px;
	border-radius:20px;
	
}
.t7{
	clear: both;
	background-color:rgb(243, 232, 166);
	padding:20px;
	text-align:left;
	height:300px;
	margin-bottom:30px;
	border-radius:20px;
}
a{
	float:right;
	color:inherit;
}
.i1{
	height:150px;
	width:150px;
	float:left;
	margin-right:20px;
	clear:both;
	background-color:gray;
}
.i2{
	height:160px;
	width:320px;
	float:left;
	margin-left: 20px;
	margin-right:15px;
	clear:both;
	/* background-color:gray; */
	display: inline-block;
}


.i2 img { width: 150px; }

.i3{
	height:150px;
	width:150px;
	float:left;
	margin-right:40px;
	clear:both;
	background-color:gray;
	display: inline-block;
}


span.ingredient {
    color: #f00;
}  
/* .map-frame{
  text-align: center;
  margin: 50px 0;
} */

.map-content{
  width:35%;
  margin: auto;
  border-radius:10px;
  overflow: hidden;
}

.addrInfo { float:left; }
.addrInfo input { margin-top: 8px; padding: 5px; margin-right: 13px;}
.addrInfo button { float:right; margin-top: 8px; }

#reviewbtn { padding: 3px; font-size: 0.9em; }
</style>

<div class="t1">
	<div align="center" class="col-md-8 offset-md-2 my-4" >
		<h2 style="font-weight: bold">마이페이지 (일반)</h2>
	</div>
	<a href="#">회원정보수정</a>
	<br><br>

	<div class="t2">
		<b>내 반려동물 정보</b>
		<a href="${myctx}/general/petinfo">등록/수정</a>
		<br><br>
		<div class="i1">
			<img src="#<!-- 값 들어갈 곳 -->"><br><br><br><br><br><br><br>
			<b>특이사항 : </b>
		</div>
		<div>
			<b>이름 : </b><!-- 값 들어갈 곳 -->
			<br>
			<b>종류 : </b><!-- 값 들어갈 곳 -->
			<br>
			<b>세부 종 : </b><!-- 값 들어갈 곳 -->
			<br>
			<b>성별 : </b><!-- 값 들어갈 곳 -->
			<br>
			<b>태그 : </b><!-- 값 들어갈 곳 -->
			<br>
			<b>생년월일 : </b><!-- 값 들어갈 곳 -->
			<br>
			<b>몸무게 : </b><!-- 값 들어갈 곳 -->
			<br>
		</div>
	</div>
	<div class="t3">
		<b>찜 목록 (스크롤)</b>
		<br><br>
		<!-- 찜 개수 만큼 반복문 돌기 -->
		<div class="wish" style="clear:both;">
			<div style="float:left; margin-right: 30px; margin-bottom:15px;">
				<b><span class="ingredient">&#10084;</span>닉네임</b>
			</div>
			<div style="float:left; margin-bottom:15px;">
				한 줄 소개:<br>
				지역:<br>
			</div>
		</div>
		<div class="wish" style="clear:both;">
			<div style="float:left; margin-right: 30px; margin-bottom:15px;">
				<b><span class="ingredient">&#10084;</span>닉네임</b>
			</div>
			<div style="float:left; margin-bottom:15px;">
				한 줄 소개:<br>
				지역:<br>
			</div>
		</div>
		<div class="wish" style="clear:both;">
			<div style="float:left; margin-right: 30px; margin-bottom:15px;">
				<b><span class="ingredient">&#10084;</span>닉네임</b>
			</div>
			<div style="float:left; margin-bottom:15px;">
				한 줄 소개:<br>
				지역:<br>
			</div>
		</div>
		<div class="wish" style="clear:both;">
			<div style="float:left; margin-right: 30px; margin-bottom:15px;">
				<b><span class="ingredient">&#10084;</span>닉네임</b>
			</div>
			<div style="float:left; margin-bottom:15px;">
				한 줄 소개:<br>
				지역:<br>
			</div>
		</div>
	</div>
	<div class="t4">
		<b>이용 내역 및 리뷰 (스크롤)</b>
		<a href="#">더보기</a><br><br>
		
		<div class="used" style="clear:both; font-size:1em; margin-left:10px;">
			<div style="float:left; width:40%">
				<span>펫시터 닉네임</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:40%;">
				<span>2023-05-04</span>
			</div>
			<div style="float:right; margin-bottom:15px; width:20%;">
				<button class="btn btn-outline-dark" style="padding: 5px; font-size: 0.9em;">리뷰 쓰기</button>
			</div>
		</div>
		<div class="used" style="clear:both; font-size:1em; margin-left:10px;">
			<div style="float:left; width:40%">
				<span>펫시터 닉네임</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:40%;">
				<span>2023-05-04</span>
			</div>
			<div style="float:right; margin-bottom:15px; width:20%;">
				<button class="btn btn-outline-dark" style="padding: 5px; font-size: 0.9em;">리뷰 쓰기</button>
			</div>
		</div>
		<div class="used" style="clear:both; font-size:1em; margin-left:10px;">
			<div style="float:left; width:40%">
				<span>펫시터 닉네임</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:40%;">
				<span>2023-05-04</span>
			</div>
			<div style="float:right; margin-bottom:15px; width:20%;">
				<button class="btn btn-outline-dark" style="padding: 5px; font-size: 0.9em;">리뷰 쓰기</button>
			</div>
		</div>
		<div class="used" style="clear:both; font-size:1em; margin-left:10px;">
			<div style="float:left; width:40%">
				<span>펫시터 닉네임</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:40%;">
				<span>2023-05-04</span>
			</div>
			<div style="float:right; margin-bottom:15px; width:20%;">
				<button class="btn btn-outline-dark" style="padding: 5px; font-size: 0.9em;">리뷰 쓰기</button>
			</div>
		</div>
		<div class="used" style="clear:both; font-size:1em; margin-left:10px;">
			<div style="float:left; width:40%">
				<span>펫시터 닉네임</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:40%;">
				<span>2023-05-04</span>
			</div>
			<div style="float:right; margin-bottom:15px; width:20%;">
				<button class="btn btn-outline-dark" style="padding: 5px; font-size: 0.9em;">리뷰 쓰기</button>
			</div>
		</div>
		<div class="used" style="clear:both; font-size:1em; margin-left:10px;">
			<div style="float:left; width:40%">
				<span>펫시터 닉네임</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:40%;">
				<span>2023-05-04</span>
			</div>
			<div style="float:right; margin-bottom:15px; width:20%;">
				<button class="btn btn-outline-dark" style="padding: 5px; font-size: 0.9em;">리뷰 쓰기</button>
			</div>
		</div>
		
		<!-- <b>팻시터 닉네임</b> &nbsp;&nbsp; <b>이용 날짜</b> &nbsp;&nbsp;<input type="submit" value="리뷰쓰기"><br><br>
        <b>팻시터 닉네임</b> &nbsp;&nbsp; <b>이용 날짜</b> &nbsp;&nbsp;<input type="submit" value="리뷰쓰기"><br><br>
        <b>팻시터 닉네임</b> &nbsp;&nbsp; <b>이용 날짜</b> &nbsp;&nbsp;<input type="submit" value="리뷰쓰기"><br><br>
        <b>팻시터 닉네임</b> &nbsp;&nbsp; <b>이용 날짜</b> &nbsp;&nbsp;<input type="submit" value="리뷰쓰기"> -->
	</div>
	<div class="t5">
		<b>채팅 내역 (스크롤)</b>
		<a href="#">삭제</a>
		<br><br>
		
		<div class="chat" style="clear:both; font-size:1em;">
			<div style="float:left; width: 20%;">
				<input type="checkbox" name="service" value="#<!-- 값 들어갈 곳 -->">
				<span><b>닉네임</b></span>
			</div>
			<div style="float:left; margin-bottom:15px; width:60%;">
				<span>마지막 채팅</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:20%;">
				<span>2023-06-05</span>
			</div>
		</div>
		<div class="chat" style="clear:both; font-size:1em;">
			<div style="float:left; width: 20%;">
				<input type="checkbox" name="service" value="#<!-- 값 들어갈 곳 -->">
				<span><b>닉네임</b></span>
			</div>
			<div style="float:left; margin-bottom:15px; width:60%;">
				<span>마지막 채팅</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:20%;">
				<span>2023-06-05</span>
			</div>
		</div>
		<div class="chat" style="clear:both; font-size:1em;">
			<div style="float:left; width: 20%;">
				<input type="checkbox" name="service" value="#<!-- 값 들어갈 곳 -->">
				<span><b>닉네임</b></span>
			</div>
			<div style="float:left; margin-bottom:15px; width:60%;">
				<span>마지막 채팅</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:20%;">
				<span>2023-06-05</span>
			</div>
		</div>
		<div class="chat" style="clear:both; font-size:1em;">
			<div style="float:left; width: 20%;">
				<input type="checkbox" name="service" value="#<!-- 값 들어갈 곳 -->">
				<span><b>닉네임</b></span>
			</div>
			<div style="float:left; margin-bottom:15px; width:60%;">
				<span>마지막 채팅</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:20%;">
				<span>2023-06-05</span>
			</div>
		</div>
		<div class="chat" style="clear:both; font-size:1em;">
			<div style="float:left; width: 20%;">
				<input type="checkbox" name="service" value="#<!-- 값 들어갈 곳 -->">
				<span><b>닉네임</b></span>
			</div>
			<div style="float:left; margin-bottom:15px; width:60%;">
				<span>마지막 채팅</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:20%;">
				<span>2023-06-05</span>
			</div>
		</div>
		<div class="chat" style="clear:both; font-size:1em;">
			<div style="float:left; width: 20%;">
				<input type="checkbox" name="service" value="#<!-- 값 들어갈 곳 -->">
				<span><b>닉네임</b></span>
			</div>
			<div style="float:left; margin-bottom:15px; width:60%;">
				<span>마지막 채팅</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:20%;">
				<span>2023-06-05</span>
			</div>
		</div>
		<div class="chat" style="clear:both; font-size:1em;">
			<div style="float:left; width: 20%;">
				<input type="checkbox" name="service" value="#<!-- 값 들어갈 곳 -->">
				<span><b>닉네임</b></span>
			</div>
			<div style="float:left; margin-bottom:15px; width:60%;">
				<span>마지막 채팅</span>
			</div>
			<div style="float:left; margin-bottom:15px; width:20%;">
				<span>2023-06-05</span>
			</div>
		</div>
		
		<%-- <input type="checkbox" name="service" value="#<!-- 값 들어갈 곳 -->"> <b>닉네임</b> 마지막 채팅 날짜<br><br>
		<input type="checkbox" name="service" value="#<!-- 값 들어갈 곳 -->"> <b>닉네임</b> 마지막 채팅 날짜<br><br>
		<input type="checkbox" name="service" value="#<!-- 값 들어갈 곳 -->"> <b>닉네임</b> 마지막 채팅 날짜<br><br>
		<input type="checkbox" name="service" value="#<!-- 값 들어갈 곳 -->"> <b>닉네임</b> 마지막 채팅 날짜<br><br>
		<input type="checkbox" name="service" value="#<!-- 값 들어갈 곳 -->"> <b>닉네임</b> 마지막 채팅 날짜 --%>
	</div>
	<div class="t6">
	   <b>돌봄 기록</b>
	   <a href="${myctx}/sitter/record">더보기</a>
	   <br><br>
		<div class="i2">
			<img src="${myctx}/images/pet1.jpg"><!-- 값 들어갈 곳 -->
			<img src="${myctx}/images/pet1.jpg"><!-- 값 들어갈 곳 --> 
		</div>
		<b style="font-size:1.1em;">날짜 </b><!-- 값 들어갈 곳 -->
		<br>
		<b style="font-size:1.1em;">펫시터 닉네임</b><!-- 값 들어갈 곳 -->
		<br><br>
		<p>돌봄 기록 내용</pss><!-- 값 들어갈 곳 -->
		<br><br>

	</div>
    <div class="t7">
       <b>우리 동네 정보</b>
	   <a href="#">등록/수정</a>
	   	   <br><br>
	   <div class="map-frame">
		     <div class="map-content" style="float:left;">
			     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.4265244579956!2d127.02601207645192!3d37.497857228062216!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca159effab6a1%3A0x2c7fcbe64938c1ad!2z7Iqk7YOA67KF7IqkIOqwleuCqFLsoJA!5e0!3m2!1sko!2skr!4v1686754047184!5m2!1sko!2skr" width="225" height="225" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	         </div>
	         <form method="" action="">
			    <div class="addrInfo">
			    	<b>주소(검색 api 사용해도 ok)</b><br>
			    	<input type="text" name="addr" id="addr">
			    	<button type="button" class="btn btn-outline-dark">검색</button>
			    	<hr>
			    	<b>사용자가 저장한 주소 보여주기</b>
			    </div>
		    </form>

		</div>
	 
	</div>
</div>
	    
<div style="clear:both; margin-bottom:50px"></div>