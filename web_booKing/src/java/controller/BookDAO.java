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
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Tuyu
 */
public class BookDAO {

    public static DBConnector dbcon;

    public BookDAO() {
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

    public static Authors getAuthorByBookID(String bookID) {
        Session session = DBConnector.getFactory().openSession();
        Transaction tx = session.beginTransaction();
        Books book = BookDAO.getBookByID(bookID);
        Query q = session.createQuery("from Authors where author_id = '"+book.getAuthors().getAuthorId()+"'");
        ArrayList<Authors> list = (ArrayList) q.list();

        tx.commit();
        session.close();
        return list.get(0);
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

    public static ArrayList<Books> getBooksByTitle(String title) {
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from Books where title like '%" + title + "%'");
        ArrayList<Books> list = (ArrayList) q.list();

        tx.commit();
        dbcon.disconnect();
        return list;
    }

//    public static ArrayList<Books> getBooksByAuthor(String id) {
//        DBConnector.getFactory();
//        dbcon.connect();
//        Session session = dbcon.getSession();
//        Transaction tx = session.beginTransaction();
//
//        Query q = session.createQuery("from Books where author_id='" + id + "'");
//        ArrayList<Books> list = (ArrayList) q.list();
//
//        tx.commit();
//        dbcon.disconnect();
//        return list;
//    }
    public static Books getBookByID(String id) {
        Session session = DBConnector.getFactory().openSession();

        Query q = session.createQuery("from Books where book_id='" + id + "'");
        ArrayList<Books> list = (ArrayList) q.list();

        session.close();
        return list.get(0);
    }

    public static Books getBooksByGenre(String genre) {
        return null;
    }

    public static ArrayList<Books> getBooksByAuthor(String authName) {
        Session session = DBConnector.getFactory().openSession();

        Query q = session.createQuery("from Authors where author like '%" + authName + "%'");
        ArrayList<Authors> authors = (ArrayList) q.list();
        ArrayList<Books> books;
        ArrayList<Books> result = new ArrayList<Books>();
        for (int i = 0; i < authors.size(); i++) {
            books = new ArrayList<Books>();
            q = session.createQuery("from Books where author_id = '" + authors.get(i).getAuthorId()
                    + "'");
            books = (ArrayList) q.list();
            for (int j = 0; j < books.size(); j++) {
                result.add(books.get(j));
            }
        }
        session.close();
        return result;
    }
}
