<%-- 
    Document   : login
    Created on : Mar 29, 2018, 2:29:22 AM
    Author     : Sujana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            request.setAttribute("onPage", "login");
        %>
        <jsp:include page="header.jsp" flush="true" />
        <div class="row">
            <jsp:include page="navigation.jsp" flush="true" />
            <div class="span9">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
                    <li class="active">Login</li>
                </ul>
                <h3> Login</h3>	
                <hr class="soft"/>

                <div class="row">
                    <div class="span13">
                        <div class="well">
                            <h5>LOGIN</h5>
                            <form action="Login" method="POST">
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">Email</label>
                                    <div class="controls">
                                        <input class="span3"  type="text" placeholder="Email" name="email">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Password</label>
                                    <div class="controls">
                                        <input type="password" class="span3" placeholder="Password" name="password">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" class="defaultBtn" >Sign in</button> <a href="#">Forget password?</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>	

            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
