package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.Delivery;
import kr.ed.haebeop.domain.Lecture;
import kr.ed.haebeop.domain.Payment;
import kr.ed.haebeop.domain.Serve;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.awt.print.Book;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class PaymentMapperImpl implements PaymentMapper{

    @Autowired
    private SqlSession sqlSession;

    @Override
    public int getCount(String lcode) throws Exception {
        return sqlSession.selectOne("payment.getCount", lcode);
    }

    @Override
    public Lecture getLecture(String lcode) throws Exception {
        return sqlSession.selectOne("payment.lectureDetail", lcode);
    }

    @Override
    public Book getBook(String bcode) throws Exception {
        return sqlSession.selectOne("payment.bookDetail", bcode);
    }

    @Override
    public int paymentNo() throws Exception {
        return sqlSession.selectOne("payment.paymentNo");
    }

    @Override
    public void pointUpdate(String id) throws Exception {
        sqlSession.update("payment.pointUpdate", id);
    }

    @Override
    public List<Delivery> deliveryList() throws Exception {
        return sqlSession.selectList("payment.deliveryList");
    }

    @Override
    public void deliveryInsert(Delivery delivery){
        sqlSession.insert("payment.deliveryInsert", delivery);
    }

    @Override
    public void paymentInsert(Payment payment){
        sqlSession.insert("payment.paymentInsert", payment);
    }

    @Override
    public void serveInsert(Serve serve){
        sqlSession.insert("payment.serveInsert", serve);
    }

    @Override
    public Payment getPayment(String id, String lcode) throws Exception {
        Map<String, Object> payment = new HashMap<>();
        payment.put("id", id);
        payment.put("lcode", lcode);

        return sqlSession.selectOne("payment.paymentDetail", payment);
    }

    @Override
    public void dnoUpdate() throws Exception {
        sqlSession.update("payment.dnoUpdate");
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
    public void serveDelete(int sno) {
        sqlSession.delete("payment.serveDelete", sno);
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
    public void deletePayment(int pno, int sno) throws Exception {
        paymentDelete(pno);
        deliveryDelete(pno);
        serveDelete(sno);
    }

    @Override
    public void pointUpdate(int pt, String id) throws Exception {
        Map<String, Object> pnt = new HashMap<>();
        pnt.put("pt", pt);
        pnt.put("id", id);
        sqlSession.update("pointUpdate", pnt);
    }
}
