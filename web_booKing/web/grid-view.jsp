<%-- 
    Document   : grid-view
    Created on : Mar 29, 2018, 2:20:47 AM
    Author     : Sujana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <jsp:include page="header.jsp" flush="true" />
        <div class="row">
            <jsp:include page="navigation.jsp" flush="true" />
            <div class="span9">
                <div class="well well-small">
                    <h3>Our Collections </h3>
                    <div class="row-fluid">
                        <ul class="thumbnails">
                            <li class="span4">
                                <div class="thumbnail">
                                    <a href="product_details.jsp" class="overlay"></a>
                                    <a class="zoomTool" href="product_details.jsp" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a href="product_details.jsp"><img src="assets/img/buku1.jpg" alt=""></a>
                                    <div class="caption cntr">
                                        <p>Spilling Ink</p>
                                        <p><strong> $22.00</strong></p>
                                        <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                        <br class="clr">
                                    </div>
                                </div>
                            </li>
                            <li class="span4">
                                <div class="thumbnail">
                                    <a href="product_details.jsp" class="overlay"></a>
                                    <a class="zoomTool" href="product_details.jsp" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a href="product_details.jsp"><img src="assets/img/buku2.jpg" alt=""></a>
                                    <div class="caption cntr">
                                        <p>Harry Potter</p>
                                        <p><strong> $22.00</strong></p>
                                        <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                        <br class="clr">
                                    </div>
                                </div>
                            </li>
                            <li class="span4">
                                <div class="thumbnail">
                                    <a href="product_details.jsp" class="overlay"></a>
                                    <a class="zoomTool" href="product_details.jsp" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a href="product_details.jsp"><img src="assets/img/buku3.jpg" alt=""></a>
                                    <div class="caption cntr">
                                        <p>Algoritma & Pemrograman</p>
                                        <p><strong> $22.00</strong></p>
                                        <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                        <br class="clr">
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="row-fluid">
                        <ul class="thumbnails">
                            <li class="span4">
                                <div class="thumbnail">
                                    <a href="product_details.jsp" class="overlay"></a>
                                    <a class="zoomTool" href="product_details.jsp" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a href="product_details.jsp"><img src="assets/img/buku1.jpg" alt=""></a>
                                    <div class="caption cntr">
                                        <p>Spilling Ink</p>
                                        <p><strong> $22.00</strong></p>
                                        <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                        <br class="clr">
                                    </div>
                                </div>
                            </li>
                            <li class="span4">
                                <div class="thumbnail">
                                    <a href="product_details.jsp" class="overlay"></a>
                                    <a class="zoomTool" href="product_details.jsp" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a href="product_details.jsp"><img src="assets/img/buku2.jpg" alt=""></a>
                                    <div class="caption cntr">
                                        <p>Harry Potter</p>
                                        <p><strong> $22.00</strong></p>
                                        <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                        <br class="clr">
                                    </div>
                                </div>
                            </li>
                            <li class="span4">
                                <div class="thumbnail">
                                    <a href="product_details.jsp" class="overlay"></a>
                                    <a class="zoomTool" href="product_details.jsp" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a href="product_details.jsp"><img src="assets/img/buku3.jpg" alt=""></a>
                                    <div class="caption cntr">
                                        <p>Algoritma & Pemrograman</p>
                                        <p><strong> $22.00</strong></p>
                                        <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                        <br class="clr">
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
