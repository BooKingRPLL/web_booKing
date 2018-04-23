<%-- 
    Document   : product_details
    Created on : Mar 29, 2018, 9:23:32 AM
    Author     : Sujana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            request.setAttribute("onPage", "home");
        %>
        <jsp:include page="header.jsp" flush="true" />
        <div class="row">
            <jsp:include page="navigation.jsp" flush="true" />
            <div class="span9">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a> <span class="divider">/</span></li>
                    <li><a href="products.html">Items</a> <span class="divider">/</span></li>
                    <li class="active">Preview</li>
                </ul>	
                <div class="well well-small">
                    <div class="row-fluid">
                        <div class="span5">
                            <div id="myCarousel" class="carousel slide cntr">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <a href="#"> <img src="assets/img/buku2.jpg" alt="" style="width:100%"></a>
                                    </div>
                                    <div class="item">
                                        <a href="#"> <img src="assets/img/buku1.jpg" alt="" style="width:100%"></a>
                                    </div>
                                    <div class="item">
                                        <a href="#"> <img src="assets/img/buku3.jpg" alt="" style="width:100%"></a>
                                    </div>
                                </div>
                                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
                            </div>
                        </div>
                        <div class="span7">
                            <h3>Name of the Item</h3>
                            <hr class="soft"/>

                            <form class="form-horizontal qtyFrm">
                                <div class="control-group">
                                    <label class="control-label"><span>Price : $140.00</span></label>
                                    <div class="controls">
                                        <input type="number" class="span6" placeholder="Qty.">
                                    </div>
                                </div>
                                <h4>Overview</h4>
                                <p>Buku adalah kumpulan kertas atau bahan lainnya yang dijilid menjadi satu pada salah satu ujungnya dan berisi tulisan atau gambar. Setiap sisi dari sebuah lembaran kertas pada buku disebut sebuah halaman.
                                </p>
                                <button type="submit" class="shopBtn"><span class=" icon-shopping-cart"></span> Add to cart</button>

                            </form>
                        </div>
                    </div>
                    <hr class="softn clr"/>


                    <ul id="productDetail" class="nav nav-tabs">
                        <li class="active"><a href="#home" data-toggle="tab">Product Details</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content tabWrapper">
                        <div class="tab-pane fade active in" id="home">
                            <h4>Product Information</h4>
                            <table class="table table-striped">
                                <tbody>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Nama Buku:</td><td class="techSpecTD2">Harry Potter</td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Pengarang:</td><td class="techSpecTD2">JK Rowling</td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Penerbit:</td><td class="techSpecTD2">PT.Buku</td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Tahun Terbit:</td><td class="techSpecTD2">2001</td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">Tebal Buku:</td><td class="techSpecTD2">200</td></tr>
                                    <tr class="techSpecRow"><td class="techSpecTD1">ISBN:</td><td class="techSpecTD2">122855031</td></tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" flush="true" />
    </body>
</html>
