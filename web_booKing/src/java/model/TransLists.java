package model;
// Generated Apr 4, 2018 9:47:59 PM by Hibernate Tools 4.3.1



/**
 * TransLists generated by hbm2java
 */
public class TransLists  implements java.io.Serializable {


     private TransListsId id;
     private Books books;
     private Transactions transactions;
     private Integer quantity;

    public TransLists() {
    }

	
    public TransLists(TransListsId id, Books books, Transactions transactions) {
        this.id = id;
        this.books = books;
        this.transactions = transactions;
    }
    public TransLists(TransListsId id, Books books, Transactions transactions, Integer quantity) {
       this.id = id;
       this.books = books;
       this.transactions = transactions;
       this.quantity = quantity;
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




}


