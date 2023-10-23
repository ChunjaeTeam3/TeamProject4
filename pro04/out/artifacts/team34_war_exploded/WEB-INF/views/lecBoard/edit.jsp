<table class="table project-table table-centered table-nowrap">
    <tbody>
    <tr>
        <input type="hidden" value="${detail.qno}" id="qno" name="qno">
        <th class="text-center" style="vertical-align: middle; width: 15%;">제목</th>
        <td><input type="text" id="title" name="title" class="pl-2" value="${detail.title}" required autofocus></td>
    </tr>
    <tr>
        <td colspan="6" style="font-size: 15px;">
            <textarea name="content" id="content" cols="100" rows="8" maxlength="800" class="single-textarea" style="height: 400px; border: 1px solid #cbcbcb" >${detail.content}</textarea>
            <script>
                $(document).ready(function () { $("#content").cleditor(); });
            </script>
        </td>
    </tr>
    </tbody>
</table>
<div class="btn-group float-right mr-3">
    <a href="${path}/qna/list" class="btn btn-outline-dark">목록</a>
    <input type="submit" class="btn btn-dark" style="height: 100%" value="등록">
</div>