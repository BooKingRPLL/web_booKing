<%-- 
    Document   : navigation
    Created on : Mar 29, 2018, 8:58:40 AM
    Author     : Sujana
--%>

<%@page import="controller.BookDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Genres"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <div id="sidebar" class="span3">
                <div class="well well-small">
                    <ul class="nav nav-list">
                        <%
                            BookDAO bookDAO = new BookDAO();
                            ArrayList<Genres> genres = new ArrayList<Genres>();
                            genres = bookDAO.getAllGenres();
                            for(int i=0;i<genres.size();i++){
                        %>
                            <li><a href="grid-view.jsp"><span class="icon-chevron-right"></span><%=genres.get(i).getGenre()%></a></li>
                        <%
                            }
                        %>
                        <li><a href="grid-view.jsp"><span class="icon-chevron-right"></span>See All Books</a></li>
                        <li style="border:0"> &nbsp;</li>
                    </ul>
                </div>
                <div class="well well-small" ><a href="#"><img src="assets/img/paypal.jpg" alt="payment method paypal"></a></div>
            </div>
    </body>
</html>
