<%-- 
    Document   : header
    Created on : Mar 29, 2018, 1:36:49 AM
    Author     : Sujana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>BooKing</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="assets/css/bootstrap.css" rel="stylesheet"/>
        <link href="style.css" rel="stylesheet"/>
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
    </head>
    <body>
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="topNav">
                <div class="container">
                    <div class="alignR">
                        <a class="active" href="index.jsp"> <span class="icon-home"></span> Home</a> 
                        <a href="account.jsp"><span class="icon-user"></span> My Account</a> 
                        <a href="login.jsp"> Login </a>
                        <a href="register.jsp"> Register </a> 
                        <a href="cart.jsp"><span class="icon-shopping-cart"></span> Shopping Cart</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div id="gototop"> </div>
            <header id="header">
                <div class="row">
                    <div class="span4">
                        <center>
                        <h1>
                            <a class="logo" href="index.jsp"> 
                                <img src="assets/img/logo3.png" alt="bootstrap sexy shop">
                            </a>
                        </h1>
                        </center>
                    </div>
                </div>
            </header>

            <div class="navbar">
                <div class="navbar-inner">
                    <div class="container">
                       
                        <div class="nav-collapse">
                            <ul class="nav">
                                <li class=""><a href="list-view.jsp">List View</a></li>
                                <li class=""><a href="grid-view.jsp">Grid View</a></li>
                            </ul>
                            <form action="#" class="navbar-search pull-left">
                                <input type="text" placeholder="Search" class="search-query span2">
                                <button>Search</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            
    </body>
</html>
