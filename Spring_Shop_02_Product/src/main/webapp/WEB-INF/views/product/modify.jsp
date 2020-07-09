<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>
<section class="py-5">
	<div class="container">
		<h1>상품 수정</h1>
		<form action="/product/modify" method="post">
		<input type="hidden" name="pno" value="${pvo.pno }">
      <div class="form-group">
        <label for="title">상품명:</label> <input type="text"
          class="form-control" value="${pvo.title }"
          name="title">
      </div>
      <div class="form-group">
        <label for="title">등록자:</label> <input type="text"
          class="form-control" name="writer" value="${sesInfo.email }" readonly>
      </div>
      <div class="form-group">
        <label for="title">상품가격:</label> <input type="number"
          class="form-control" value="${pvo.price }"
          name="price">
      </div>
      <div class="form-group">
        <label for="title">그림파일:</label> <input type="text"
          class="form-control" name="imgfile" disabled>
      </div>
      <div class="form-group">
        <label for="title">상세정보:</label>
        <textarea class="form-control" name="content" cols="5">
        ${pvo.content }
        </textarea>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
	</div>
</section>

<jsp:include page="../common/footer.jsp"></jsp:include>