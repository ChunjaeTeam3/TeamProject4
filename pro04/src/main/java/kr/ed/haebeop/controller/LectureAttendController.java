package kr.ed.haebeop.controller;

import kr.ed.haebeop.domain.LectureAttendVO;
import kr.ed.haebeop.domain.LectureVO;
import kr.ed.haebeop.service.LectureAttendService;
import kr.ed.haebeop.service.LectureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/lectureAttend/*")
public class LectureAttendController {

    @Autowired
    private LectureService lectureService;

    @Autowired
    private LectureAttendService lectureAttendService;

    @RequestMapping("studentAttend")
    public String lectureAttend(HttpServletRequest request) throws Exception {
        return "/lectureAttend/studentAttend";
    }

    @RequestMapping("teacherAttend")
    public String teacherAttend(@RequestParam String lcode, Model model) throws Exception {
        LectureVO lecture = lectureService.lectureDetail(lcode);
        model.addAttribute("lecture", lecture);

        List<LectureAttendVO> attendList = lectureAttendService.attendListTeacher(lcode);
        model.addAttribute("attendList", attendList);

        return "/lectureAttend/teacherAttend";
    }

}
