<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	#d { height: 250px; }
	#sitter, #general { 
		float:left;
		margin: 30px 30px 30px 20px;
		height: 90%;
		width: 40%;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); 
		text-align: center;
		padding: 80px 0;
		font-weight: bold;
		font-size: 1.6em;
		cursor: pointer;
	}

	#sitter {
		background-color: #EBFFE3;
	}
	
	#general { background-color:#E2F6FF; }
	
</style>
    
<div class="row">
	<div class="col-8 offset-2" id="d">
		<div id="sitter" onclick="location.href='${myctx}/joinS';">
			<span>펫시터로 <br> 가입하기</span>
		</div>
		<div id="general" onclick="location.href='${myctx}/joinG';">
			<span>일반회원으로 <br> 가입하기</span>
		</div>
	</div>
</div>