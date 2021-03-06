package model;
// Generated Apr 26, 2018 6:51:31 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Authors generated by hbm2java
 */
public class Authors  implements java.io.Serializable {


     private String authorId;
     private String author;
     private Set<Books> bookses = new HashSet<Books>(0);

    public Authors() {
    }

	
    public Authors(String authorId) {
        this.authorId = authorId;
    }
    public Authors(String authorId, String author, Set<Books> bookses) {
       this.authorId = authorId;
       this.author = author;
       this.bookses = bookses;
    }
   
    public String getAuthorId() {
        return this.authorId;
    }
    
    public void setAuthorId(String authorId) {
        this.authorId = authorId;
    }
    public String getAuthor() {
        return this.author;
    }
    
    public void setAuthor(String author) {
        this.author = author;
    }
    public Set<Books> getBookses() {
        return this.bookses;
    }
    
    public void setBookses(Set<Books> bookses) {
        this.bookses = bookses;
    }




}


