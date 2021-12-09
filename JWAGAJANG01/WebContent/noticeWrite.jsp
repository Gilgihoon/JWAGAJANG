<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="img/favicon/favicon.ico">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/notice.css">
<link rel="stylesheet" href="css/header_footer.css">
<title>좌가장 : 공지사항</title>
</head>
<body>
<!-- 헤더영역   -->
  <jsp:include page="H&F/header.jsp"/>
	<section>
		<div class="pagenav">
			홈<span class="navarrow"></span>게시판<span class="navarrow"></span>공지사항
		</div>
		<div class="notice">
			<h1>공지사항</h1>
			<form name="frm" method="post" action="noticeWrite.do">
			<table class="brdWritebox">
				<tr>
					<th width="150px">구분</th>
					<th>
						<select class="sortinput" name="notice_label">
							<option>선택해주세요.</option>
							<option>공지</option>
							<option>이벤트</option>
						</select>
					</th>
				</tr>
				<tr>
					<th width="150px">제목</th>
					<th><input class="titleinput" type="text" name="notice_title"></th>
				</tr>
				<tr>
					<th id="textarea">본문</th>
					<th><textarea style="resize: none;" name="notice_content"></textarea></th>
				</tr>
			</table>
			
			<div class="noticeWritebtn">
				<input type="reset" value="다시쓰기" name="reset" class="resetbtn">
				<input type="submit" value="등록" name="send" class="sendbtn" onclick="return noticeCheck()">
				<input type="submit" value="목록" name="noticelist" class="noticelistbtn">
			</div>
			</form>
		</div>
	</section>
	<!-- 푸터영역 -->
	<jsp:include page="H&F/footer.html" />
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/index.js"></script>
	<script src="js/notice.js"></script>
</body>
</html>