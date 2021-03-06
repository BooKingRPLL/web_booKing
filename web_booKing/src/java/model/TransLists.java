package model;
// Generated Apr 26, 2018 6:51:31 AM by Hibernate Tools 4.3.1



/**
 * TransLists generated by hbm2java
 */
public class TransLists  implements java.io.Serializable {


     private TransListsId id;
     private Books books;
     private Transactions transactions;
     private Integer quantity;
     private boolean deleted;

    public TransLists() {
    }

	
    public TransLists(TransListsId id, Books books, Transactions transactions, boolean deleted) {
        this.id = id;
        this.books = books;
        this.transactions = transactions;
        this.deleted = deleted;
    }
    public TransLists(TransListsId id, Books books, Transactions transactions, Integer quantity, boolean deleted) {
       this.id = id;
       this.books = books;
       this.transactions = transactions;
       this.quantity = quantity;
       this.deleted = deleted;
    }
   
    public TransListsId getId() {
        return this.id;
    }
    
    public void setId(TransListsId id) {
        this.id = id;
    }
    public Books getBooks() {
        return this.books;
    }
    
    public void setBooks(Books books) {
        this.books = books;
    }
    public Transactions getTransactions() {
        return this.transactions;
    }
    
    public void setTransactions(Transactions transactions) {
        this.transactions = transactions;
    }
    public Integer getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    public boolean isDeleted() {
        return this.deleted;
    }
    
    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }




}


