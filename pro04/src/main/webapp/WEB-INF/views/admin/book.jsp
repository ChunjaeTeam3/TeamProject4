<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
<div class="container-fluid" style="padding: 100px">
    <div class="d-flex justify-content-end">
        <!-- 검색어 입력 부분 -->
        <form action="${path}/admin/bookMgmt" method="get" class="w-50 mb-5">
            <div class="row">
                <div class="col mt-2">
                    <select class="form-select" id="type" name="type">
                        <option value="T"> 교재명</option>
                    </select>
                </div>
                <div class="col-xl-8 col-lg-12 col-md-12 mt-2">
                    <div class="input-group">
                        <input type="text" class="form-control" id="keyword" name="keyword"
                               placeholder="검색어를 입력해주세요" autocomplete="off" aria-label="검색어를 입력해주세요"
                               aria-describedby="button-addon2" value="${page.keyword}">
                        <div class="input-group-append">
                            <button class="btn btn-dark" type="submit" id="button-addon2"> 검색</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <table class="table table-hover text-center">
        <thead>
        <tr>
            <th width="100"> # </th>
            <th> 교재이름 </th>
            <th width="210"> 저자 </th>
            <th width="210"> 가격 </th>
            <th width="150"> 비고 </th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="book" items="${bookList}">
            <tr>
                <td class="align-middle"> ${book.bcode} </td>
                <td class="align-middle"> ${book.bname} </td>
                <td class="align-middle"> ${book.author} </td>
                <td class="align-middle"> ${book.bpice} </td>
                <td class="align-middle">
                    <a href="${path}/admin/bookEdit?bcode=${book.bcode}" class="btn btn-dark"> 수정 </a>
                </td>
            </tr>
        </c:forEach>
        <c:if test="${empty bookList}">
            <tr class="text-center">
                <td colspan="5"> 등록된 교재가 없습니다. </td>
            </tr>
        </c:if>
        </tbody>
    </table>
</div>
</body>
</html>