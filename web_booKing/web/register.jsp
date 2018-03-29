<%-- 
    Document   : register
    Created on : Mar 29, 2018, 2:29:30 AM
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
                    <li class="active">Registration</li>
                </ul>
                <h3> Registration</h3>	
                <hr class="soft"/>
                <div class="well">
                    <form class="form-horizontal">
                        <h3>Your Personal Details</h3>
                        <div class="control-group">
                            <label class="control-label">Title <sup>*</sup></label>
                            <div class="controls">
                                <select class="span1" name="days">
                                    <option value="">-</option>
                                    <option value="1">Mr.</option>
                                    <option value="2">Mrs</option>
                                    <option value="3">Miss</option>
                                </select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputFname">First name <sup>*</sup></label>
                            <div class="controls">
                                <input type="text" id="inputFname" placeholder="First Name">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputLname">Last name <sup>*</sup></label>
                            <div class="controls">
                                <input type="text" id="inputLname" placeholder="Last Name">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">Email <sup>*</sup></label>
                            <div class="controls">
                                <input type="text" placeholder="Email">
                            </div>
                        </div>	  
                        <div class="control-group">
                            <label class="control-label">Password <sup>*</sup></label>
                            <div class="controls">
                                <input type="password" placeholder="Password">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Date of Birth <sup>*</sup></label>
                            <div class="controls">
                                <select class="span1" name="days">
                                    <option value="">-</option>
                                    <option value="1">1&nbsp;&nbsp;</option>
                                    <option value="2">2&nbsp;&nbsp;</option>
                                    <option value="3">3&nbsp;&nbsp;</option>
                                    <option value="4">4&nbsp;&nbsp;</option>
                                    <option value="5">5&nbsp;&nbsp;</option>
                                    <option value="6">6&nbsp;&nbsp;</option>
                                    <option value="7">7&nbsp;&nbsp;</option>
                                </select>
                                <select class="span1" name="days">
                                    <option value="">-</option>
                                    <option value="1">1&nbsp;&nbsp;</option>
                                    <option value="2">2&nbsp;&nbsp;</option>
                                    <option value="3">3&nbsp;&nbsp;</option>
                                    <option value="4">4&nbsp;&nbsp;</option>
                                    <option value="5">5&nbsp;&nbsp;</option>
                                    <option value="6">6&nbsp;&nbsp;</option>
                                    <option value="7">7&nbsp;&nbsp;</option>
                                </select>
                                <select class="span1" name="days">
                                    <option value="">-</option>
                                    <option value="1">1&nbsp;&nbsp;</option>
                                    <option value="2">2&nbsp;&nbsp;</option>
                                    <option value="3">3&nbsp;&nbsp;</option>
                                    <option value="4">4&nbsp;&nbsp;</option>
                                    <option value="5">5&nbsp;&nbsp;</option>
                                    <option value="6">6&nbsp;&nbsp;</option>
                                    <option value="7">7&nbsp;&nbsp;</option>
                                </select>
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
