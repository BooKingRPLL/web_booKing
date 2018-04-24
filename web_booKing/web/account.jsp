<%-- 
    Document   : account
    Created on : Mar 29, 2018, 9:47:35 AM
    Author     : Sujana
--%>

<%@page import="controller.UserDAO"%>
<%@page import="model.Customers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            request.setAttribute("onPage", "myAccount");
        %>
        <jsp:include page="header.jsp" flush="true" />
        <div class="row">
            <jsp:include page="navigation.jsp" flush="true" />
            <div class="span9">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
                    <li class="active">Account</li>
                </ul>	
                <div class="well well-small">
                    <div class="row-fluid">
                        <div class="span5">
                            <div id="myCarousel" class="carousel slide cntr">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <a href="#"> <img src="assets/img/account.png" alt="" style="width:100%"></a>
                                    </div>
                                </div>
                                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
                            </div>
                        </div>
                        <div class="span7">
                            <h3>Your Account :</h3>
                            <hr class="soft"/>

                            <%
                                Customers customer = new Customers();
                                UserDAO userDAO = new UserDAO();
                                String email = "";
                                Cookie cookie[] = request.getCookies();
                                if (cookie != null) {
                                    for (int i = 0; i < cookie.length; i++) {
                                        if(cookie[i].getName().equals("email")){
                                            email = cookie[i].getValue();
                                            break;
                                        }
                                    }
                                }
                                System.out.println(email);
                                customer = userDAO.getCustomerByEmail(email);
                            %>

                            <form class="form-horizontal qtyFrm">
                                <table class="table table-striped">
                                    <tbody>
                                        <tr class="techSpecRow"><td class="techSpecTD1">Name:</td><td class="techSpecTD2"><%=customer.getName()%> </td></tr>
                                        <tr class="techSpecRow"><td class="techSpecTD1">Address:</td><td class="techSpecTD2"><%=customer.getAddress()%></td></tr>
                                        <tr class="techSpecRow"><td class="techSpecTD1">E-mail:</td><td class="techSpecTD2"><%=customer.getEmail()%></td></tr>
                                    </tbody>
                                </table>
                            </form>
                        </div>
                    </div>
                    <hr class="softn clr"/>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
