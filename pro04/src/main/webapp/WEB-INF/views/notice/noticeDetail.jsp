<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 상세보기</title>
    <jsp:include page="../layout/head.jsp"/>
    <style>

    </style>
</head>
<body>
<!-- 헤더 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 끝 -->
<!-- 브레드크럼 시작 -->
<section class="breadcumb-area bg-img bg-overlay" style="background-image: url('${path}/resources/img/bg-img/breadcumb3.jpg');">
    <div class="bradcumbContent">
        <h2>공지사항</h2>
    </div>
</section>
<!-- 브레드크럼 끝 -->
<section class="album-catagory section-padding-100-0">
    <div class="course_details_area mb-5 mt-5">
        <div class="container">
            <!-- 테이블 영역 시작 -->
            <div class="col-12">
                <div class="card w-100">
                    <div class="card-body">
                        <div class="table-responsive project-list">
                            <table class="table project-table table-centered table-nowrap">
                                <tbody>
                                <tr>
                                    <th class="text-center">제목</th>
                                    <td>${detail.title}</td>
                                </tr>
                                <tr>
                                    <th class="text-center">작성일</th>
                                    <td>${detail.regdate}</td>
                                    <th class="text-center">조회수</th>
                                    <td>${detail.visited}</td>
                                </tr>
                                <tr>
                                    <td colspan="6" style="font-size: 15px;">${detail.content}</td>
                                </tr>
                                <tr class="d-flex justify-content-between">
                                    <td colspan="6">
                                        <c:if test="${detail.seq eq 1}">
                                            <a href="${path}/notice/detail?seq=${detail.seq+1}">다음</a>
                                        </c:if>
                                        <c:if test="${detail.seq ne 1 && detail.seq+1 ne null}">
                                            <a href="${path}/notice/detail?seq=${detail.seq-1}" class="btn btn-dark">이전</a>
                                            <a href="${path}/notice/detail?seq=${detail.seq+1}" class="btn btn-dark">다음</a>
                                        </c:if>
                                        <c:if test="${ detail.seq+1 eq null}">
                                            <a href="${path}/notice/detail?seq=${detail.seq-1}" class="btn btn-dark">이전</a>
                                        </c:if>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <c:if test="${! empty sid && sid eq 'admin'}">
                                <div class="btn-group float-right">
                                    <a href="${path}/notice/list" class="btn btn-outline-dark">목록</a>
                                    <a href="${path}/notice/edit?seq=${detail.seq}" class="btn btn-outline-dark">수정</a>
                                    <a href="${path}/notice/delete?seq=${detail.seq}" class="btn btn-outline-dark">삭제</a>
                                </div>
                            </c:if>
                            <c:if test="${! empty sid && sid ne 'admin'}">
                                <div class="btn-group float-right">
                                    <a href="${path}/notice/list" class="btn btn-outline-dark">목록</a>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 테이블 영역 끝 -->
    </div>
</section>
<!-- 로그인 끝 -->
<!-- 푸터 시작 -->
<jsp:include page="../layout/footer.jsp"/>
<!-- 푸터 끝 -->
</body>
</html>
