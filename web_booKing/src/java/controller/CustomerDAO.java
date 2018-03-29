/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.ArrayList;
import model.Customer;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 *
 */
public class CustomerDAO {
    public static DBConnector dbcon;
    public ArrayList<Customer> getAllCust(){
//        Session session = factory.openSession();
        
        DBConnector.getFactory();
        dbcon.connect();
        Session session = dbcon.getSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Mahasiswa");
        ArrayList<Customer> list = (ArrayList) q.list();
        tx.commit();
//        session.close();
        dbcon.disconnect();
        return list;
    }
}
