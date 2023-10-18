package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.LectureAttendVO;
import kr.ed.haebeop.persistence.LectureAttendMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LectureAttendServiceImpl implements LectureAttendService {

    @Autowired
    private LectureAttendMapper lectureAttendMapper;

    @Override
    public List<LectureAttendVO> attendListTeacher(String lcode) throws Exception {
        return lectureAttendMapper.attendListTeacher(lcode);
    }
}
