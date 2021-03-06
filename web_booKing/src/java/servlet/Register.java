/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controller.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Customers;

/**
 *
 * @author asus
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {

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
            out.println("<title>Servlet Register</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
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
        UserDAO userDAO = new UserDAO();
        Customers newCustomer = new Customers();
        Random random = new Random();

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("inputEmail");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!firstName.equals("") && !email.equals("") && !phoneNumber.equals("") && !address.equals("") && !password.equals("") && !confirmPassword.equals("")) {
            /*semua field harus diisi*/
            if (!userDAO.checkEmail(email)) {
                /* Check email sudah ada atau belum */
                if (phoneNumber.matches("[0-9]")) {
                    /* regex phone number */
                    if (password.equals(confirmPassword)) {
                        /* check password dan confirm password */
                        newCustomer.setAddress(address);
                        newCustomer.setEmail(email);
                        newCustomer.setName(firstName + " " + lastName);
                        newCustomer.setPassword(password);
                        newCustomer.setPhoneNum(phoneNumber);
                        newCustomer.setUserId(Double.toString(random.nextDouble()));
                        if (userDAO.register(newCustomer)) {
                            request.setAttribute("email", email);
                            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                            rd.include(request, response);
                        } else {
                            request.setAttribute("warningRegister", "Register gagal!");
                            RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                            rd.include(request, response);
                        }
                    } else {
                        request.setAttribute("warningRegister", "Password dan Confirm Password tidak cocok!");
                        RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                        rd.include(request, response);
                    }
                } else {
                    request.setAttribute("warningRegister", "Phone number tidak valid!");
                    RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                    rd.include(request, response);
                }
            } else {
                request.setAttribute("warningRegister", "Email sudah terdaftar!");
                RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                rd.include(request, response);
            }
        } else {
            request.setAttribute("warningRegister", "Lengkapi field yang tersedia!");
            RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
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
