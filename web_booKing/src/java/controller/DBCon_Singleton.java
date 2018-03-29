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
public class DBCon_Singleton {
    private static SessionFactory factory;
    private static Session session;
    
    private DBCon_Singleton(){
        try{
            setFactory(getDbCon());
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public static synchronized SessionFactory getDbCon(){
        if(factory==null){
            factory = new Configuration().configure().buildSessionFactory();
        }
        return factory;
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
        DBCon_Singleton.factory = factory;
    }

    public static Session getSession() {
        return session;
    }

    public static void setSession(Session session) {
        DBCon_Singleton.session = session;
    }
    
    
}
