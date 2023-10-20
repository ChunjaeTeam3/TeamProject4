package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.*;
import kr.ed.haebeop.persistence.PaymentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PaymentServiceImpl implements PaymentService{

    @Autowired
    private PaymentMapper paymentMapper;

    @Override
    public Payment PaymentDetail(String id, String lcode) throws Exception {
        Map<String, Object> payment = new HashMap<>();
        payment.put("id", id);
        payment.put("lcode", lcode);
        return paymentMapper.paymentDetail(payment);
    }

    @Override
    public boolean payCheck(String id, String lcode) throws Exception {
        Map<String, Object> payment = new HashMap<>();
        payment.put("id", id);
        payment.put("lcode", lcode);

        Payment pay = paymentMapper.paymentDetail(payment);

        if (pay!= null && pay.getLcode() == lcode) {
            return false;
        }

        return true;
    }

    @Override
    public int getCount(String lcode) throws Exception {
        return paymentMapper.getCount(lcode);
    }

    @Override
    public Lecture getLecture(String lcode) throws Exception {
        return paymentMapper.lectureDetail(lcode);
    }

    @Override
    public Book getBook(String bcode) throws Exception {
        return paymentMapper.bookDetail(bcode);
    }

    @Override
    public int paymentInsert(Payment payment) throws Exception {
        paymentMapper.paymentInsert(payment);
        int pno = paymentMapper.paymentNo();
        return pno;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void addPayment (Delivery delivery, Serve serve, int pt, String id) throws Exception {
        try {
        paymentMapper.deliveryInsert(delivery);
        paymentMapper.serveInsert(serve);

        Map<String, Object> pnt = new HashMap<>();
        pnt.put("pt", pt);
        pnt.put("id", id);

        paymentMapper.pointUpdate(pnt);
        paymentMapper.dnoUpdate(delivery);

        } catch (Exception e) {
            throw e;
        }
    }

    @Override
    public List<Delivery> deliveryList() throws Exception {
        return paymentMapper.deliveryList();
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deletePayment(int pno) throws Exception {
        try {
            paymentMapper.paymentDelete(pno);
            paymentMapper.deliveryDelete(pno);
            paymentMapper.serveDelete(pno);
        } catch (Exception e) {
            throw e;
        }
    }

    @Override
    public void pointUpdate(int pt, String id) throws Exception {
        Map<String, Object> pnt = new HashMap<>();
        pnt.put("pt", pt);
        pnt.put("id", id);

        paymentMapper.pointUpdate(pnt);
    }

    @Override
    public List<PaymentVO> paymentList(String id) throws Exception {
        return paymentMapper.paymentList(id);
    }

    @Override
    public PaymentVO myPaymentDetail(int pno) throws Exception {
        return paymentMapper.myPaymentDetail(pno);
    }
}
