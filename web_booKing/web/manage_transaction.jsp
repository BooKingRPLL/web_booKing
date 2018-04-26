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
                    <div class="row-fluid">
                        <h3>Update Book:</h3>
                        <hr class="soft"/>
                        <form class="form-horizontal qtyFrm" action="UpdateTransaction" method="POST">
                            <%
                                String TransID = request.getParameter("id");
                                Transactions trans = new Transactions();
                                trans = TransactionsDAO.getTransactionByID(TransID);
                            %>
                            <table class="table table-striped">
                                <tbody>

                                    <tr class="techSpecRow"><td class="techSpecTD1">Transaction ID:</td><td class="techSpecTD2"><input type="text" name="txt_transid" value=<%=trans.getTransId()%> readonly></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Customer Name:</td><td class="techSpecTD2"><input type="text" name="txt_customername" value=<%=TransactionsDAO.getCustomerById(trans.getCustomers().getUserId()).getName()%> readonly></td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Status Before:</td><td class="techSpecTD2"><input type="text" name="txt_status" value=<%=TransactionsDAO.getStatusById(trans.getStatus().getStatusId()).getStatus()%> readonly></td></tr>
                                    <tr><td><select id="statusType" name="statusType">
                                                <option value="S00001">Cart</option>
                                                <option value="S00002">Paid</option>
                                                <option value="S00003">Shipped</option>
                                                <option value="S00004">Received</option>
                                            </select></td></tr>
                                <input type="hidden" name="TransID" value=<%=TransID%>>
                                <tr class="techSpecRow"><td class="techSpecTD1"><input type="submit" name="btn_update" value="Update"></td></tr>
                                </tbody>
                            </table>
                        </form>
                    </div><br/>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
