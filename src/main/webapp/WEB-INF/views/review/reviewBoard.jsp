<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- taglib functions -------------------------------------------- -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- ------------------------------------------------------------- -->

<%--
jstl 
- core
- fmt
- function
 --%>
 
<style>
/* 스타일링을 위한 CSS */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 20px;
}

table {
	clear:both;
	width: 80%;
	border-collapse: collapse;
	margin: 20px auto;
	text-align: center;
}

th, td {
	padding: 10px;
	border: 1px solid #ccc;
}

th {
	background-color: #f0f0f0;
	text-align: center;
}

.write-button {
	margin-bottom: 20px;
	margin-right: 70px;
	float: right;
}

.write-button a {
	display: inline-block;
	padding: 7px 17px;
	background-color: #007bff;
	color: #fff;
	text-decoration: none;
	border-radius: 4px;
}

.write-button a:hover {
	background-color: #0056b3;
}


</style>

<body>
	<div align="center" class="col-md-8 offset-md-2 my-4" >
		<h2 style="font-weight: bold">후기 게시판</h2>
	</div>

	<div class="write-button">
		<a href="#">글쓰기</a>
	</div>

	<table>
		<thead>
			<tr>
				<th width="15%">글번호</th>
				<th width="40%" class="title">제목</th>
				<th width="15%">작성자</th>
				<th width="15%">작성일</th>
				<th width="15%">조회수</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>첫 번째 후기</td>
				<td>작성자1</td>
				<td>2023-06-01</td>
				<td>100</td>
			</tr>
			<tr>
				<td>2</td>
				<td>두 번째 후기</td>
				<td>작성자2</td>
				<td>2023-06-02</td>
				<td>75</td>
			</tr>
		</tbody>
	</table>
</body>

