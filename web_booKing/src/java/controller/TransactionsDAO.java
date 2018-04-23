/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static controller.UserDAO.dbcon;
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
    public static boolean generatePayment(Transactions t) {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();
        session.save(t);
        tx.commit();
        dbcon.disconnect();
        return true;
    }
    
    public static boolean changeAddress(Transactions t, Status oldStatus, Status newStatus) {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();

        Transactions newTrans = (Transactions) session.get(Transactions.class, t.getTransId());
        if (!t.getStatus().equals(oldStatus)) {
            return false;
        } else {
            newTrans.setStatus(newStatus);

            tx.commit();
            dbcon.disconnect();
            return true;
        }
    }
}
