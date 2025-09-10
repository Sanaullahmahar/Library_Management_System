<%-- 
    Document   : home
    Created on : Apr 19, 2024, 2:19:53 AM
    Author     : ESHOP
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin page</title>
    <%@include file="allcss.jsp"%>
    <style type="text/css">
        a {
            text-decoration: none;
            color: black;
        }

        a:hover {
            text-decoration: none;
            color: black;
        }

        .card {
            height: 100%;
            transition: transform 0.3s;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-body {
            padding: 20px;
             color: black;
        }

        .card-body h4 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .card-body p {
            margin-bottom: 0;
        }
    </style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
    <div class="row p-5">
        <div class="col-md-4">
            <a href="addbook.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <i class="fa fa-plus-square fa-3x text-primary"></i>
                        <h4>Add Book</h4>
                        <p>---------</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="allbooks.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <i class="fa fa-book-open fa-3x text-danger"></i>
                        <h4>All Books</h4>
                        <p>---------</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="bookborrowed.jsp">
                <div class="card">
                    <div class="card-body text-center">
                        <i class="fa fa-box-open fa-3x text-warning"></i>
                        <h4>Book Borrowed</h4>
                        <p>---------</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
