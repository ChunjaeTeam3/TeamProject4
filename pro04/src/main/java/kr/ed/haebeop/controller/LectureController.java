package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.*;
import kr.ed.haebeop.service.*;
import kr.ed.haebeop.util.LecturePage;
import org.apache.ibatis.session.SqlSession;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/lecture/*")
public class LectureController {
    @Autowired
    private LectureService lectureService;
    @Autowired
    private TeacherService teacherService;
    @Autowired
    private CurriculumService curriculumService;
    @Autowired
    private ReviewService reviewService;
    @Autowired
    private RegisterService registerService;
    @Autowired
    private UserService userService;
    @Autowired
    private StudyInfoService studyInfoService;

    @RequestMapping("list")
    public String lectureList(HttpServletRequest request, Model model) throws Exception {
        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
        String scode = request.getParameter("scode");

        LecturePage page = new LecturePage();
        page.setScode(scode);
        page.setKeyword(request.getParameter("keyword"));       // 검색 키워드 SET
        page.setType(request.getParameter("type"));             // 검색 타입 SET

        // 페이징에 필요한 데이터 저장
        int total = lectureService.getCount(page);
        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        // 강의 목록 불러오기
        List<LectureVO> lectureList = lectureService.lectureList(page);
        model.addAttribute("lectureList", lectureList);

        // 과목 목록 불러오기
        List<Subject> subjects = lectureService.subjects();
        model.addAttribute("subjects", subjects);

        model.addAttribute("curPage", curPage);
        model.addAttribute("curSubject", scode);
        model.addAttribute("page", page);

        return "/lecture/lectureList";
    }

    @RequestMapping("detail")
    public String lectureDetail(@RequestParam String lcode, HttpServletRequest request, Model model) throws Exception {

        HttpSession session = request.getSession();
        String sid = (String) session.getAttribute("sid");

        int curPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
        LecturePage page = new LecturePage();
        page.setLcode(lcode);

        // 페이징에 필요한 데이터 저장
        int total = curriculumService.getCount(page);
        page.makeBlock(curPage, total);
        page.makeLastPageNum(total);
        page.makePostStart(curPage, total);

        LectureVO lecture = lectureService.lectureDetail(lcode);
        Teacher teacher = teacherService.teacherDetailWithname(lecture.getTname());
        List<Curriculum> curriculumList = curriculumService.curriculumList(page);
        List<Review> reviewList = reviewService.reviewList("new", lcode);
        int starAvg = reviewService.starAvg(lcode);
        boolean isReg = registerService.isReg(lcode, sid);

        if(sid != null) {
            List<Integer> studyInfoList = studyInfoService.getStudyList(sid, lcode);
            model.addAttribute("studyInfoList", studyInfoList);
        }

        model.addAttribute("lecture", lecture);
        model.addAttribute("teacher", teacher);
        model.addAttribute("curriculumList", curriculumList);
        model.addAttribute("reviewList", reviewList);
        model.addAttribute("starAvg", starAvg);
        model.addAttribute("isReg", isReg);
        model.addAttribute("page", page);
        model.addAttribute("curPage", curPage);

        return "/lecture/lectureDetail";
    }

    @RequestMapping(value="changeReview", method= RequestMethod.POST)
    @ResponseBody
    public void changeReview(@RequestParam String type, @RequestParam String lcode, HttpServletResponse response, Model model) throws Exception {
        List<Review> reviewList = reviewService.reviewList(type, lcode);

        JSONArray jsonArray = new JSONArray();
        for(Review review : reviewList) {
            JSONObject obj = new JSONObject();
            obj.put("id", review.getId());
            obj.put("star", review.getStar());
            obj.put("content", review.getContent());
            jsonArray.put(obj);
        }

        PrintWriter out = response.getWriter();
        out.println(jsonArray);
    }

    @RequestMapping(value="reviewInsert", method=RequestMethod.POST)
    public String reviewInsert(Review review, HttpServletRequest request, Model model) throws Exception {
        HttpSession session = request.getSession();
        review.setId((String) session.getAttribute("sid"));
        reviewService.reviewInsert(review);
        return "redirect:/lecture/detail?lcode=" + review.getLcode();
    }

    @GetMapping("register")
    public String register(@RequestParam String lcode, HttpServletRequest request, Model model) throws Exception {
        HttpSession session = request.getSession();
        User user = userService.getUser((String) session.getAttribute("sid"));
        LectureVO lecture = lectureService.lectureDetail(lcode);
        model.addAttribute("lecture", lecture);
        model.addAttribute("user", user);
        return "/lecture/registerInsert";
    }
    @GetMapping(value="registerInsert")
    public String registerInsert(@RequestParam String lcode, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("sid");
        String result = registerService.registerInsert(id, lcode);

        rttr.addFlashAttribute("msg", result);

        return "redirect:/lecture/detail?lcode=" + lcode;
    }

    @GetMapping("player")
    public String player(@RequestParam int ccode, HttpServletRequest request, Model model) throws Exception {

        Curriculum curriculum = curriculumService.curriculumDetail(ccode);
        model.addAttribute("curriculum", curriculum);

        HttpSession session = request.getSession();
        String sid = (String) session.getAttribute("sid");
        StudyInfo studyInfo = studyInfoService.studyInfoDetail(sid, ccode);
        model.addAttribute("studyInfo", studyInfo);

        // 동영상 시청 시작
        userService.updateIsStudy(sid, true);

        return "/lecture/player";
    }

    @PostMapping("closeLecture")
    @Transactional
    public void closeLecture(StudyInfo studyInfo, HttpServletRequest request, Model model) throws Exception {

        // 동영상 시청 종료
        HttpSession session = request.getSession();
        userService.updateIsStudy((String) session.getAttribute("sid"), false);

        // 동영상 시청 위치 저장
        studyInfo.setId((String) session.getAttribute("sid"));
        studyInfoService.studyInfoInsert(studyInfo);
    }

}
