<%-- 
    Document   : cart
    Created on : Mar 29, 2018, 2:11:28 AM
    Author     : Sujana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <body>
        <%
            request.setAttribute("onPage", "shoppingCart");
        %>
        <jsp:include page="header.jsp" flush="true" />
        <div class="row">
            <div class="span12">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
                    <li class="active">Check Out</li>
                </ul>
                <div class="well well-small">
                    <h1>Check Out</h1>
                    <hr class="soften"/>	
                    <table class="table table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Description</th>
                                <th>Avail.</th>
                                <th>Unit price</th>
                                <th>Qty </th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><img width="100" src="assets/img/buku1.jpg" alt=""></td>
                                <td>Spilling Ink</td>
                                <td><span class="shopBtn"><span class="icon-ok"></span></span> </td>
                                <td>$22.00</td>
                                <td>
                                    <input class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text" value="2">
                                    <div class="input-append">
                                        <button class="btn btn-mini" type="button">-</button><button class="btn btn-mini" type="button"> + </button><button class="btn btn-mini btn-danger" type="button"><span class="icon-remove"></span></button>
                                    </div>
                                </td>
                                <td>$44.00</td>
                            </tr>
                            <tr>
                                <td><img width="100" src="assets/img/buku3.jpg" alt=""></td>
                                <td>Algoritma & Pemrograman</td>
                                <td><span class="shopBtn"><span class="icon-ok"></span></span> </td>
                                <td>$22.00</td>
                                <td>
                                    <input class="span1" style="max-width:34px" placeholder="1" size="16" type="text">
                                    <div class="input-append">
                                        <button class="btn btn-mini" type="button">-</button><button class="btn btn-mini" type="button">+</button><button class="btn btn-mini btn-danger" type="button"><span class="icon-remove"></span></button>
                                    </div>
                                </td>
                                <td>$22.00</td>
                            </tr>
                        </tbody>
                    </table><br/>

                    <table class="table table-bordered">
                        <tbody>
                            <tr><td>ESTIMATE YOUR SHIPPING & TAXES</td></tr>
                            <tr> 
                                <td>
                                    <form class="form-horizontal">
                                        <div class="control-group">
                                            <label class="span2 control-label">Address</label>
                                            <div class="controls">
                                                <input type="text" placeholder="Address">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="span2 control-label">Post Code</label>
                                            <div class="controls">
                                                <input type="text" placeholder="Post Code">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <div class="controls">
                                                <button type="submit" class="shopBtn">Click to check the price</button>
                                            </div>
                                        </div>
                                    </form> 
                                </td>
                            </tr>
                        </tbody>
                    </table>		
                    <a href="index.jsp" class="shopBtn btn-large"><span class="icon-arrow-left"></span> Continue Shopping </a>
                    <a href="login.jsp" class="shopBtn btn-large pull-right">Next <span class="icon-arrow-right"></span></a>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
