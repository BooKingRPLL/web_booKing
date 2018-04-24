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
                    <li class="active">Manage Transaction</li>
                </ul>
                <div class="well well-small">	
                    <table class="table table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th>ID Transaction</th>
                                <th>Customer Name</th>
                                <th>ID Book</th>
                                <th>Qty</th>
                                <th>Status</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Evan</td>
                                <td>B01</td>
                                <td>2</td>
                                <td>
                                    <select id="status" name="status">
                                        <option value="Pending">Pending</option>
                                        <option value="Shipping">Shipping</option>
                                        <option value="Complete">Complete</option>
                                    </select>
                                </td>
                                <td><button type="button">Update</button></td>
                            </tr>
                        </tbody>
                    </table><br/>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
