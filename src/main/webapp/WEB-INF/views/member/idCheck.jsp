<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	.jumbotron, .navbar, footer {
		display: none;
	}
</style>

<script type="text/javascript" src="./js/memberCheck.js"></script>


<div class="container m2" style="margin-top:2em">
	<form name="idf" action="idCheck" method="post">
		<label for="mid">아이디</label>
		<input type="text" name="mid" id="userid" class="form-control" 
		placeholder="User ID" autofocus="autofocus">
		<button type="button" class="btn btn-success" onclick="id_check()">확 인</button>
	</form>
</div>


