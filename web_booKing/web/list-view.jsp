<%-- 
    Document   : list-view
    Created on : Mar 29, 2018, 2:20:57 AM
    Author     : Sujana
--%>

<%@page import="controller.CurrencyConverter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Books"%>
<%@page import="controller.UserDAO"%>
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
            <div class="span9">
                <div class="well well-small">
                    <%
                        UserDAO userDAO = new UserDAO();
                        ArrayList<Books> newBooks = new ArrayList<Books>();
                        newBooks = userDAO.getAllBooks();
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
                                    <a href=<%="\"product_details.jsp?id="+newBooks.get(i).getBookId()+"\""%> class="defaultBtn">
                                        <span class=" icon-shopping-cart"></span> 
                                        Add to cart
                                    </a>
                                    <a href=<%="\"product_details.jsp?id="+newBooks.get(i).getBookId()+"\""%> class="shopBtn">VIEW</a>
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
