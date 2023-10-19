package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.LectureAttendVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface LectureAttendMapper {
    public List<LectureAttendVO> attendListTeacher(String lcode) throws Exception;
    public void insertAttend(Map<String, Object> dataArray) throws Exception;

}
