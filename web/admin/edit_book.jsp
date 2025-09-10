<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<%@ include file="allcss.jsp" %>
<%@ page import="DAO.bookDAOimpl" %>
<%@page import="entity.bookdtls" %>        
        <%@ page import="DB.DBconnect" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    bookDAOimpl dao = new bookDAOimpl(DBconnect.getconnection());
    bookdtls book = dao.getBookById(id);
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit Book</title>
</head>
<body style="background-color: #f0f1f2;">
<%@ include file="navbar.jsp" %>
<br>

<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <form action="../editbooks" method="post">
                        
                        <h4 class="text-center">Edit Book</h4>
                        <input type="hidden" name="id" value="<%= book.getBookid()%>">
                  
                    <form action="editbook" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="bname">Book Name</label>
                            <input name="bname" type="text" class="form-control" id="bname" value="<%= book.getBookname() %>">
                        </div>
                        <div class="form-group">
                            <label for="author">Author Name</label>
                            <input name="author" type="text" class="form-control" id="author" value="<%= book.getAuthor() %>">
                        </div>
                        <div class="form-group">
                            <label for="price">Price</label>
                            <input name="price" type="number" class="form-control" id="price" value="<%= book.getPrice() %>">
                        </div>
                        <div class="form-group">
                            <label for="status">Book Status</label>
                            <select id="inputState" name="status" class="form-control">
                                <c:choose>
                                    <c:when test="${'Active' eq book.getStatus()}">
                                        <option value="available">Available</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="Unavailable">unavailable</option>
                                    </c:otherwise>
                                        
                                </c:choose>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary" style="background-color: #00796b;">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>