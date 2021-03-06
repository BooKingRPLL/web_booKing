/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import java.util.Iterator;
import model.Admins;
import model.Books;
import model.Customers;
import model.Genres;
import model.TransLists;
import model.Transactions;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 *
 */
public class UserDAO {

    public static DBConnector dbcon = new DBConnector();

    public UserDAO() {
        dbcon = new DBConnector();
    }

    public static boolean loginCust(String email, String password) {
        return true;
    }

    public static boolean login(String email, String password) {

        Session session = DBConnector.getFactory().openSession();

        Query q = session.createQuery("from Customers where email = '" + email + "'");

        Iterator it = q.iterate();
        Customers cust;
        boolean found = false;
        if (it.hasNext()) {
            cust = (Customers) it.next();
            if (cust.getPassword().equals(password)) {
                found = true;
            }
        }
        session.close();
        return found;
    }
    
    public static Customers getCustomer(String email) {

        Session session = DBConnector.getFactory().openSession();

        Query q = session.createQuery("from Customers where email = '" + email + "'");

        Iterator it = q.iterate();
        Customers cust = null;
        boolean found = false;
        if (it.hasNext()) {
            found=true;
            cust = (Customers) it.next();
        }
        session.close();
        if(found){
            return cust;
        }else{
            return null;
        }
    }
    
    public static Admins getAdmin(String email) {

        Session session = DBConnector.getFactory().openSession();

        Query q = session.createQuery("from Admins where email = '" + email + "'");

        Iterator it = q.iterate();
        Admins admin = null;
        boolean found = false;
        if (it.hasNext()) {
            found=true;
            admin = (Admins) it.next();
        }
        session.close();
        if(found){
            return admin;
        }else{
            return null;
        }
    }

    public static boolean checkEmail(String email) {

        Session session = DBConnector.getFactory().openSession();

        Query q = session.createQuery("from Customers where email = '" + email + "'");

        Iterator it = q.iterate();
        Customers cust;
        boolean found = false;
        if (it.hasNext()) {
            found = true;
        }
        session.close();
        return found;
    }

    public static boolean loginAdmin(String email, String password) {

        Session session = DBConnector.getFactory().openSession();

        Query q = session.createQuery("from Admins where email = '" + email + "'");

        Iterator it = q.iterate();
        Admins admin;
        boolean found = false;
        if (it.hasNext()) {
            admin = (Admins) it.next();
            if (admin.getPassword().equals(password)) {
                found = true;
            }
        }
        session.close();
        return found;
    }

    public static boolean changePassword(Customers c, String oldPass, String newPass) {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        Customers newCust = (Customers) session.get(Customers.class, c.getUserId());
        if (!c.getPassword().equals(oldPass)) {
            return false;
        } else {
            newCust.setPassword(newPass);

            tx.commit();
            session.close();
            return true;
        }
    }

    public static boolean changeAddress(Customers c, String oldAddress, String newAddress) {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        Customers newCust = (Customers) session.get(Customers.class, c.getUserId());
        if (!c.getPassword().equals(oldAddress)) {
            return false;
        } else {
            newCust.setPassword(newAddress);

            tx.commit();
            session.close();
            return true;
        }
    }

    public static boolean register(Customers c) {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(c);
        tx.commit();
        session.close();
        return true;
    }

    public static ArrayList<Customers> getAllCustomers() {
        Session session = DBConnector.getFactory().openSession();

        Query q = session.createQuery("from Customers");
        ArrayList<Customers> list = (ArrayList) q.list();

        session.close();
        return list;
    }

    public static Customers getCustomerByEmail(String email) {
        Session session = DBConnector.getFactory().openSession();

        Query q = session.createQuery("from Customers where email = '"+email+"'");
        ArrayList<Customers> list = (ArrayList) q.list();

        session.close();
        return list.get(0);
    }

    public static void main(String args[]) {
        UserDAO userDAO = new UserDAO();
        Customers c = userDAO.getCustomerByEmail("tes@gmail.com");
        System.out.println(c.getEmail());
       
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
        System.out.println(loginCust("cust1@gmail.com", "3105"));
        System.out.println(loginCust("cust232@gmail.com", "3105"));
        System.out.println(loginCust("cust1@gmail.com", "310512"));
        System.out.println(loginCust("cust121@gmail.com", "310512"));
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
