/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.BookDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Authors;
import model.Books;
import model.Genres;

/**
 *
 * @author Sujana
 */
@WebServlet(name = "InsertBook", urlPatterns = {"/InsertBook"})
public class InsertBook extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InsertBook</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InsertBook at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        BookDAO bookDAO = new BookDAO();
        Books newBook = new Books();
        Authors author = new Authors();
        ArrayList<Genres> genres = new ArrayList<Genres>();
        genres = bookDAO.getAllGenres();

        String bookid = request.getParameter("txt_bookid");
        String authorid = request.getParameter("txt_authorid");
        String bookName = request.getParameter("txt_bookname");
        String synopsis = request.getParameter("txt_synopsis");
        String year = request.getParameter("txt_year");
        String page = request.getParameter("txt_page");
        String price = request.getParameter("txt_price");
        String qty = request.getParameter("txt_qty");
        ArrayList<Genres> genresChoices = new ArrayList<Genres>();

        author.setAuthorId(authorid);

        newBook.setBookId(bookid);
        newBook.setAuthors(author);
        newBook.setTitle(bookName);
        newBook.setSynopsis(synopsis);
        newBook.setYear(Integer.parseInt(year));
        newBook.setPage(Integer.parseInt(page));
        newBook.setPrice(Integer.parseInt(price));
        newBook.setQty(Integer.parseInt(qty));

        bookDAO.insertBook(newBook);

        for (int i = 0; i < genres.size(); i++) {
            String tempGenre = request.getParameter("genre" + i);
            if (!tempGenre.equals("default")) {
                bookDAO.insertGenreLists(bookid, genres.get(i).getGenreId());
            }
        }

        RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
        rd.include(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
