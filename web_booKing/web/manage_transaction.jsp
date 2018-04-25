<%-- 
    Document   : account
    Created on : Mar 29, 2018, 9:47:35 AM
    Author     : Sujana
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Transactions"%>
<%@page import="controller.TransactionsDAO"%>
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
                                <th>Transaction Date</th>
                                <th>Status</th>
                                <th></th>
                            </tr>
                        </thead>
                        <%
                                TransactionsDAO transDAO = new TransactionsDAO();
                                ArrayList<Transactions> newTransactions = new ArrayList<Transactions>();
                                newTransactions = transDAO.getAllTransactions();
                                for (int i = 0; i < newTransactions.size(); i++) {
                                 
                            %>
                        <tbody>
                            <tr>
                                <td><p><%=newTransactions.get(i).getTransId()%></p></td>
                                <td><p><%=transDAO.getCustomerById(newTransactions.get(i).getCustomers().getUserId()).getName() %></p></td>                              
                                <td><p><%=newTransactions.get(i).getTransDate()%></p></td>
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
