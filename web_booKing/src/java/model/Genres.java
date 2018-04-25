package model;
// Generated Apr 26, 2018 6:51:31 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Genres generated by hbm2java
 */
public class Genres  implements java.io.Serializable {


     private String genreId;
     private String genre;
     private Set<Books> bookses = new HashSet<Books>(0);

    public Genres() {
    }

	
    public Genres(String genreId) {
        this.genreId = genreId;
    }
    public Genres(String genreId, String genre, Set<Books> bookses) {
       this.genreId = genreId;
       this.genre = genre;
       this.bookses = bookses;
    }
   
    public String getGenreId() {
        return this.genreId;
    }
    
    public void setGenreId(String genreId) {
        this.genreId = genreId;
    }
    public String getGenre() {
        return this.genre;
    }
    
    public void setGenre(String genre) {
        this.genre = genre;
    }
    public Set<Books> getBookses() {
        return this.bookses;
    }
    
    public void setBookses(Set<Books> bookses) {
        this.bookses = bookses;
    }




}


