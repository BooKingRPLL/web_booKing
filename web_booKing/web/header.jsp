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
                    <%
                        String home = "active";
                        String myAccount = null;
                        String login = null;
                        String register = null;
                        String shoppingCart = null;
                        boolean status_login = false;
                        String onPage = (String) request.getAttribute("onPage");
                        String cek = (String) request.getAttribute("login");
//                        if(cek.equals("true")){
//                            status_login = true;
//                        }
                    %>
                        <a class=<%=home%> href="index.jsp?"> <span class="icon-home"></span> Home</a> 
                    <%
                        if (onPage.equals("home")) {
                            home = "active";
                            myAccount = null;
                            login = null;
                            register = null;
                            shoppingCart = null;
                        } else if (onPage.equals("myAccount")) {
                            home = null;
                            myAccount = "active";
                            login = null;
                            register = null;
                            shoppingCart = null;
                            status_login = true;
                        } else if (onPage.equals("login")) {
                            home = null;
                            myAccount = null;
                            login = "active";
                            register = null;
                            shoppingCart = null;
                            status_login = false;
                        } else if (onPage.equals("register")) {
                            home = null;
                            myAccount = null;
                            login = null;
                            register = "active";
                            shoppingCart = null;
                            status_login = false;
                        } else if (onPage.equals("shoppingCart")) {
                            home = null;
                            myAccount = null;
                            login = null;
                            register = null;
                            shoppingCart = "active";
                            status_login = true;
                        } else {
                            home = "active";
                            myAccount = null;
                            login = null;
                            register = null;
                            shoppingCart = null;
                        }
                        if(status_login){
                    %>
                        <a class=<%=myAccount%> href="account.jsp"><span class="icon-user"></span> My Account</a> 
                        <a class=<%=shoppingCart%> href="cart.jsp"><span class="icon-shopping-cart"></span> Shopping Cart</a>
                    <%
                        }else{
                    %>
                        <a class=<%=login%> href="login.jsp"> Login </a>
                        <a class=<%=register%> href="register.jsp"> Register </a> 
                    <%        
                        }
                    %>  
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
                            <form action="Search" class="navbar-search pull-left" method="POST">
                                <input type="text" id="typeBook" name="bookTitle" placeholder="Search" class="search-query span2">
                                <select id="bookType" name="bookType">
                                    <option value="Title">Title</option>
                                    <option value="Author">Author</option>
                                </select>
                                <button>Search</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

    </body>
</html>
