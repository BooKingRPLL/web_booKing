<%-- 
    Document   : account
    Created on : Mar 29, 2018, 9:47:35 AM
    Author     : Sujana
--%>

<%@page import="model.Genres"%>
<%@page import="controller.BookDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Authors"%>
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
                        <h3>Insert Book:</h3>
                        <hr class="soft"/>
                        <form class="form-horizontal qtyFrm" action="InsertBook" method="POST">
                            <table class="table table-striped">
                                <tbody>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Book ID:</td><td class="techSpecTD2"><input type="text" name="txt_bookid"> </td></tr>

                                    <tr class="techSpecRow">
                                        <td class="techSpecTD1">Author ID:</td><td class="techSpecTD2">
                                            <select id="author" name="txt_authorid">
                                                <%
                                                    ArrayList<Authors> authors = new ArrayList<Authors>();
                                                    BookDAO bookDAO = new BookDAO();
                                                    authors = bookDAO.getAllAuthors();
                                                    for (int i = 0; i < authors.size(); i++) {
                                                %>
                                                <option value=<%=authors.get(i).getAuthorId()%>><%=authors.get(i).getAuthorId()%></option>
                                                <%}%>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Book Name:</td><td class="techSpecTD2"><input type="text" name="txt_bookname"></td></tr>
                                    <%
                                        ArrayList<Genres> genres = new ArrayList<Genres>();
                                        genres = bookDAO.getAllGenres();
                                        for (int i = 0; i < genres.size(); i++) {
                                    %>
                                        <tr class="techSpecRow">
                                            <td class="techSpecTD1"><%="Genre "+(i+1)+": "%></td><td class="techSpecTD2">
                                                <select id="author" name=<%="genre"+i%>>
                                                    <%
                                                        for (int j = 0; j < genres.size(); j++) {
                                                    %>
                                                    <option value=<%=genres.get(j).getGenre()%>><%=genres.get(j).getGenre()%></option>
                                                    <%}%>
                                                    <option value="default" selected>--Select--</option>
                                                </select>
                                            </td>
                                        </tr>
                                    <%}%>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Synopsis:</td><td class="techSpecTD2"><input type="text" name="txt_synopsis"></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Year:</td><td class="techSpecTD2"><input type="number" name="txt_year" min="1"></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Page:</td><td class="techSpecTD2"><input type="number" name="txt_page" min="1"></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Price:</td><td class="techSpecTD2"><input type="number" name="txt_price" min="0"></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Qty:</td><td class="techSpecTD2"><input type="number" name="txt_qty" min="1"></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1"><input type="submit" name="btn_insert" value="Insert"></td></tr>
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
