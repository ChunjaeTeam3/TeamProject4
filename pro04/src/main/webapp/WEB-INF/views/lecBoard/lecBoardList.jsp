<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<div class="col-xl-4 col-md-6 float-right mb-20"  style="z-index: 10">
    <form action="${path}/lecBoard/list" method="get" >
        <div class="form-group ">
            <div class="input-group-append">
                <div class="panel single-accordion" style="border: 1px solid #ced4da; border-radius: 0.25rem;">
                    <select id="type" name="type" class="collapseOne" style="border: none;padding: 8px;">
                        <option value="T" > 제목 </option>
                        <option value="C"> 내용 </option>
                        <option value="W"> 작성자 </option>
                    </select>
                </div>
                <input type="text" name="keyword" class="form-control" placeholder="검색하기" aria-describedby="project-search-addon" />
                <input class="btn btn-dark" type="submit" id="project-search-addon" value="검색"/>
            </div>
        </div>
    </form>
</div>
<div class="container">
    <!-- 테이블 영역 시작 -->
    <div class="col-12 mb-5">
        <div class="card w-100">
            <div class="card-body">
                <div class="table-responsive project-list">
                    <table class="table project-table table-centered table-nowrap">
                        <thead>
                        <tr>
                            <th scope="col" class="text-center" style="width: 10%">#</th>
                            <th scope="col">제목</th>
                            <th scope="col" class="text-center" style="width: 15%">작성자</th>
                            <th scope="col" class="text-center" style="width: 15%">작성일</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach items="${lecBoardList }" var="list" varStatus="status">
                            <c:if test="${list.lcode} == ${lecture.lcode} ">
                            <tr class="table-hover">
                                <input type="hidden" value="${list.qno}">
                                <th class="text-center">${status.count}</th>
                                <th>
                                    <!-- 로그인 하지 않았을 때 -->
                                    <c:if test="${empty sid}">
                                        <!-- 질문 글 -->
                                        <c:if test="${list.lev eq 0}">
                                            ${list.title}
                                        </c:if>
                                        <!-- 답변 글 -->
                                        <c:if test="${list.lev eq 1}">
                                            &nbsp;&nbsp;&nbsp;&nbsp;⌞${list.title}
                                        </c:if>
                                    </c:if>
                                    <!-- 로그인 했을 때 -->
                                    <c:if test="${!empty sid}">
                                        <!-- 질문 글 -->
                                        <c:if test="${list.lev eq 0}">
                                            <a href="${path}/lecBoard/detail?qno=${list.qno}&page=${curPage}">${list.title}</a>
                                        </c:if>
                                        <!-- 답변 글 -->
                                        <c:if test="${list.lev eq 1}">
                                            <a href="${path}/lecBoard/detail?qno=${list.qno}&page=${curPage}">&nbsp;&nbsp;&nbsp;&nbsp;⌞${list.title}</a>
                                        </c:if>
                                    </c:if>
                                </th>
                                <th class="text-center">${list.author}</th>
                                <th class="text-center">
                                    <fmt:parseDate value="${list.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss"/>
                                    <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd"/>
                                </th>
                            </tr>
                            </c:if>
                        </c:forEach>
                        <c:if test="${empty lecBoardList}">
                            <tr>
                                <td colspan="6" class="text-center"> 질문 및 답변이 없습니다.</td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>
                    <!-- 페이지 시작 -->
                    <div class="oneMusic-pagination-area wow">
                        <ul class="pagination justify-content-center mb-0">
                            <c:if test="${curPage > 5}">
                                <li class="page-item">
                                    <a href="${path}/lecBoard/list?page=${page.blockStartNum - 1}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                       class="page-item"><i class="fa-solid fa-arrow-left"></i></a>
                                </li>
                            </c:if>
                            <c:forEach var="i" begin="${page.blockStartNum}" end="${page.blockLastNum}">
                                <c:choose>
                                    <c:when test="${i == curPage}">
                                        <li class="page-item active">
                                            <a href="${path}/lecBoard/list?page=${i}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                               class="page-link" aria-label="Page ${i}"
                                               aria-current="page">${i}</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li  class="page-item">
                                            <a href="${path}/lecBoard/list?page=${i}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                               class="page-link" aria-label="Page ${i}" aria-current="page">${i}</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            <c:if test="${page.blockLastNum < page.totalPageCount}">
                                <li class="page-item">
                                    <a href="${path}/lecBoard/list?page=${page.blockLastNum + 1}<c:if test="${!empty page.keyword}">&type=${page.type}&keyword=${page.keyword}</c:if>"
                                       class="page-link"><i class="fa-solid fa-arrow-right"></i></a>
                                </li>
                            </c:if>
                        </ul>
                    </div>
                    <!-- 페이지 끝 -->
                    <c:if test="${!empty sid && sid != 'admin'}">
                        <div class="btn float-right mt-10">
                            <a href="${path}/lecBoard/questionInsert" class="btn btn-outline-dark">글쓰기</a>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>