package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.LecBoard;
import kr.ed.haebeop.service.LecBoardService;
import kr.ed.haebeop.service.LectureService;
import kr.ed.haebeop.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
@Controller
@RequestMapping("/lecBoard/*")
public class LecBoardController {
    @Autowired
    private LecBoardService lecBoardService;
    @Autowired
    private LectureService lectureService;

    //lecBoard 목록
    @GetMapping("list")
    @ResponseBody
    public String getlecBoardList( HttpServletRequest request, Model model) throws Exception {
        //Page
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
        Page page = new Page();
        page.setKeyword(request.getParameter("keyword"));   //검색 키워드 set
        page.setType(request.getParameter("type"));         //검색 타입 set

        //페이징에 필요한 데이터 저장
        int total = lecBoardService.getCount(page);
        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);


        List<LecBoard> lecBoardList = lecBoardService.lecBoardList(page);
        model.addAttribute("lecBoardList", lecBoardList);     //lecBoard 목록
        model.addAttribute("curPage", curPage);     // 현재 페이지
        model.addAttribute("page", page);           // 페이징 데이터

        return "/lecBoard/lecBoardList";
    }

    //lecBoard 상세보기
    @GetMapping("detail")
    @ResponseBody
    public String getlecBoardDetail(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        LecBoard detail = lecBoardService.lecBoardDetail(qno);
        model.addAttribute("detail", detail);

        LecBoard prev = lecBoardService.lecBoardRef(qno, "prev");
        LecBoard next = lecBoardService.lecBoardRef(qno, "next");
        model.addAttribute("prev", prev);
        model.addAttribute("next", next);
        model.addAttribute("curPage", request.getParameter("page"));
        return "/lecBoard/lecBoardDetail";
    }

    //Question 글 쓰기
    @GetMapping("questionInsert")
    public String getQuestionInsert(@RequestParam String lcode,Model model) throws Exception {
       model.addAttribute("lcode",lcode);
        return "/lecBoard/questionInsert";
    }

    //Question 글쓰기 처리
    @PostMapping("questionInsert")
    public String getQuestionInsertPro( @RequestParam String lcode,HttpServletRequest request, Model model) throws Exception {
        HttpSession session = request.getSession();
        LecBoard dto = new LecBoard();
        System.out.println(lcode);
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        dto.setAuthor((String) session.getAttribute("sid"));
        dto.setLcode(request.getParameter("lcode"));
        lecBoardService.questionInsert(dto);
        System.out.println(dto);
       return "redirect:/lecture/detail?lcode=" + request.getParameter("lcode");
    }

    //Question 수정
    @GetMapping("edit")
    @ResponseBody
    public String getlecBoardEdit(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        LecBoard detail = lecBoardService.lecBoardDetail(qno);
        model.addAttribute("detail", detail);
        return "/lecBoard/lecBoardEdit";
    }
    //Question 수정처리
    @PostMapping("edit")
    @ResponseBody
    public String getlecBoardEditPro(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        LecBoard dto = new LecBoard();
        dto.setQno(qno);
        dto.setTitle(request.getParameter("title"));
        dto.setContent(request.getParameter("content"));
        lecBoardService.lecBoardEdit(dto);
        return "redirect:detail?qno="+qno+"&page=1";
    }

    //lecBoard 삭제
    @GetMapping("delete")
    @ResponseBody
    public String getlecBoardDelete(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        lecBoardService.lecBoardDelete(qno);
        return "redirect:list";
    }

    //답변 등록
    @GetMapping("answerInsert")
    @ResponseBody
    public String getAnswerInsert(HttpServletRequest request, Model model) throws Exception {
        int qno = Integer.parseInt(request.getParameter("qno"));
        LecBoard detail = lecBoardService.lecBoardDetail(qno);
        model.addAttribute("detail", detail);
        return "/lecBoard/answerInsert";
    }

    //답변 등록 처리
    @PostMapping("answerInsert")
    @ResponseBody
    public String getAnswerInsertPro(LecBoard lecBoard, HttpServletRequest request, Model model) throws Exception {
        HttpSession session = request.getSession();
        lecBoard.setAuthor((String) session.getAttribute("sid"));
        lecBoardService.answerInsert(lecBoard);
        return "redirect:list";
    }
}

