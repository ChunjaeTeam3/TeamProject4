package kr.ed.haebeop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/lectureAttend/*")
public class LectureAttendController {

    @RequestMapping("attendHome")
    public String lectureAttend(HttpServletRequest request) throws Exception {
        return "/lectureAttend/attendHome";
    }

}
