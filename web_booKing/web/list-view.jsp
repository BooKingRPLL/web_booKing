<%-- 
    Document   : list-view
    Created on : Mar 29, 2018, 2:20:57 AM
    Author     : Sujana
--%>

<%@page import="controller.BookDAO"%>
<%@page import="controller.CurrencyConverter"%>
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
        <jsp:include page="search.jsp" flush="true" />
        <div class="row">
            <jsp:include page="navigation.jsp" flush="true" />
            <div class="span9">
                <div class="well well-small">
                    <%
                        BookDAO bookDAO = new BookDAO();
                        ArrayList<Books> newBooks = new ArrayList<Books>();
                        newBooks = bookDAO.getAllBooks();
                        String searchType = (String) request.getAttribute("searchType");
                        String inputSearch = (String) request.getAttribute("inputSearch");
                        if (inputSearch != null) {
                            if (searchType.equals("Title")) {
                                newBooks = bookDAO.getBooksByTitle(inputSearch);
                            } else if (searchType.equals("Author")) {
                                newBooks = bookDAO.getBooksByAuthor(inputSearch);
                            }
                        }
                        for (int i = 0; i < newBooks.size(); i++) {
                    %>
                    <div class="row-fluid">	  
                        <div class="span2">
                            <img src="assets/img/buku1.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5><%=newBooks.get(i).getTitle()%> </h5>
                            <p>
                                <%=newBooks.get(i).getSynopsis()%>
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3> <%=CurrencyConverter.split(newBooks.get(i).getPrice())%></h3>
                                <br>
                                <div class="btn-group">
                                     <h4><a class="shopBtn" href="<%="product_details.jsp?id=" + newBooks.get(i).getBookId() + "\""%>" title="add to cart"> Add to cart </a></h4>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soften">
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
