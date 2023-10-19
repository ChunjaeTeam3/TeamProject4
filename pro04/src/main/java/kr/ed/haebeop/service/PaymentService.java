package kr.ed.haebeop.service;

import kr.ed.haebeop.domain.Delivery;
import kr.ed.haebeop.domain.Lecture;
import kr.ed.haebeop.domain.Payment;
import kr.ed.haebeop.domain.Serve;

import java.awt.print.Book;
import java.util.List;

public interface PaymentService {
    public int paymentInsert(Payment payment) throws Exception ;
    public Payment getPayment(String id, String lcode) throws Exception;
    public boolean payCheck(String id, String lcode) throws Exception;
    public int getCount(String lcode) throws Exception;
    public Lecture getLecture(String lcode) throws Exception;
    public Book getBook(String bcode) throws Exception;
    public void addPayment (Delivery delivery,Serve serve,int pt, String id) throws Exception;
    public List<Delivery> deliveryList() throws Exception;
    public void deletePayment (int pno, int sno) throws Exception;
    public void pointUpdate(int pt, String id) throws Exception;
}
