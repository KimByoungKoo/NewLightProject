<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/creations/creations.css">
</head>
<body>
	<!-- 헤더 -->
	<%@include file="/app/header.jsp"%>
	<form
		action="${pageContext.request.contextPath}/creations/creationRead.ct"
		method="post">
		<hr>
		<main>
			<input type="hidden" name="creationNumber" value="${creation.getCreationNumber()}">
			<div class="main">
				<div class="main-box-bin"></div>
				<div class="creations-background-title">
					<h3>
						<c:out value="${creation.getCreationTitle()}" />
					</h3>
				</div>
				<div class="background-creations-main">
					<div class="creations-info">
						<div class="creations-img">
							<img
								src="${pageContext.request.contextPath}/userProfile/${creation.getMemberPfp()}">
						</div>
						<div class="creations-author">
							<span> <c:out value="${creation.getMemberNickname()}" />
							</span>
						</div>
						<c:if
							test="${sessionScope.memberNumber !=  creation.getMemberNumber()}">
							<div class="follow-btn"
								data-memberNumber="${creation.getMemberNumber() }">
								<a href="#" class="follower">팔로우 ✔</a>
							</div>
							<div class="follow-btn none"
								data-memberNumber="${creation.getMemberNumber() }">
								<a href="#" class="follower">팔로우 ➕</a>
							</div>
						</c:if>

					</div>
					<div class="creations-main">
						<div class="creations-main-content">
							<c:forEach var="creationFile" items="${creation.getFiles()}">
								<img
									src="${pageContext.request.contextPath}/upload/${creationFile.getFileSystemName()}">

								<div class="download-btn-wrap">
									<div class="theme-down-box">
										<div class="folder-icon">
											<img
												src="${pageContext.request.contextPath}/assets/img/folder.png"
												alt="" />
											<div class="donwload-name"><c:out value="${creationFile.getFileSystemName()}"></c:out></div>
										</div>
										<div class="download-icon">
											<a
												href="${pageContext.request.contextPath}/creationFile/download.ccmf?fileSystemName=${creationFile.getFileSystemName()}&fileOriginalName=${creationFile.getFileOriginalName()}"
												class=""> <img
												src="${pageContext.request.contextPath}/assets/img/download.png"
												alt="" />
											</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>

						
						<div class="creations-comment-content">
							<span> <c:out value="${creation.getCreationContent()}" />
							</span>
						</div>
					</div>
					
					<div class="click-main">
						<div class="click">
							<div class="creations-like"
								data-likeNumber="${creation.getCreationNumber()}">
								<c:if
									test="${sessionScope.memberNumber !=  creation.getCreationNumber()}">
									
									<c:choose>
										<c:when test="${isLike == 0}">
											<a href="#" class="likeplus"> <img
												src="${pageContext.request.contextPath}/assets/images/member/IMG_1993.png">
											</a>
										</c:when>
										<c:otherwise>
											<a href="#" class="likeplus"> <img
												src="${pageContext.request.contextPath}/assets/images/member/free-icon-hearts-138533.png">
											</a>
										</c:otherwise>
									</c:choose>
									
								</c:if>
								<span class="likeCount"> <c:out value="${likeCount }" />
								</span>

							</div>
							
							<%-- <div class="creations-like none" data-likeNumber="${creation.getCreationNumber()}">
            <a href="#" class="likeplus">
             <img src="${pageContext.request.contextPath}/assets/images/member/free-icon-hearts-138533.png">
            </a>
            <c:out value="${likeCount }"/>
          </div> --%>

							<div class="creations-comment">
								<img
									src="${pageContext.request.contextPath}/assets/images/member/pngegg.png">
								<span><c:out value="${creationComment }" /></span>
							</div>
						</div>

						<div class="click-btn">
							<c:if
								test="${sessionScope.memberNumber == creation.getMemberNumber() }">
								<div class="edit-btn">
									<a
										href="${pageContext.request.contextPath}/creations/creationUpdate.ct?creationNumber=${creation.getCreationNumber()}">수정</a>
								</div>
								<div class="delete-btn">
									<a href="#">삭제</a>
								</div>
							</c:if>
							<div class="list-btn"
								data-creationNumber="${creation.getCreationNumber() }">
								<a
									href="${pageContext.request.contextPath}/creations/pageListOk.ct">목록</a>
							</div>

						</div>
						</div>
					</div>
				

				<div class="comment">
					<div class="comment-input">
						<input type="hidden" name="creationNumber"
							value="${creation.getMemberNumber() }">
						<div class="comment-text">
							<textarea name="commentContent" id="content" placeholder="댓글 내용을 입력하세요."></textarea>
						</div>
						<div class="comment-ok-btn">
							<button type="button" class="comment-submit commnet-btn-ok">등록</button>
						</div>
					</div>

					<div class="comment-border">

					</div>
				</div>
				</div>
		</main>
	</form>
	<!-- 푸터 -->
	<%@include file="/app/footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		let memberNumber = "${sessionScope.memberNumber}";
	</script>
	<script
		src="${pagetContext.request.contextPath}/assets/js/creation/creation.js"></script>
</body>
</html>