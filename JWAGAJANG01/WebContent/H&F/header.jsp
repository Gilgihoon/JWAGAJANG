<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
String id = (String)session.getAttribute("id");
%>

<c:set var="idchk" value="${id}" />
<c:if test="${not empty id}">
<div class="loginInfoBox">
	<p>${id} 님 안녕하세요!</p>
</div>
</c:if>

	<header id="top">   
       <div class="headerwrap">
        <div class="logo">
          <a href="./Main.me"><img class="logo_img" src="img/logo.svg" alt="로고"></a>
        </div>
        <form class="search">
          <input type="text" id="schText" name="schText"><input type="image" src="img/search.svg" id="schButton" name="schButton">
        </form>
        <nav>
          <ul class="gnbmy">
            <c:set var="loginChk" value="${id}" />
            <c:if test="${empty id}">
            <li><a href="./MemberLogin.me">로그인</a></li>
            </c:if>
            <c:if test="${not empty id}">
            <li><a href="./MemberLogout.me">로그아웃</a></li>
            </c:if>
            <c:if test="${empty id}">
            <li><a href="./MemberLogin.me">장바구니</a></li>
            </c:if>
            <c:if test="${not empty id}">
            <li><a href="#">장바구니</a></li>
            </c:if>
            <c:if test="${empty id}">
            <li><a href="./MemberJoin.me">회원가입</a></li>
            </c:if>
            <c:if test="${not empty id}">
            <li><a href="#">마이페이지</a></li>
            </c:if>
          </ul>
        </nav>
        <nav>
          <ul class=gnb>
            <li class="gnb_li"><a href="#" class="ctgry"><img src="img/allctgrybtn.svg" style="height: 12px;">  전체상품</a>
              <table class="lnb">
                <tr class="lnb_tr"><th class="lnb_th">채소·과일</th></tr>
                  <tr><td class="lnb_td"><a href="#">고구마·감자·당근</a></td></tr>
                  <tr><td class="lnb_td"><a href="#">시금치·쌈채소·나물</a></td></tr>
                  <tr><td class="lnb_td"><a href="#">브로콜리·파프리카·양배추</a></td></tr>
                  <tr><td class="lnb_td"><a href="#">양파·마늘·대파·배추</a></td></tr>
                  <tr><td class="lnb_td"><a href="#">오이·호박·고추</a></td></tr>
                  <tr><td class="lnb_td"><a href="#">콩나물·버섯</a></td></tr>
                  <tr><td class="lnb_td"><a href="#">과일</a></td></tr>
                <tr class="lnb_tr"><th class="lnb_th">쌀·견과류</th></tr>
                  <tr><td class="lnb_td"><a href="#">쌀·잡곡</a></td></tr>
                  <tr><td class="lnb_td"><a href="#">견과류</a></td></tr>
                <tr class="lnb_tr"><th class="lnb_th">수산·해산</th></tr>
                  <tr><td class="lnb_td"><a href="#">생선류</a></td></tr>
                  <tr><td class="lnb_td"><a href="#">해산물·조개류</a></td></tr>
                  <tr><td class="lnb_td"><a href="#">김·미역·해조류</a></td></tr>
                <tr class="lnb_tr"><th class="lnb_th">정육·계란</th></tr>
                  <tr><td class="lnb_td"><a href="#">소고기·돼지고기</a></td></tr>
                  <tr><td class="lnb_td"><a href="#">닭·오리고기</a></td></tr>
                  <tr><td class="lnb_td"><a href="#">계란</a></td></tr>
              </table>
            
            </li>
            <li class="cate gnb_li"><a class="ctgry" href="#">카테고리</a></li>
            <li class="cate gnb_li"><a class="ctgry" href="#">카테고리</a></li>
            <li class="cate gnb_li"><a class="ctgry" href="#">카테고리</a></li>
            <li class="cate gnb_li" ><a class="ctgry" href="#">카테고리</a></li>
            <li class="gnb_li"><a class="ctgry" href="notice.jsp">공지사항</a></li>
            <li class="gnb_li"><a class="ctgry" href="#">문의게시판</a></li>
          </ul>
        </nav>
       </div>
    </header>