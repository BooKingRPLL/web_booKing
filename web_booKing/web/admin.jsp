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
                                <th>Title</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Evan</td>
                                <td>B01</td>
                                <td>
                                    <form action="update_book.jsp"><input type="submit" value="Update"/></form>
                                    <input type="submit" value="Delete"/>
                                </td>
                            </tr>
                        </tbody>
                    </table><br/>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
