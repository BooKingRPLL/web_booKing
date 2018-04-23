/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static controller.UserDAO.dbcon;
import java.util.ArrayList;
import model.Authors;
import model.Books;
import model.Customers;
import model.Genres;
import model.Transactions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Tuyu
 */
public class AdminDAO {
    public static ArrayList<Customers> getAllCustomers() {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from Customers");
        ArrayList<Customers> list = (ArrayList) q.list();

        tx.commit();
        dbcon.disconnect();
        return list;
    }
    
    public static ArrayList<Transactions> getAllTransactions() {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from Transactions");
        ArrayList<Transactions> list = (ArrayList) q.list();

        tx.commit();
        dbcon.disconnect();
        return list;
    }
    
    public static boolean insertBook(Books b) {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();
        session.save(b);
        tx.commit();
        dbcon.disconnect();
        return true;
    }
    
    public static boolean changePrice(Books b, int oldPrice, int newPrice) {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();

        Books newBook = (Books) session.get(Customers.class, b.getBookId());
        if (b.getPrice() != oldPrice) {
            return false;
        } else {
            newBook.setPrice(newPrice);

            tx.commit();
            dbcon.disconnect();
            return true;
        }
    }
    
     public static ArrayList<Authors> getAllAuthors() {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from Authors");
        ArrayList<Authors> list = (ArrayList) q.list();

        tx.commit();
        dbcon.disconnect();
        return list;
    }
    
    public static ArrayList<Genres> getAllGenres() {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from Genres");
        ArrayList<Genres> list = (ArrayList) q.list();

        tx.commit();
        dbcon.disconnect();
        return list;
    }
}
