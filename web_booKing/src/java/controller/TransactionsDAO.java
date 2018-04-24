/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.Books;
import model.Customers;
import model.Status;
import model.Transactions;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Tuyu
 */
public class TransactionsDAO {
    
    public static DBConnector dbcon;
            
    public TransactionsDAO(){
        dbcon = new DBConnector();
    }
    
    
    public static boolean generatePayment(Transactions t) {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();
        
        session.save(t);
        
        tx.commit();
        session.disconnect();
        return true;
    }
    
    public static boolean changeStatus(Transactions t, Status oldStatus, Status newStatus) {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        Transactions newTrans = (Transactions) session.get(Transactions.class, t.getTransId());
        if (!t.getStatus().equals(oldStatus)) {
            return false;
        } else {
            newTrans.setStatus(newStatus);

            tx.commit();
            session.close();
            return true;
        }
    }
}
