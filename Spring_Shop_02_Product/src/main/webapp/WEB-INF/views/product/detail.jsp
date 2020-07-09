<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>
<!-- Content section -->
<section class="py-5">
	<div class="container">
		<h1>상품 정보</h1>
		<table class="table table-hover">    
      <tr>
        <th class="table-info">상품번호</th>
        <td>${pvo.pno }</td>
      </tr>
      <tr>
        <th class="table-info">상품명</th>
        <td>${pvo.title }</td>
      </tr>
      <tr>
        <th class="table-info">등록자</th>
        <td>${pvo.writer }</td>
      </tr>
      <tr>
        <th class="table-info">조회수</th>
        <td>${pvo.readcount }</td>
      </tr>
      <tr>
        <th class="table-info">등록일자</th>
        <td>${pvo.regd8 }</td>
      </tr>
      <tr>
        <th class="table-info">수정일자</th>
        <td>${pvo.modd8 }</td>
      </tr>     
      <tr>
        <th class="table-info">상품상세정보</th>
        <td>${pvo.content }</td>
      </tr>
      <tr>
        <th class="table-info">상품이미지</th>
        <td>${pvo.imgfile }</td>
      </tr>
      <c:if test="${sesInfo.email eq pvo.writer || sesInfo.email eq 'admin@admin.com'}">
      <tr>
        <th colspan="2">
          <a href="/product/modify?pno=${pvo.pno }" class="btn btn-warning">수정</a>
          <a href="/product/remove?pno=${pvo.pno }" class="btn btn-outline-danger">삭제</a>
        </th>
      </tr>      
      </c:if>
  </table>
	</div>
</section>
<jsp:include page="../common/footer.jsp"></jsp:include>