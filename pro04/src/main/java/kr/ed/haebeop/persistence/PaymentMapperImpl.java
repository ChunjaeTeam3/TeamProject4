package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class PaymentMapperImpl implements PaymentMapper{

    @Autowired
    private SqlSession sqlSession;
    @Override
    public Lecture lectureDetail(String lcode) throws Exception {
        return sqlSession.selectOne("payment.lectureDetail", lcode);
    }

    @Override
    public Book bookDetail(String bcode) throws Exception {
        return sqlSession.selectOne("payment.bookDetail", bcode);
    }

    @Override
    public Payment paymentDetail(String id, String lcode) throws Exception {
        Map<String, Object> payment = new HashMap<>();
        payment.put("id", id);
        payment.put("lcode", lcode);

        return sqlSession.selectOne("payment.paymentDetail", payment);
    }

    @Override
    public int getCount(String lcode) throws Exception {
        return sqlSession.selectOne("payment.getCount", lcode);
    }

    @Override
    public void paymentInsert(Payment payment) throws Exception{
        sqlSession.insert("payment.paymentInsert", payment);
    }

    @Override
    public int paymentNo() throws Exception {
        return sqlSession.selectOne("payment.paymentNo");
    }
    @Override
    public List<Delivery> deliveryList() throws Exception {
        return sqlSession.selectList("payment.deliveryList");
    }

    @Override
    public void deliveryInsert(Delivery delivery) throws Exception{
        sqlSession.insert("payment.deliveryInsert", delivery);
    }

    @Override
    public int deliveryNo() throws Exception {
        return sqlSession.selectOne("payment.deliveryNo");
    }

    @Override
    public void dnoUpdate(Delivery delivery) throws Exception {
        sqlSession.update("payment.dnoUpdate", delivery);
    }


    @Override
    public void serveInsert(Serve serve) throws Exception{
        sqlSession.insert("payment.serveInsert", serve);
    }

    @Override
    public void pointUpdate(int pt, String id) throws Exception {
        Map<String, Object> pnt = new HashMap<>();
        pnt.put("pt", pt);
        pnt.put("id", id);
        sqlSession.update("pointUpdate", pnt);
    }

    @Override
    public void paymentDelete(int pno) {
        sqlSession.delete("payment.paymentDelete", pno);
    }

    @Override
    public void deliveryDelete(int pno) {
        sqlSession.delete("payment.deliveryDelete", pno);
    }

    @Override
    public void serveDelete(int pno) {
        sqlSession.delete("payment.serveDelete", pno);
    }

    @Transactional
    @Override
    public void addPayment(Delivery delivery, Serve serve, int pt, String id) throws Exception {
        deliveryInsert(delivery);
        serveInsert(serve);
        pointUpdate(pt, id);
    }

    @Transactional
    @Override
    public void deletePayment(int pno) throws Exception {
        paymentDelete(pno);
        deliveryDelete(pno);
        serveDelete(pno);
    }

    @Override
    public List<PaymentVO> paymentList(String id) throws Exception {
        return sqlSession.selectList("payment.paymentList", id);
    }

    @Override
    public PaymentVO myPaymentDetail(int pno) throws Exception {
        return sqlSession.selectOne("payment.myPaymentDetail", pno);
    }
}
