<%-- 
    Document   : register
    Created on : Mar 29, 2018, 2:29:30 AM
    Author     : Sujana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        request.setAttribute("onPage", "register");
    %>
    <body>
        <jsp:include page="header.jsp" flush="true" />
        <div class="row">
            <jsp:include page="navigation.jsp" flush="true" />
            <div class="span9">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
                    <li class="active">Registration</li>
                </ul>
                <h3> Registration</h3>	
                <hr class="soft"/>
                <div class="well">
                    <form class="form-horizontal" action="Register" method="POST">
                        <h3>Your Personal Details</h3>
                        <div class="control-group">
                            <label class="control-label" for="firstName">First name <sup>*</sup></label>
                            <div class="controls">
                                <input type="text" id="firstName" placeholder="First Name" name="firstName">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="lastName">Last name <sup>*</sup></label>
                            <div class="controls">
                                <input type="text" id="lastName" placeholder="Last Name" name="lastName">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">Email <sup>*</sup></label>
                            <div class="controls">
                                <input type="text" id="inputEmail" placeholder="Email" name="inputEmail">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="phoneNumber">Phone Number <sup>*</sup></label>
                            <div class="controls">
                                <input type="text" id="phoneNumber" placeholder="Phone Number" name="phoneNumber">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="address">Address <sup>*</sup></label>
                            <div class="controls">
                                <input type="text" id="address" placeholder="Address" name="address">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Password <sup>*</sup></label>
                            <div class="controls">
                                <input type="password" id="password" placeholder="Password" name="password">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Confirm Password <sup>*</sup></label>
                            <div class="controls">
                                <input type="password" id="confirmPassword" placeholder="Confirm Password" name="confirmPassword">
                            </div>
                        </div>

                        <div class="control-group">
                            <div class="controls">
                                <input type="submit" name="submitAccount" value="Register" class="exclusive shopBtn">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
