<%-- 
    Document   : search
    Created on : Apr 25, 2018, 2:03:20 AM
    Author     : Sujana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
         <div class="navbar">
                <div class="navbar-inner">
                    <div class="container">

                        <div class="nav-collapse">
                            <ul class="nav">
                                <li class=""><span style="display:inline-block; width: 200px;"></span></li>
                            </ul>
                            <form action="Search" class="navbar-search pull-left" method="POST">
                                <input type="text" id="typeBook" name="inputSearch" placeholder="Search">
                                <select id="bookType" name="searchType">
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
