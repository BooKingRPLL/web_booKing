package model;
// Generated Mar 7, 2018 2:00:43 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Customer generated by hbm2java
 */
public class Customer  implements java.io.Serializable {


     private String userId;
     private String name;
     private String password;
     private String email;
     private String address;
     private String phoneNum;
     private Set<Transaction> transactions = new HashSet<Transaction>(0);

    public Customer() {
    }

	
    public Customer(String userId) {
        this.userId = userId;
    }
    public Customer(String userId, String name, String password, String email, String address, String phoneNum, Set<Transaction> transactions) {
       this.userId = userId;
       this.name = name;
       this.password = password;
       this.email = email;
       this.address = address;
       this.phoneNum = phoneNum;
       this.transactions = transactions;
    }
   
    public String getUserId() {
        return this.userId;
    }
    
    public void setUserId(String userId) {
        this.userId = userId;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    public String getPhoneNum() {
        return this.phoneNum;
    }
    
    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }
    public Set<Transaction> getTransactions() {
        return this.transactions;
    }
    
    public void setTransactions(Set<Transaction> transactions) {
        this.transactions = transactions;
    }




}


