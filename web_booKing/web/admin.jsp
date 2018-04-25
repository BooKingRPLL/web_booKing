<%-- 
    Document   : account
    Created on : Mar 29, 2018, 9:47:35 AM
    Author     : Sujana
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Books"%>
<%@page import="controller.BookDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            request.setAttribute("onPage", "myAccount");
        %>
        <jsp:include page="header.jsp" flush="true" />
        <div class="row">
            <jsp:include page="navigation_admin.jsp" flush="true" />
            <div class="span9">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
                    <li class="active">Manage Book</li>
                </ul>
                <div class="well well-small">
                    <center><form action="add_book.jsp"><input type="submit" value="Insert Book"/></form></center></br>
                    <table class="table table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th>ID Book</th>
                                <th>Book Name</th>
                                <th></th>
                            </tr>
                        </thead>
                        <%
                            BookDAO bookDAO = new BookDAO();
                            ArrayList<Books> newBooks = new ArrayList<Books>();
                            newBooks = bookDAO.getAllBooksAdmin();
                            for (int i = 0; i < newBooks.size(); i++) {
                        %>
                        <tbody>
                            <tr>
                                <td><p><%=newBooks.get(i).getBookId()%></p></td>
                                <td><p><%=newBooks.get(i).getTitle()%></p></td>
                                <%
                                    if (newBooks.get(i).getDeleted()) {
                                        out.println("<td>Deleted</td>");
                                    } else {
                                %>
                                <td>
                                    <a href =<%="\"update_book.jsp?id=" + newBooks.get(i).getBookId() + "\""%>"><button type="submit">Update</button></a> 
                                    <a href =<%="\"DeleteBook?id=" + newBooks.get(i).getBookId() + "\""%>><button type="submit">Delete</button></a> 
                                </td>
                                <%}%>
                            </tr>
                        </tbody>
                        <%
                            }
                        %>
                    </table><br/>

                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
