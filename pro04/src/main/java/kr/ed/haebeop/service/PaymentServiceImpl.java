package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.*;
import kr.ed.haebeop.persistence.PaymentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.awt.print.Book;
import java.util.List;

@Service
public class PaymentServiceImpl implements PaymentService{

    @Autowired
    private PaymentMapper paymentMapper;

    @Override
    public Payment getPayment(String id, String lcode) throws Exception {
        return paymentMapper.paymentDetail(id, lcode);
    }

    @Override
    public boolean payCheck(String id, String lcode) throws Exception {
        Payment payment = paymentMapper.paymentDetail(id, lcode);

        if (payment!= null && payment.getLcode() == lcode) {
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
    public void addPayment (Delivery delivery,Serve serve,int pt, String id) throws Exception {
        paymentMapper.dnoUpdate(delivery);
        paymentMapper.addPayment(delivery, serve, pt, id);
    }

    @Override
    public List<Delivery> deliveryList() throws Exception {
        return paymentMapper.deliveryList();
    }

    @Override
    public void deletePayment(int pno) throws Exception {
        paymentMapper.deletePayment(pno);
    }

    @Override
    public void pointUpdate(int pt, String id) throws Exception {
        paymentMapper.pointUpdate(pt, id);
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