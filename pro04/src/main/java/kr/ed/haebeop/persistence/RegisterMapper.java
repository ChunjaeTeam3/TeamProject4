package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.LectureVO;
import kr.ed.haebeop.domain.UserProgress;
import kr.ed.haebeop.util.Page;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface RegisterMapper {

    public boolean isReg(Map<String, String> data) throws Exception;
    public boolean isMaxStudent(String lcode) throws Exception;
    public void registerInsert(Map<String, String> data) throws Exception;
    public int isPeriod(String lcode) throws Exception;
    public List<LectureVO> myLectures(Page page) throws Exception;
    public List<UserProgress> progressList(String id) throws Exception;
    public int calcProfitPt() throws Exception;
<<<<<<< HEAD
=======

    public double calcRegPercent() throws Exception;
>>>>>>> 3c17a14c63fe9c38056fafc9201eeb8e79185e44

}
