package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Delivery;
import kr.ed.haebeop.domain.DeliveryVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DeliveryMapper {
    public List<DeliveryVO> deliveryList() throws Exception;
    public DeliveryVO deliveryDetail(int dno) throws Exception;
    public void dcodeUpdate(Delivery delivery) throws Exception;
    public void deliveryUpdate (Delivery delivery) throws Exception;
}
