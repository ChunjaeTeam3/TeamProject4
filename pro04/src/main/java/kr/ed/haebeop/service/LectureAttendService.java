package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.LectureAttendVO;

import java.util.List;

public interface LectureAttendService {

    public List<LectureAttendVO> attendListTeacher(String lcode) throws Exception;

}
