package kr.ed.haebeop.persistence;

import kr.ed.haebeop.domain.*;
import org.apache.ibatis.annotations.Mapper;

import java.awt.print.Book;
import java.util.List;

@Mapper
public interface PaymentMapper {
    public Lecture lectureDetail(String lcode) throws Exception;
    public Book bookDetail(String bcode) throws Exception;
    public Payment paymentDetail(String id, String lcode) throws Exception;
    public int getCount(String lcode) throws Exception;
    public void paymentInsert(Payment payment) throws Exception;
    public int paymentNo() throws Exception;
    public List<Delivery> deliveryList() throws Exception;
    public void deliveryInsert(Delivery delivery) throws Exception;
    public int deliveryNo() throws Exception;
    public void dnoUpdate(Delivery delivery) throws Exception;
    public void serveInsert(Serve serve) throws Exception;
    public void pointUpdate(int pt, String id) throws Exception;
    public void paymentDelete (int pno) throws Exception;
    public void deliveryDelete(int pno) throws Exception;
    public void serveDelete(int sno) throws Exception;
    public void addPayment (Delivery delivery, Serve serve,int pt, String id) throws Exception;
    public void deletePayment(int pno, int sno) throws Exception;
    public List<PaymentVO> paymentList(String id) throws Exception;
}
