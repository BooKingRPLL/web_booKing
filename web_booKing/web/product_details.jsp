<%-- 
    Document   : product_details
    Created on : Mar 29, 2018, 9:23:32 AM
    Author     : Sujana
--%>

<%@page import="model.Authors"%>
<%@page import="controller.BookDAO"%>
<%@page import="controller.CurrencyConverter"%>
<%@page import="model.Books"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            request.setAttribute("onPage", "home");
        %>
        <jsp:include page="header.jsp" flush="true" />
        <div class="row">
            <jsp:include page="navigation.jsp" flush="true" />
            <div class="span9">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a> <span class="divider">/</span></li>
                    <li><a href="products.html">Items</a> <span class="divider">/</span></li>
                    <li class="active">Preview</li>
                </ul>	
                <div class="well well-small">
                    <div class="row-fluid">
                        <div class="span5">
                            <div id="myCarousel" class="carousel slide cntr">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <a href="#"> <img src="assets/img/buku2.jpg" alt="" style="width:100%"></a>
                                    </div>
                                    <div class="item">
                                        <a href="#"> <img src="assets/img/buku1.jpg" alt="" style="width:100%"></a>
                                    </div>
                                    <div class="item">
                                        <a href="#"> <img src="assets/img/buku3.jpg" alt="" style="width:100%"></a>
                                    </div>
                                </div>
                                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
                            </div>
                        </div>
                        <div class="span7">
                            <%
                                BookDAO bookDAO = new BookDAO();
                                String bookID = (String) request.getParameter("id");
                                Books book = bookDAO.getBookByID(bookID);
                                Authors author = bookDAO.getAuthorByBookID(bookID);
                                
                            %>
                            <h3><%=book.getTitle()%></h3>
                            <hr class="soft"/>

                            <form class="form-horizontal qtyFrm" action=<%="\"AddToCart?id=" + book.getBookId() + "\""%> method="POST">
                                <div class="control-group">
                                    <label class="control-label"><span>Price : <br><%=CurrencyConverter.split(book.getPrice())%></span></label>
                                    <div class="controls">
                                        <label class="control-label"><span>Stock : <%=book.getQty()%><br></span></label>
                                        <input type="number" class="span6" placeholder="Qty." name="qty" min="0" max=<%="\"" + book.getQty() + "\""%>>
                                    </div>
                                </div>
                                <h4>Overview</h4>
                                <p>
                                    <%= book.getSynopsis()%>
                                </p>
                                <button type="submit" class="shopBtn"><span class=" icon-shopping-cart"></span> Add to cart</button>
                                <%
                                    String warningAddToCart = (String) request.getAttribute("warningAddToCart");
                                    if (warningAddToCart != null) {
                                %>
                                <br>
                                <p style="color:red"><strong><%=warningAddToCart%></strong></p>
                                <%                                    }
                                %>
                            </form>
                        </div>
                    </div>
                    <hr class="softn clr"/>


                    <ul id="productDetail" class="nav nav-tabs">
                        <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content tabWrapper">
                        <div class="tab-pane fade active in" id="home">
                            <h4>Product Information</h4>
                            <table class="table table-striped">
                                <tbody>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Nama Buku:</td><td class="techSpecTD2"><%=book.getTitle()%></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Author:</td><td class="techSpecTD2"><%=author.getAuthor()%></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Tahun Terbit:</td><td class="techSpecTD2"><%=book.getYear()%></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Tebal Buku:</td><td class="techSpecTD2"><%=book.getPage()%></td></tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
