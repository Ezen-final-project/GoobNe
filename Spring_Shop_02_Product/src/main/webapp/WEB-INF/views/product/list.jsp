<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>
<!-- Content section -->
<section class="py-5">
	<div class="container">
		<h1>상품 목록</h1>
		<table class="table table-hover">
			<thead>
				<tr class="table-info">
					<th>상품번호</th>
					<th>상품명</th>
					<th>등록자</th>
					<th>조회수</th>
					<th>최종수정일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${pList ne null && pList.size() != 0 }">
						<c:forEach items="${pList }" var="pvo">
							<tr>
								<td>${pvo.pno }</td>
								<td><a href="/product/detail?pno=${pvo.pno }">${pvo.title }</a></td>
								<td>${pvo.writer }</td>
								<td>${pvo.readcount }</td>
								<td>${pvo.modd8 }</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<th colspan="5"><h3 class="text-center">등록된 상품이 없습니다!</h3></th>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
			<c:if test="${sesInfo.email ne null }">
				<tfoot>
					<tr>
						<th colspan="5"><a href="/product/write"
							class="btn btn-primary">상품등록</a></th>
					</tr>
				</tfoot>
			</c:if>
		</table>
	</div>
</section>
<jsp:include page="../common/footer.jsp"></jsp:include>