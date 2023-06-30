<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	.jumbotron, .navbar {
		display: none;
	}
</style>

<script type="text/javascript" src="./js/memberCheck.js"></script>

<c:if test="${result eq 'fail'}">
	<div class="container m2" style="margin-top:2em">
		<h3>ID [<span class="text-danger">${mid}</span>]은 이미 사용 중입니다.</h3>
		<br>
		<form name="idf" action="idCheck" method="post">
			<label for="mid">아이디</label>
			<input type="text" name="mid" id="userid"  class="form-control" 
					placeholder="User ID" autofocus="autofocus">
			<button type="button" class="btn btn-warning" onclick="id_check()">확 인</button>
		</form>
	</div>
</c:if>

<c:if test="${result eq 'success'}">
	<div class="container m2" style="margin-top:2em">
		<h3>ID로 [<span class="text-primary">${mid}</span>]을 사용할 수 있습니다.</h3>
		<br>
		<button class="btn btn-success" onclick="set_id('${mid}')">닫 기</button>
	</div>
</c:if>