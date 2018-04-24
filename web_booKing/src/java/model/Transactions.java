package model;
// Generated Apr 4, 2018 9:47:59 PM by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Transactions generated by hbm2java
 */
public class Transactions implements java.io.Serializable {

    private String transId;
    private Customers customers;
    private Status status;
    private Date transDate;
    private Set<TransLists> transListses = new HashSet<TransLists>(0);

    public Transactions() {
    }

    public Transactions(String transId, Date transDate) {
        this.transId = transId;
        this.transDate = transDate;
    }

    public Transactions(String transId, Customers customers, Status status, Date transDate, Set<TransLists> transListses) {
        this.transId = transId;
        this.customers = customers;
        this.status = status;
        this.transDate = transDate;
        this.transListses = transListses;
    }

    public String getTransId() {
        return this.transId;
    }

    public void setTransId(String transId) {
        this.transId = transId;
    }

    public Customers getCustomers() {
        return this.customers;
    }

    public void setCustomers(Customers customers) {
        this.customers = customers;
    }

    public Status getStatus() {
        return this.status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Date getTransDate() {
        return this.transDate;
    }

    public void setTransDate(Date transDate) {
        this.transDate = transDate;
    }

    public Set<TransLists> getTransListses() {
        return this.transListses;
    }

    public void setTransListses(Set<TransLists> transListses) {
        this.transListses = transListses;
    }

}
