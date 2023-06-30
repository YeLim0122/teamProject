<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<script type="text/javascript">
	$(function() {
		
		// 빈 하트 누르면 빨간하트로, 빨간하트 한번 더 누르면 빈 하트로 바뀜
		// 찜 목록에 반영해야 함
		/* let num = 0;
		$('.heart').click(function() {
			if(num == 0) {
				$(this).attr("src", "../images/full_heart.png");
				num = 1;
			} else {
				$(this).attr("src", "../images/heart.png");
				num = 0;
			}
		}) */
		
		
/* 		// 전송할 데이터는 wcheck 값, 
		let num = 0;	// WishVO의 wcheck 값으로 여부 체크 -> 0이 빈 하트, 1이 빨간 하트
		$('.heart').click(function() {
			let ino = $('#ino').val();
			console.log("ino: "+ino);
			// 로그인 체크 => 로그인 안했으면 메시지 후 로그인 페이지로, 로그인 했으면 찜 반영
			
			if(num == 0) {
				$.ajax({
					type:'put',
					url:'find',	// .do 파일 활용해보자 
					data: {ino: ino},
					dataType:'json',
					cache:false,
					success: function(res){
						alert(res);
					},
					error: function(err){
						alert('error: '+err.status);
					}
				})
				$(this).attr("src", "${myctx}/images/full_heart.png");
				num = 1;
			}
			else {
				$(this).attr("src", "${myctx}/images/heart.png");
				num = 0;
			}
		
		}) */
		
		
		$('.heart').click(function() {
			
			let ino = $(this).attr('id');
			// 로그인 체크 해서 unickname 넘겨줘야 할 듯.
			
			console.log("heart-click");
			
			if ($(this).attr('src') == "${myctx}/images/heart.png") {
				console.log("빈 하트 클릭"+ino);
				
				$.ajax({
					url:'heart.do',
					type:'get',
					data:{ino:ino},
					success: function(res){
						alert(res);
						/* let heart = res.heart; (?? vo.heart)
						console.log("찜 추가 성공"); */
					},
					error: function(err){
						alert('error: '+err.status);
					}
					
				});
				// 꽉 찬 하트로 이미지 변경
				$(this).attr("src", "${myctx}/images/full_heart.png");
				
			}
			else {
				console.log("꽉 찬 하트 클릭"+ino);
				
				$.ajax({
					url:'removeHeart.do',
					type:'get',
					data:{ino:ino},
					success:function(res){
						alert(res);
						/* let heart = res.heart; (?? vo.heart)
						console.log("찜 삭제 성공"); */
					},
					error: function(err){
						alert('error: '+err.status);
					}
				});
				// 빈 하트로 이미지 변경
				$(this).attr("src", "${myctx}/images/heart.png");
				
			}
			
		})
		
	})
	
	function check(){
		if(!$('#addr').val()){
			alert('검색할 동 이름을 입력하세요.');
			$('#addr').focus();
			return false;
		}
		return true;
	}

	
</script>

<style>
	.sitter { border:1px solid #ddddee; margin-bottom: 20px; }
	.sitter td { padding: 5px; }
	.sitter a { color: inherit; }
	#search { margin-bottom: 30px; }
	#searchT { width: 90%; margin-top: 20px; text-align: center; 
				font-family: 'omyu_pretty'; font-size: 1.4em; }
	#addr { padding: 4px 10px; font-size: 0.8em; }
	#btnfindSitter { padding: 4px 10px; font-size: 0.9em;}
	#menu { font-family: 'KOTRAHOPE'; font-size:2.7em; /* font-weight:bold; */ }
	#tbody { font-family: 'omyu_pretty'; margin-top: 7px; }
</style>

<div class="row">
		<div align="center" class="col-md-8 offset-md-2 my-4" >
			<h2 id="menu">펫시터 찾기</h2>
		</div>
		<div align="center" class="col-md-8 offset-md-2" id="search">
		<form name="findAddr" id="findAddr" method="get" action="find" onsubmit="return check()">
			<table class="table table-borderless" id="searchT">
				<tr>
				<td style="width: 18%; vertical-align: middle;">지역 검색</td>
				<td style="width: 67%;">
					<input type="text" name="findAddr" id="addr" class="form-control"
							placeholder="동 이름을 입력하세요. (반포동)">
				</td>
				<td style="width: 15%;">
					<button id="btnfindSitter" class="btn btn-success">검색</button>
				</td>
				</tr>
			</table>
		</form>
		<!-- ---------- -->
		<input type="hidden" name="findAddr" value="${paging.findAddr}">
		
	</div>
		<div class="col-md-8 offset-md-2 ">
			<c:forEach var="item" items="${sitter}">
				<div class="sitter">
					<table class="table table-borderless" id="tbody">
						<tr>
							<td rowspan="6" style="vertical-align: middle; text-align:center; width: 30%;">
								<img src="${myctx}/images/pet1.jpg" style="width: 200px">
							</td>
							<td style="font-size: 1.3em; font-weight: bold; padding: 5px; width: 60%;
										vertical-align: middle; color: #5D5D5D">
								<c:out value="${item.nickname}" />  <!-- 전문가 인증이 되었다면 인증마크 --> 
							</td>
							<td style="text-align: right; width: 10%;">
								<!-- 클릭하면 빨간 하트로 이미지 바뀜. 찜목록에 반영 해야 함-->
								<img src="${myctx}/images/heart.png" class="heart" id="${item.ino}" style="width: 25px">
								
							</td>
						</tr>
						<tr>
							<td colspan="2" style="font-size: 1.4em; font-weight: bold;">
								<a href="${myctx}/shop/info"><c:out value="${item.title}" /></a>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="font-size: 1.2em;"><c:out value="${item.short_content}" /></td>
						</tr>
						<tr>
							<td colspan="2" style="font-size: 1.2em; ">~~~~~</td>
						</tr>
						<tr>
							<td colspan="2" style="font-size: 1.2em;">~~~~~</td>
						</tr>
						<tr>
							<td style="font-size: 1.3em; font-weight: bold;"><c:out value="${item.addr}" /></td>
						</tr>
					</table>
				</div>
				<input type="hidden" name="ino" id="ino" value="${item.ino}">
			</c:forEach>
			<table class="table table-borderless">
				<tr>
					<td colspan="3" style="text-align: center">
						${pageNavi}
					</td>
				</tr>
			</table>
		</div>
</div>
