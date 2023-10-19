package kr.ed.haebeop.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import kr.ed.haebeop.domain.LectureAttendVO;
import kr.ed.haebeop.domain.LectureVO;
import kr.ed.haebeop.domain.SaveAttendCode;
import kr.ed.haebeop.service.LectureAttendService;
import kr.ed.haebeop.service.LectureService;
import lombok.Getter;
import lombok.Setter;
import org.checkerframework.checker.units.qual.A;
import org.codehaus.jackson.type.TypeReference;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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

    @PostMapping("reloadTeacherTable")
    public void reloadTeacherTable(@RequestParam String lcode, HttpServletResponse response) throws Exception {
        List<LectureAttendVO> attendList = lectureAttendService.attendListTeacher(lcode);

        JSONArray jsonArray = new JSONArray();
        for(LectureAttendVO lecture : attendList) {
            JSONObject obj = new JSONObject();
            obj.put("lcode", lecture.getLcode());
            obj.put("id", lecture.getId());
            obj.put("name", lecture.getName());
            obj.put("adate", lecture.getAdate());
            obj.put("atime", lecture.getAtime());
            obj.put("atype", lecture.getAtype());
            jsonArray.put(obj);
        }

        PrintWriter out = response.getWriter();
        out.println(jsonArray);
    }

    @PostMapping("insertAttend")
    public void insertAttend(@RequestParam Map<String, Object> paramMap, HttpServletResponse response) throws Exception {
        String jsonData = paramMap.get("dataArray").toString();
        JSONParser parser = new JSONParser();
        Object obj = parser.parse(jsonData);
        paramMap.put("dataArray", obj);

        lectureAttendService.insertAttend(paramMap);
        JSONObject result = new JSONObject();
        result.put("result", "success");
        PrintWriter out = response.getWriter();
        out.println(result);
    }

    @PostMapping("saveAttendCode")
    public void saveAttendCode(@RequestParam SaveAttendCode saveAttendCode, HttpServletResponse response) throws Exception {
        lectureAttendService.getAttendCode(saveAttendCode);
        JSONObject obj = new JSONObject();
        obj.put("attendCode", saveAttendCode.getAttendCode());
        PrintWriter out = response.getWriter();
        out.println(obj);
    }

}
