<%-- 
    Document   : index
    Created on : Mar 29, 2018, 1:36:38 AM
    Author     : Sujana
--%>

<%@page import="controller.BookDAO"%>
<%@page import="controller.CurrencyConverter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Books"%>
<%@page import="controller.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <body>
        <%
            request.setAttribute("onPage", "home");

        %>
        <jsp:include page="header.jsp" flush="true" />
        <jsp:include page="search.jsp" flush="true" />
        <div class="row">
            <jsp:include page="navigation.jsp" flush="true" />
            <div class="span9">
                <div class="well np">
                    <div id="myCarousel" class="carousel slide homCar">
                        <div class="carousel-inner">
                            <div class="item active">
                                <img style="width:100%" src="assets/img/quotebook.jpg" alt="bootstrap ecommerce templates">
                            </div>
                            <div class="item">
                                <img style="width:100%" src="assets/img/quotebook.jpg" alt="bootstrap ecommerce templates">
                            </div>
                            <div class="item">
                                <img style="width:100%" src="assets/img/quotebook.jpg" alt="bootstrap ecommerce templates">
                            </div>
                            <div class="item">
                                <img style="width:100%" src="assets/img/quotebook.jpg" alt="bootstrap templates">
                            </div>
                        </div>
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
                    </div>
                </div>
                <!--
                New Products
                -->
                <div class="well well-small">
                    <h3>New Books </h3> 
                    <%                        String email = (String) request.getAttribute("email");
                        if (email != null) {
                            out.println(email);
                        }
                    %>
                    <hr class="soften"/>

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
                                    <a href=<%="\"product_details.jsp?id=" + newBooks.get(i).getBookId() + "\""%>><img src="assets/img/buku3.jpg" alt=""></a>
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

                <div class="well well-small">
                    <h3>Popular Books </h3>
                    <hr class="soften"/>

                    <div class="row-fluid">
                        <ul class="thumbnails">
                            <%
                                ArrayList<Books> popularBooks = new ArrayList<Books>();
                                popularBooks = bookDAO.getAllBooks();
                                for (int i = 0; i < popularBooks.size(); i++) {
                            %>
                            <li class="span4">
                                <div class="thumbnail">
                                    <a class="zoomTool" href="product_details.jsp" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a href=<%="\"product_details.jsp?id=" + popularBooks.get(i).getBookId() + "\""%>><img src="assets/img/buku3.jpg" alt=""></a>
                                    <div class="caption cntr">
                                        <p><%=popularBooks.get(i).getTitle()%></p>
                                        <p><strong> <%=CurrencyConverter.split(popularBooks.get(i).getPrice())%></strong></p>
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
