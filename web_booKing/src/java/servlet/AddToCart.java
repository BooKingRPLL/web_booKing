/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.BookDAO;
import controller.TransactionsDAO;
import controller.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Math.random;
import java.util.Date;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Books;
import model.TransLists;
import model.TransListsId;
import model.Transactions;

/**
 *
 * @author asus
 */
@WebServlet(name = "AddToCart", urlPatterns = {"/AddToCart"})
public class AddToCart extends HttpServlet {

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
            out.println("<title>Servlet AddToCart</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddToCart at " + request.getContextPath() + "</h1>");
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
        UserDAO userDAO = new UserDAO();
        TransactionsDAO transDAO = new TransactionsDAO();
        int req_qty = request.getParameter("qty").equals("") ? 0 : Integer.parseInt(request.getParameter("qty"));
        String bookID = request.getParameter("id");
        Books book = bookDAO.getBookByID(bookID);
        String userid = null;
        Random random = new Random();
        Cookie cookie[] = request.getCookies();
        Transactions new_trans = new Transactions();
        if (req_qty != 0) {
            if (req_qty > book.getQty()) {
                request.setAttribute("warningAddToCart", "Qty melebihi stock!");
                RequestDispatcher rd = request.getRequestDispatcher("product_details.jsp");
                rd.include(request, response);
            } else {
                if (cookie != null) {
                    for (int i = 0; i < cookie.length; i++) {
                        if (cookie[i].getName().equals("userid")) {
                            userid = cookie[i].getValue();
                            break;
                        }
                    }
                }
                TransLists trans_list = new TransLists();
                trans_list.setBooks(book);
                trans_list.setQuantity(req_qty);
                book.setQty(book.getQty() - req_qty);
                bookDAO.updateStock(book);

                Transactions trans = new Transactions();
                trans = transDAO.getTransCartByUser(userid);

                if (trans == null) {
                    String email = "";
                    if (cookie != null) {
                        for (int i = 0; i < cookie.length; i++) {
                            if (cookie[i].getName().equals("email")) {
                                email = cookie[i].getValue();
                                break;
                            }
                        }
                    }
                    new_trans.setCustomers(userDAO.getCustomerByEmail(email));
                    new_trans.setStatus(transDAO.getStatusDefault());
                    new_trans.setTransDate(new Date());
                    new_trans.setTransId(Double.toString(random.nextDouble()));
                    boolean insertTrans = transDAO.insertTrans(new_trans);

                    trans_list.setTransactions(new_trans);
                    trans_list.setId(new TransListsId(new_trans.getTransId(), book.getBookId()));
                    transDAO.insertTransList(trans_list);
                } else {
                    TransLists tempTransactionList = transDAO.getTransListByTransactionAndBook(trans.getTransId(), book.getBookId());
                    if (tempTransactionList == null) {
                        trans_list.setTransactions(trans);
                        trans_list.setId(new TransListsId(trans.getTransId(), book.getBookId()));
                        transDAO.insertTransList(trans_list);
                    }else{
                        tempTransactionList.setQuantity(tempTransactionList.getQuantity()+req_qty);
                        transDAO.updateTransLists(tempTransactionList);
                    }
                }

                RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
                rd.include(request, response);
            }
        } else {
            request.setAttribute("warningAddToCart", "Qty tidak valid!");
            RequestDispatcher rd = request.getRequestDispatcher("product_details.jsp");
            rd.include(request, response);
        }
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
