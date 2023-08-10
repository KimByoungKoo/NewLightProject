<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/findPw.css">
</head>
<body>
	<!-- 헤더 -->
	<%@include file="/app/header.jsp"%>

	<form
		action="${pageContext.request.contextPath}/member/memberFindPwOk.me"
		class="form">
		<article class="fullpadding">
			<article class="pwfind">
				<h2>비밀번호 찾기</h2>
				<span class="small"> - 본인인증을 완료한 회원님은 휴대폰을 이용하여 비밀번호를 찾으실 수
					있습니다.<br>

				</span>
				<div>
					<div class="tabs2">
						<ul class="tabs-nav2">
							<li><a href="#tab-4" id="findPw">휴대폰</a></li>
						</ul>
						<div class="tabs-stage2">
							<div id="tab-4">
								<label class="user-id">아이디 </label> <input class="txt Id"
									type="text" id="id" placeholder="아이디를 입력해주세요" name="memberId">
								<span class="check-msg" id="check-id-msg"></span> <br> <label
									class="user-name">이름</label><input class="txt name" id="name"
									type="text" placeholder="이름을 입력해주세요" name="memberName">
								<span class="check-msg" id="check-name-msg"></span> <br> <label
									class="user-phone">휴대폰 번호</label> <input type="tel"
									class="phone" id="phone" placeholder="휴대폰 번호를 입력하세요"
									maxlength="11" name="memberPhoneNumber"> <span
									class="check-msg" id="check-phone-msg"></span>
								<button class="okbtn" type="button">확인</button>
							</div>
						</div>
					</div>
				</div>
			</article>
		</article>
		<!-- 푸터 -->
		<%@include file="/app/footer.jsp"%>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script>
			let success = "${success}";
		</script>
		<script
			src="${pageContext.request.contextPath}/assets/js/member/findPw.js"></script>
	</form>
</body>
</html>



