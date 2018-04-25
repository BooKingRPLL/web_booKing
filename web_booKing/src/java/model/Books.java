package model;
// Generated Apr 25, 2018 10:13:20 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Books generated by hbm2java
 */
public class Books  implements java.io.Serializable {


     private String bookId;
     private Authors authors;
     private String title;
     private String synopsis;
     private Integer year;
     private Integer page;
     private Integer price;
     private Integer qty;
     private boolean deleted;
     private Set<Genres> genreses = new HashSet<Genres>(0);
     private Set<TransLists> transListses = new HashSet<TransLists>(0);

    public Books() {
    }

	
    public Books(String bookId, boolean deleted) {
        this.bookId = bookId;
        this.deleted = deleted;
    }
    public Books(String bookId, Authors authors, String title, String synopsis, Integer year, Integer page, Integer price, Integer qty, boolean deleted, Set<Genres> genreses, Set<TransLists> transListses) {
       this.bookId = bookId;
       this.authors = authors;
       this.title = title;
       this.synopsis = synopsis;
       this.year = year;
       this.page = page;
       this.price = price;
       this.qty = qty;
       this.deleted = deleted;
       this.genreses = genreses;
       this.transListses = transListses;
    }
   
    public String getBookId() {
        return this.bookId;
    }
    
    public void setBookId(String bookId) {
        this.bookId = bookId;
    }
    public Authors getAuthors() {
        return this.authors;
    }
    
    public void setAuthors(Authors authors) {
        this.authors = authors;
    }
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    public String getSynopsis() {
        return this.synopsis;
    }
    
    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }
    public Integer getYear() {
        return this.year;
    }
    
    public void setYear(Integer year) {
        this.year = year;
    }
    public Integer getPage() {
        return this.page;
    }
    
    public void setPage(Integer page) {
        this.page = page;
    }
    public Integer getPrice() {
        return this.price;
    }
    
    public void setPrice(Integer price) {
        this.price = price;
    }
    public Integer getQty() {
        return this.qty;
    }
    
    public void setQty(Integer qty) {
        this.qty = qty;
    }
    public boolean isDeleted() {
        return this.deleted;
    }
    
    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }
    public Set<Genres> getGenreses() {
        return this.genreses;
    }
    
    public void setGenreses(Set<Genres> genreses) {
        this.genreses = genreses;
    }
    public Set<TransLists> getTransListses() {
        return this.transListses;
    }
    
    public void setTransListses(Set<TransLists> transListses) {
        this.transListses = transListses;
    }




}


