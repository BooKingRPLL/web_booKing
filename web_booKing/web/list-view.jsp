<%-- 
    Document   : list-view
    Created on : Mar 29, 2018, 2:20:57 AM
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
                    <div class="row-fluid">	  
                        <div class="span2">
                            <img src="assets/img/buku1.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Buku adalah kumpulan kertas atau bahan lainnya yang dijilid menjadi satu pada salah satu ujungnya dan berisi tulisan atau gambar. Setiap sisi dari sebuah lembaran kertas pada buku disebut sebuah halaman.
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3> $22.00</h3>
                               <br>
                                <div class="btn-group">
                                    <a href="product_details.jsp" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.jsp" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soften">
                    <div class="row-fluid">	  
                        <div class="span2">
                            <img src="assets/img/buku2.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Buku adalah kumpulan kertas atau bahan lainnya yang dijilid menjadi satu pada salah satu ujungnya dan berisi tulisan atau gambar. Setiap sisi dari sebuah lembaran kertas pada buku disebut sebuah halaman.
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3> $22.00</h3>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.jsp" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.jsp" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soften">
                    <div class="row-fluid">	  
                        <div class="span2">
                            <img src="assets/img/buku3.jpg" alt="">
                        </div>
                        <div class="span6">
                            <h5>Product Name </h5>
                            <p>
                                Buku adalah kumpulan kertas atau bahan lainnya yang dijilid menjadi satu pada salah satu ujungnya dan berisi tulisan atau gambar. Setiap sisi dari sebuah lembaran kertas pada buku disebut sebuah halaman.
                            </p>
                        </div>
                        <div class="span4 alignR">
                            <form class="form-horizontal qtyFrm">
                                <h3> $22.00</h3>
                                <br>
                                <div class="btn-group">
                                    <a href="product_details.jsp" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
                                    <a href="product_details.jsp" class="shopBtn">VIEW</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <hr class="soften">
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
