<%-- 
    Document   : grid-view
    Created on : Mar 29, 2018, 2:20:47 AM
    Author     : Sujana
--%>

<%@page import="controller.BookDAO"%>
<%@page import="controller.CurrencyConverter"%>
<%@page import="controller.UserDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Books"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        request.setAttribute("onPage", "home");
    %>
    <body>
        <jsp:include page="header.jsp" flush="true" />
        <div class="row">
            <jsp:include page="navigation.jsp" flush="true" />
            <jsp:include page="search.jsp" flush="true" />
            <div class="span9">
                <div class="well well-small">
                    <h3>Our Collections </h3>
                    <div class="row-fluid">
                        <ul class="thumbnails">
                            <%
                                BookDAO bookDAO = new BookDAO();
                                ArrayList<Books> newBooks = new ArrayList<Books>();
                                newBooks = bookDAO.getAllBooks();
                                for (int i = 0; i < newBooks.size(); i++) {
                            %>
                            <li class="span4">
                                <div class="thumbnail">
                                    <a class="zoomTool" href="product_details.jsp" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a href=<%="\"product_details.jsp?id="+newBooks.get(i).getBookId()+"\""%>><img src="assets/img/buku3.jpg" alt=""></a>
                                    <div class="caption cntr">
                                        <p><%=newBooks.get(i).getTitle()%></p>
                                        <p><strong> <%=CurrencyConverter.split(newBooks.get(i).getPrice())%></strong></p>
                                        <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                        <br class="clr">
                                    </div>
                                </div>
                            </li>
                            <%
                                }
                            %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
