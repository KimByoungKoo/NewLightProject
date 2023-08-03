<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>information</title>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/member/information.css" />

</head>
<body>
   <%@include file="/app/header.jsp"%>
   <form
      action="${pageContext.request.contextPath}/mypage/mypageEditOk.me"
      method="post" enctype="multipart/form-data">
      <section>
         <div class="info-container">
            <div class="info-menu">
               <form
                  action="${pageContext.request.contextPath}/mypage/mypageEdit.me"
                  method="post">
                  <h4>회원 정보 수정</h4>
                  <fieldset>
                     <div class="info-people info">
                     <c:if test="${not empty memberDTO.getMemberPfp()}">
                        <img
                           src="${pageContext.request.contextPath}/userProfile/${memberDTO.getMemberPfp()}"
                           alt="" class="info-people-img" value="${memberDTO.getMemberPfp()}"/>
                           </c:if>
                           <c:if test="${empty memberDTO.getMemberPfp()}">
                           <img src="${pageContext.request.contextPath}/assets/img/member/people.png"
                     class="info-people-img">
                           </c:if>
                        <button type="button" class="pfp-btn">사진 변경</button>
                        <input type="file" class="pfp-input" name="memberPfp">
                     
                     </div>
                     <div class="info-name info">
                        <label for="id-change">이름 </label> <input type="text"
                           name="memberName" id="id-chnage" required
                           value="${memberDTO.getMemberName()}" readonly />
                           <span></span>
                     </div>
                     <div class="info-id info">
                        <label for="id-change">아이디 </label> <input type="text"
                           name="memberId" id="id-chnage" required
                           value="${memberDTO.getMemberId()}" readonly />
                           <span></span>
                     </div>
                     <div class="info-pw">
                        <label for="pw-change">비밀번호 </label> <input type="password"
                           name="memberPassword" id="pw-change" required  value="${memberDTO.getMemberPassword()}"/> 
                           <span></span>
                           <div class="info-pw-sub">
                           <span
                           class="check-msg" id="check-pw-msg"></span>
                           </div>
                     </div>
                     
                     <div class="info-phone info">
                        <label for="id-change">핸드폰 번호 </label> <input type="text"
                           name="memberPhoneNumber" id="id-chnage" required value="${memberDTO.getMemberPhoneNumber()}"/>
                           <span></span>
                     </div>
                     <div class="info-nickname info">
                        <label for="nickname-change">닉네임
                        <span class="count">(<span class="nickname-count">0</span>/300)</span> 
                         </label> <input
                           type="text" name="memberNickname" id="nickname-change" required value="${memberDTO.getMemberNickname() }"/>
                        <span></span>
                        <div class="info-pw-sub">
                        <span class="check-msg" id="check-nickname-msg"></span>
                        </div>
                     </div>
                     <div class="info-selfy info">
                        <label for="selfy-change">
                        한 줄 소개
                        <span class="count">(<span class="selfy-count">0</span>/800)</span>
                        </label> <input
                           type="text" name="memberComment" id="selfy-change" required value="${memberDTO.getMemberComment()}"/>
                           <span></span>
                     </div>
                     <div class="info-address1 info">
                        <label for="address1-change">주소</label> <input type="text"
                           name="memberAddress1" id="address1-change" required  value="${memberDTO.getMemberAddress1()}"/>
                           <span></span>
                     </div>
                     <div class="info-address2 info">
                        <label for="address2-change">상세주소</label> <input type="text"
                           name="memberAddress2" id="address2-change" required value="${memberDTO.getMemberAddress2()}"/>
                           <span></span>
                     </div>
                     <div class="info-email info">
                        <label for="email-change">이메일</label> <input type="text"
                           name="memberEmail" id="email-change" required value="${memberDTO.getMemberEmail()}"/>
                           <span></span>
                     </div>
                     <div class="info-website info">
                        <label for="website-change">웹 사이트</label> <input type="text"
                           name="memberWebsite" id="web-change" placeholder="http://"
                           required value="${memberDTO.getMemberWebsite()}"/>
                           <span></span>
                     </div>
                     <div class="user-delete">
                        <a
                           href="${pageContext.request.contextPath}/member/memberDeleteOk.me"
                           class="userDelete">*회원 탈퇴하기</a>
                     </div>
                     <div class="cencel-save">
                        <button>
                           <a
                              href="${pageContext.request.contextPath}/mypage/creationsOk.mp">
                              취소</a>
                        </button>
                        <button>저장</button>
                     </div>
                  </fieldset>
            </div>
         </div>
      </section>
   </form>
       <%@include file ="/app/footer.jsp" %>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/member/checkNickname.js"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/member/delete.js"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/member/information.js"></script>
</body>
</html>