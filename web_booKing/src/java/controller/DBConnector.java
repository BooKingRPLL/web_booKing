/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * 
 */
public class DBConnector {
    static SessionFactory factory = null;
    private static Session session;
    
    public DBConnector(){
        try{
            if(factory==null){
                setFactory(new Configuration().configure().buildSessionFactory());
            }
        }catch(Exception e){
            
        }
    }
    
    static void connect(){
        setSession(getFactory().openSession());
//        session = factory.openSession();
    }
    
    static void disconnect(){
        getSession().close();
    }

    public static SessionFactory getFactory() {
        return factory;
    }

    public static void setFactory(SessionFactory factory) {
        DBConnector.factory = factory;
    }

    public static Session getSession() {
        return session;
    }

    public static void setSession(Session session) {
        DBConnector.session = session;
    }
    
    
}