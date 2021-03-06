<%-- 
    Document   : account
    Created on : Mar 29, 2018, 9:47:35 AM
    Author     : Sujana
--%>

<%@page import="controller.CurrencyConverter"%>
<%@page import="controller.BookDAO"%>
<%@page import="model.Books"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            request.setAttribute("onPage", "myAccount");
        %>
        <jsp:include page="header.jsp" flush="true" />
        <div class="row">
            <div class="span12">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
                    <li class="active">Manage Book<span class="divider">/</span></li>
                    <li class="active">Insert Book</li>
                </ul>	
                <div class="well well-small">
                    <div class="row-fluid">
                        <h3>Update Book:</h3>
                        <hr class="soft"/>
                        <form class="form-horizontal qtyFrm" action="UpdateBook" method="POST">
                            <%
                                String bookID = request.getParameter("id");
                                Books book = new Books();
                                book = BookDAO.getBookByID(bookID);
                            %>
                            <table class="table table-striped">
                                <tbody>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Author ID:</td><td class="techSpecTD2"><input type="text" name="txt_authorid" value=<%=book.getAuthors().getAuthorId()%> readonly></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Book Name:</td><td class="techSpecTD2"><input type="text" name="txt_bookname" value=<%=book.getTitle()%>></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Synopsis:</td><td class="techSpecTD2"><input type="text" name="txt_synopsis" value=<%=book.getSynopsis()%>></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Year:</td><td class="techSpecTD2"><input type="number" min="1" name="txt_year" value=<%=book.getYear()%>></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Page:</td><td class="techSpecTD2"><input type="number" min="1" name="txt_page" value=<%=book.getPage()%>></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Price:</td><td class="techSpecTD2"><input type="number" min="0" name="txt_price" value=<%=book.getPrice()%>></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Qty:</td><td class="techSpecTD2"><input type="number" min="1" name="txt_qty" value=<%=book.getQty()%>></td></tr>
                                <input type="hidden" name="bookID" value=<%=bookID%>>
                                    <tr class="techSpecRow"><td class="techSpecTD1"><input type="submit" name="btn_insert" value="Update"></td></tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                    <hr class="softn clr"/>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
