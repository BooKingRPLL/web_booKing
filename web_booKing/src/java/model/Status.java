package model;
// Generated Mar 7, 2018 2:00:43 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Status generated by hbm2java
 */
public class Status  implements java.io.Serializable {


     private String statusId;
     private String status;
     private String statusDesc;
     private Set<Transaction> transactions = new HashSet<Transaction>(0);

    public Status() {
    }

	
    public Status(String statusId) {
        this.statusId = statusId;
    }
    public Status(String statusId, String status, String statusDesc, Set<Transaction> transactions) {
       this.statusId = statusId;
       this.status = status;
       this.statusDesc = statusDesc;
       this.transactions = transactions;
    }
   
    public String getStatusId() {
        return this.statusId;
    }
    
    public void setStatusId(String statusId) {
        this.statusId = statusId;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public String getStatusDesc() {
        return this.statusDesc;
    }
    
    public void setStatusDesc(String statusDesc) {
        this.statusDesc = statusDesc;
    }
    public Set<Transaction> getTransactions() {
        return this.transactions;
    }
    
    public void setTransactions(Set<Transaction> transactions) {
        this.transactions = transactions;
    }




}


