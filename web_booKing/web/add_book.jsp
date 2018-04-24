<%-- 
    Document   : account
    Created on : Mar 29, 2018, 9:47:35 AM
    Author     : Sujana
--%>

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
                        <form class="form-horizontal qtyFrm">
                            <table class="table table-striped">
                                <tbody>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Book ID:</td><td class="techSpecTD2"><input type="text" name="txt_bookid"> </td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Author ID:</td><td class="techSpecTD2"><input type="text" name="txt_authorid"></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Book Name:</td><td class="techSpecTD2"><input type="text" name="txt_bookname"></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Synopsis:</td><td class="techSpecTD2"><input type="text" name="txt_synopsis"></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Year:</td><td class="techSpecTD2"><input type="text" name="txt_year"></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Page:</td><td class="techSpecTD2"><input type="text" name="txt_page"></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Price:</td><td class="techSpecTD2"><input type="text" name="txt_price"></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Qty:</td><td class="techSpecTD2"><input type="text" name="txt_qty"></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1"><input type="button" name="btn_insert" value="Insert"></td></tr>
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
