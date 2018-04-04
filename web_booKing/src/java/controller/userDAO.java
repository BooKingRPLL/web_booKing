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
import model.Genres;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 *
 */
public class userDAO {

    public static DBConnector dbcon = new DBConnector();

    public static boolean login(String email, String password) {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from Customers where email = '" + email + "'");

        tx.commit();

        Iterator it = q.iterate();
        Customers cust;
        boolean found = false;
        if (it.hasNext()) {
            cust = (Customers) it.next();
            if (cust.getPassword().equals(password)) {
                found = true;
            }
        }
        dbcon.disconnect();
        if (found) {
            return true;
        }
        return false;
    }

    public static boolean register(Customers c) {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();
        session.save(c);
        tx.commit();
        dbcon.disconnect();
        return true;
    }

    public static boolean changePassword(Customers c, String oldPass, String newPass) {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();

        Customers newCust = (Customers) session.get(Customers.class, c.getUserId());
        if (!c.getPassword().equals(oldPass)) {
            return false;
        } else {
            newCust.setPassword(newPass);

            tx.commit();
            dbcon.disconnect();
            return true;
        }
    }

    public static boolean changeAddress(Customers c, String oldAddress, String newAddress) {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();

        Customers newCust = (Customers) session.get(Customers.class, c.getUserId());
        if (!c.getPassword().equals(oldAddress)) {
            return false;
        } else {
            newCust.setPassword(newAddress);

            tx.commit();
            dbcon.disconnect();
            return true;
        }
    }

    public static ArrayList<Books> getAllBooks() {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from Books");
        ArrayList<Books> list = (ArrayList) q.list();

        tx.commit();
        dbcon.disconnect();
        return list;
    }
    
    public static void getBooksByGenre(){
        
    }
    
    public static void getBooksByAuthor(){
        
    }
    
    public static void getTransactionsByUser(){
        
    }
    
//    public static String getGenre(String g) {
//        DBConnector.getFactory();
//        dbcon.connect();
//        Session session = dbcon.getSession();
//        Transaction tx = session.beginTransaction();
//
//        Query q = session.createQuery("from Genres where genre = '" + g + "'");
//
//        tx.commit();
//
//        Iterator it = q.iterate();
//        Genres genre;
//        String g_id = "";
//        boolean found = false;
//        if (it.hasNext()) {
//            genre = (Genres) it.next();
//            if (genre.getGenre().equals(g)) {
//                g_id = genre.getGenreId();
//            }
//        }
//        dbcon.disconnect();
//        return g_id;
//    }
//    
//    public static ArrayList<Books> getBooksByGenre(String g) {
//        String g_id = getGenre(g);
//        
//        DBConnector.getFactory();
//        dbcon.connect();
//        Session session = dbcon.getSession();
//        Transaction tx = session.beginTransaction();
//        
//        Query q = session.createQuery("from Books where genre_id");
//        ArrayList<Books> list = (ArrayList) q.list();
//
//        tx.commit();
//        dbcon.disconnect();
//        return list;
//    }

    public static void main(String args[]) {
        System.out.println(getAllBooks());
    }

    public static void tesRegister() {
        Customers c = new Customers();
        c.setAddress("tki tes 3");
        c.setEmail("tes3@gmail.com");
        c.setName("customer tes3");
        c.setPassword("3105");
        c.setPhoneNum("085125123");
        c.setUserId("8");
        register(c);
    }

    public static void tesLogin() {
        System.out.println(login("cust1@gmail.com", "3105"));
        System.out.println(login("cust232@gmail.com", "3105"));
        System.out.println(login("cust1@gmail.com", "310512"));
        System.out.println(login("cust121@gmail.com", "310512"));
    }

    public static void tesChangePass() {
        Customers c = new Customers();
        c.setAddress("tki tes 3");
        c.setEmail("tes3@gmail.com");
        c.setName("customer tes3");
        c.setPassword("3105");
        c.setPhoneNum("085125123");
        c.setUserId("8");
        System.out.println(changePassword(c, "3105", "310597123"));
    }
}
