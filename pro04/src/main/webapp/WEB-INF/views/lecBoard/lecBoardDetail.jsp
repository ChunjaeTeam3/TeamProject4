<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<div class="table-responsive project-list">
    <c:if test="${! empty sid && sid eq 'admin'}">
        <div class="btn-group float-right mb-3">
            <a href="${path}/qna/answerInsert?qno=${detail.qno}" class="btn btn-outline-dark">답변등록</a>
            <a href="${path}/qna/list?page=${curPage}" class="btn btn-outline-dark">목록</a>
            <a href="${path}/qna/edit?qno=${detail.qno}" class="btn btn-outline-dark">수정</a>
            <a href="${path}/qna/delete?qno=${detail.qno}" class="btn btn-outline-dark">삭제</a>
        </div>
    </c:if>
    <c:if test="${! empty sid && sid ne 'admin'}">
        <div class="btn-group float-right">
            <a href="${path}/qna/list?page=${curPage}" class="btn btn-outline-dark">목록</a>
        </div>
    </c:if>
    <c:if test="${sid ne 'admin' && sid eq detail.author}">
        <div class="btn-group float-right">
            <a href="${path}/qna/list?page=${curPage}" class="btn btn-outline-dark">목록</a>
            <a href="${path}/qna/edit?qno=${detail.qno}" class="btn btn-outline-dark">수정</a>
            <a href="${path}/qna/delete?qno=${detail.qno}" class="btn btn-outline-dark">삭제</a>
        </div>
    </c:if>
    <table class="table project-table table-centered table-nowrap">
        <tbody>
        <tr>
            <th class="text-center">제목</th>
            <td colspan="3">${detail.title}</td>
        </tr>
        <tr>
            <th class="text-center">작성일</th>
            <td>
                <fmt:parseDate value="${detail.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss"/>
                <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd"/>
            </td>
            <th class="text-center">작성자</th>
            <td colspan="3">${detail.author}</td>
        </tr>
        <tr>
            <td colspan="6" style="font-size: 15px;" class="p-4">${detail.content}</td>
        </tr>
        <tr>
            <td colspan="5">
                <div class="d-flex justify-content-between">
                    <c:if test="${!empty prev}">
                        <div class="text-left">
                            <a href="${path}/qna/detail?qno=${prev.qno}&page=${curPage}"><i class="fa-solid fa-angles-left fa-xl"></i>${prev.title}</a>
                        </div>
                    </c:if>
                    <c:if test="${empty prev}">
                        <div class="text-left">
                            <h6> 첫 번째 글입니다. </h6>
                        </div>
                    </c:if>
                    <c:if test="${!empty next}">
                        <div class="text-right">
                            <a href="${path}/qna/detail?qno=${next.qno}&page=${curPage}">${next.title}<i class="fa-solid fa-angles-right fa-xl"></i></a>
                        </div>
                    </c:if>
                    <c:if test="${empty next}">
                        <div class="text-right">
                            <h6> 마지막 글입니다. </h6>
                        </div>
                    </c:if>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
</div>