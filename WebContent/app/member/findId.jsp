<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/member/findId.css">
</head>
<body>
	<!-- 헤더 -->
	<%@include file="/app/header.jsp"%>

	<form
		action="${pageContext.request.contextPath}/member/memberFindIdOk.me"
		class="form">
		<article class="fullpadding">
			<article class="idfind">
				<h2>아이디 찾기</h2>
				<span class="small">- 회원정보에 저장된 아이디 휴대폰/전화번호 이름으로 아이디를 찾을 수
					있습니다.<br>
				</span>
				<div>
					<div class="tabs">
						<ul class="tabs-nav">
							<li><a href="#tab-2" id="id">휴대폰</a></li>
						</ul>
						<div class="tabs-stage">
							<div id="tab-2">
								<label class="user-name">이름 </label> <input class="txt name"
									type="text" id="name" placeholder="이름을 입력해 주세요"
									name="memberName"> <span calss="check-msg"
									id="check-name-msg"></span> <br> <label class="user-phone">휴대폰
									번호</label> <input type="tel" id="phone" class="phone"
									placeholder="휴대폰 번호를 입력해주세요" maxlength="11"
									name="memberPhoneNumber"> <span calss="check-msg"
									id="check-phone-msg"></span>
								<button class="okbtn" type="button">확인</button>
							</div>
						</div>
					</div>
				</div>
			</article>
		</article>
	</form>
	<!-- 푸터 -->
	<%@include file="/app/footer.jsp"%>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	let success = "${success}";
</script>
<script
	src="${pageContext.request.contextPath}/assets/js/member/findId.js"></script>
</html>



