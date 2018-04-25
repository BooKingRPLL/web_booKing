<%-- 
    Document   : cart
    Created on : Mar 29, 2018, 2:11:28 AM
    Author     : Sujana
--%>

<%@page import="model.TransLists"%>
<%@page import="model.TransLists"%>
<%@page import="model.Transactions"%>
<%@page import="controller.TransactionsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Books"%>
<%@page import="controller.BookDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <body>
        <%
            request.setAttribute("onPage", "shoppingCart");
        %>
        <jsp:include page="header.jsp" flush="true" />
        <div class="row">
            <div class="span12">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
                    <li class="active">Check Out</li>
                </ul>
                <div class="well well-small">
                    <h1>Check Out</h1>
                    <hr class="soften"/>	
                    <table class="table table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Description</th>
                                <th>Avail.</th>
                                <th>Unit price</th>
                                <th>Qty </th>
                                <th>Total</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                TransactionsDAO transDAO = new TransactionsDAO();
                                BookDAO bookDAO = new BookDAO();
                                Cookie cookie[] = request.getCookies();
                                String userid = "";
                                if (cookie != null) {
                                    for (int i = 0; i < cookie.length; i++) {
                                        if (cookie[i].getName().equals("userid")) {
                                            userid = cookie[i].getValue();
                                            break;
                                        }
                                    }
                                }
                                Transactions t = transDAO.getTransCartByUser(userid);
                                if (t != null) {
                                    ArrayList<TransLists> transList = transDAO.getTransLists(t.getTransId());
                                    for (int i = 0; i < transList.size(); i++) {
                                        Books b = bookDAO.getBookByID(transList.get(i).getBooks().getBookId());
                            %>
                            <tr>
                                <td><img width="100" src="assets/img/buku1.jpg" alt=""></td>
                                <td><%= b.getTitle()%></td>
                                <td><span class="shopBtn"><span class="icon-ok"></span></span> </td>
                                <td><%= b.getPrice()%></td>
                                <td>
                                    <%= transList.get(i).getQuantity()%>
                                    <!--                                    <input class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text" value="2">
                                                                        <div class="input-append">
                                                                            <button class="btn btn-mini" type="button">-</button><button class="btn btn-mini" type="button"> + </button><button class="btn btn-mini btn-danger" type="button"><span class="icon-remove"></span></button>
                                                                        </div>-->
                                </td>
                                <td><%= (b.getPrice() * transList.get(i).getQuantity())%></td>
                                <td> <a href =""><button type="submit">Cancel</button></a></td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                        </tbody>
                    </table><br/>

                    <table class="table table-bordered">
                    </table>		
                    <a href="index.jsp" class="shopBtn btn-large"><span class="icon-arrow-left"></span> Continue Shopping </a>

                    <a href=<%= t == null ? ("#") : ("\"Buy\"")%> class="shopBtn btn-large pull-right">Next <span class="icon-arrow-right"></span></a>
                    <%
                        String buy = (String) request.getAttribute("buy");
                        if (buy != null) {
                    %>
                            <p><%=buy%></p>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
