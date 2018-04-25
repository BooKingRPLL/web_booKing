<%-- 
    Document   : navigation
    Created on : Mar 29, 2018, 8:58:40 AM
    Author     : Sujana
--%>

<%@page import="controller.BookDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Genres"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <div id="sidebar" class="span3">
                <div class="well well-small">
                    <ul class="nav nav-list">
                        <li><a href="admin.jsp"><span class="icon-chevron-right"></span>Manage Book</a></li>
                        <li><a href="view_customer.jsp"><span class="icon-chevron-right"></span>View Customer</a></li>
                        <li><a href="view_transaction.jsp"><span class="icon-chevron-right"></span>View Transaction</a></li>
                        
                    </ul>
                </div>
               
            </div>
    </body>
</html>
