/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import java.util.Iterator;
import model.Books;
import model.Customers;
import model.Status;
import model.TransLists;
import model.Transactions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Tuyu
 */
public class TransactionsDAO {

    public static DBConnector dbcon;

    public TransactionsDAO() {
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

    public static ArrayList<Transactions> getAllTransactions() {
        Session session = DBConnector.getFactory().openSession();
        Query q = session.createQuery("from Transactions");
        ArrayList<Transactions> list = (ArrayList) q.list();

        session.close();
        return list;
    }

    public static Transactions getTransCartByUser(String user_id) {
        Session session = DBConnector.getFactory().openSession();

        Query q = session.createQuery("from Transactions where user_id = '" + user_id + "' and status_id = 'S00001'");
        ArrayList<Transactions> list = (ArrayList) q.list();

        session.close();
        if (list.size() == 0) {
            return null;
        } else {
            return list.get(0);
        }
    }

    public static ArrayList<TransLists> getTransLists(String trans_id) {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from TransLists where trans_id = '" + trans_id + "'");
        ArrayList<TransLists> list = (ArrayList) q.list();

        tx.commit();
        session.close();
        return list;
    }

    public static boolean insertTrans(Transactions t) {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        session.save(t);

        tx.commit();
        session.disconnect();
        return true;
    }

    public static boolean insertTransList(TransLists t) {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        session.save(t);

        tx.commit();
        session.disconnect();
        return true;
    }

    public static Status getStatusPayed() {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from Status where status_id = 'S00002'");

        Iterator it = q.iterate();
        Status t = null;
        boolean found = false;
        if (it.hasNext()) {
            t = (Status) it.next();
        }

        tx.commit();
        session.close();
        return t;
    }

    public static Status getStatusDefault() {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from Status where status_id = 'S00001'");

        Iterator it = q.iterate();
        Status t = null;
        boolean found = false;
        if (it.hasNext()) {
            t = (Status) it.next();
        }

        tx.commit();
        session.close();
        return t;
    }

    public static void main(String args[]) {
        TransactionsDAO transDAO = new TransactionsDAO();
        Transactions c = transDAO.getTransCartByUser("6");
        System.out.println(c.getTransDate());

    }

}
