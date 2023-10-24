<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
    input {
        border-radius: 5px;
        height: 35px;
        border: 1px solid #cbcbcb;
        width: 100%;
    }
    textarea {
        resize: none;
        width: 100%;
        height: 400px;
        border: 1px solid #cbcbcb;
        border-radius: 5px;
    }
</style>

<!-- 헤더 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 끝 -->
<!-- 브레드크럼 시작 -->

<!-- 브레드크럼 끝 -->
<br>
<br>
<div class="has-background-white card-content shadow-down p-6" id="board2">

    <input type="text" id="lcode" name="lcode" placeholder="제목을 입력하세요" class="pl-2" value="${lcode}" hidden="hidden">
        <div class="col-12">
            <div class="card w-100">
                <div class="card-body">
                    <div class="btn-group float-right mb-3">
                    <a href="javascript:void(0);" onclick="ListPage()" class="btn btn-outline-dark">목록</a>
                    </div>
                    <div class="table-responsive project-list">
                        <table class="table project-table table-centered table-nowrap">
                            <tbody>
                            <tr>
                                <input type="hidden" value="${detail.qno}" id="qno" name="qno">
                                <th class="text-center" style="vertical-align: middle; width: 15%;">제목</th>
                                <td><input type="text" id="title" name="title" class="pl-2" value="${detail.title}" required autofocus></td>
                            </tr>
                            <tr>
                                <td colspan="6" style="font-size: 15px;">
                                    <textarea name="content2" id="content2" cols="100" rows="8" maxlength="800" class="single-textarea" style="height: 400px; border: 1px solid #cbcbcb" >${detail.content}</textarea>
                                    <script>
                                        $(document).ready(function () { $("#content").cleditor(); });
                                    </script>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="btn-group float-right mr-3">
                            <input type="submit" class="btn btn-dark" style="height: 100%" value="등록" onclick="editPage()">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

</div>
<br>
<br>

<script>

    function ListPage(){
        var lcode = $("#lcode").val();
        $.ajax({
            type: "GET",  // GET 요청 또는 POST 요청을 선택할 수 있습니다.
            url: "${path}/lecBoard/list",  // 실제 API 엔드포인트로 변경해야 합니다.
            data: {
                lcode : lcode
            },
            success: function (data) {
                $("#board").html(data);
            },
            error: function (error) {
                console.log("에러다에러"+error.responseText)
            }
        });
    }
</script>
<!-- 테이블 영역 끝 -->
<script>
    function editPage() {
        // 사용자 입력을 가져옵니다.
        var title = $("#title").val();
        var content = $("#content2").val();
        var lcode = $("#lcode").val();
        var qno = $("#qno").val();

        $.ajax({
            url: "${path}/lecBoard/edit", // URL을 고정 경로로 지정
            type: "POST",
            data: {
                lcode: lcode,
                title: title,
                content: content,
                qno:qno
            },
            success: function (data) {
                console.log("성공", data);
                ListPage();
                // 성공적으로 요청을 처리한 후 할 작업을 여기에 추가하세요.

                // $("#intro").addClass("show active");
                // $("#board").removeClass("show active");
                // $("#intro-tab").addClass("active");
                // $("#board-tab").removeClass("active");
            },
            error: function (error) {
                console.log("에러다에러", error.responseText);
            }
        });
    }
</script>