<%-- 
    Document   : account
    Created on : Mar 29, 2018, 9:47:35 AM
    Author     : Sujana
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Customers"%>
<%@page import="controller.UserDAO"%>
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
                    <li class="active">View Customer</li>
                </ul>
                <div class="well well-small">	
                    <table class="table table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th>ID Customer</th>
                                <th>Customer Name</th>
                                <th>Address</th>
                                <th>Email</th>
                            </tr>
                        </thead>
                        <%
                                UserDAO userDAO = new UserDAO();
                                ArrayList<Customers> newBooks = new ArrayList<Customers>();
                                newBooks = userDAO.getAllCustomers();
                                for (int i = 0; i < newBooks.size(); i++) {
                            %>
                        <tbody>
                            <tr>
                                <td><p><%=newBooks.get(i).getUserId()%></p></td>
                                <td><p><%=newBooks.get(i).getName()%></p></td>
                                <td><p><%=newBooks.get(i).getAddress()%></p></td>
                                <td><p><%=newBooks.get(i).getEmail()%></p></td>
                            </tr>
                        </tbody>
                          <%
                                }
                            %>
                    </table><br/>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
