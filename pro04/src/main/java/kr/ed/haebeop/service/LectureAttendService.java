package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.LectureAttendVO;
import org.json.JSONArray;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public interface LectureAttendService {

    public List<LectureAttendVO> attendListTeacher(String lcode) throws Exception;
    public void insertAttend(Map<String, Object> dataArray) throws Exception;

}
