<%-- 
    Document   : login
    Created on : Mar 29, 2018, 2:29:22 AM
    Author     : Sujana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <jsp:include page="header.jsp" flush="true" />
        <div class="row">
           <div id="sidebar" class="span3">
                <div class="well well-small">
                    <ul class="nav nav-list">
                        <li><a href="products.jsp"><span class="icon-chevron-right"></span>Educational</a></li>
                        <li><a href="products.jsp"><span class="icon-chevron-right"></span>Horror</a></li>
                        <li><a href="products.jsp"><span class="icon-chevron-right"></span>Fantasy</a></li>
                        <li><a href="products.jsp"><span class="icon-chevron-right"></span>Romance</a></li>
                        <li><a href="products.jsp"><span class="icon-chevron-right"></span>Humor</a></li>
                        <li><a href="products.jsp"><span class="icon-chevron-right"></span>Mystery</a></li>
                        <li><a href="products.jsp"><span class="icon-chevron-right"></span>History</a></li>
                        <li><a href="products.jsp"><span class="icon-chevron-right"></span>Adventure</a></li>
                        <li><a href="products.jsp"><span class="icon-chevron-right"></span>See All Books</a></li>
                        <li style="border:0"> &nbsp;</li>
                    </ul>
                </div>
                <div class="well well-small" ><a href="#"><img src="assets/img/paypal.jpg" alt="payment method paypal"></a></div>
            </div>
            <div class="span9">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
                    <li class="active">Login</li>
                </ul>
                <h3> Login</h3>	
                <hr class="soft"/>

                <div class="row">
                    <div class="span4">
                        <div class="well">
                            <h5>LOGIN</h5>
                            <form>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">Email</label>
                                    <div class="controls">
                                        <input class="span3"  type="text" placeholder="Email">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Password</label>
                                    <div class="controls">
                                        <input type="password" class="span3" placeholder="Password">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <button type="submit" class="defaultBtn">Sign in</button> <a href="#">Forget password?</a>
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
