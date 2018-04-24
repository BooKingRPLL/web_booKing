/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import model.Authors;
import model.Books;
import model.Customers;
import model.Genres;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Tuyu
 */
public class BookDAO {
    public static DBConnector dbcon;
            
    public BookDAO(){
        dbcon = new DBConnector();
    }
    
    public static boolean insertBook(Books b) {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(b);
        tx.commit();
        session.close();
        return true;
    }
    
    public static boolean changePrice(Books b, int oldPrice, int newPrice) {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        Books newBook = (Books) session.get(Customers.class, b.getBookId());
        if (b.getPrice() != oldPrice) {
            return false;
        } else {
            newBook.setPrice(newPrice);

            tx.commit();
            session.close();
            return true;
        }
    }
    
    public static ArrayList<Authors> getAllAuthors() {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from Authors");
        ArrayList<Authors> list = (ArrayList) q.list();

        tx.commit();
        session.close();
        return list;
    }
    
    public static ArrayList<Genres> getAllGenres() {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from Genres");
        ArrayList<Genres> list = (ArrayList) q.list();

        tx.commit();
        session.close();
        return list;
    }
    
    public static ArrayList<Books> getAllBooks() {
        Session session = DBConnector.getFactory().openSession();

        Query q = session.createQuery("from Books");
        ArrayList<Books> list = (ArrayList) q.list();

        session.close();
        return list;
    }
    
    public static Books getBookByID(String id) {
        Session session = DBConnector.getFactory().openSession();

        Query q = session.createQuery("from Books where book_id='"+id+"'");
        ArrayList<Books> list = (ArrayList) q.list();

        session.close();
        return list.get(0);
    }
    
    public static Books getBooksByGenre(String genre) {
        return null;
    }

    public static Books getBooksByAuthor(String authName) {
//        Session session = DBConnector.getFactory().openSession();
//
//        Query q = session.createQuery("from Author where author = '"+authName+"'");
//        ArrayList<Authors> list = (ArrayList) q.list();
//        
//        
//
//        session.close();
        return null;
    }
}