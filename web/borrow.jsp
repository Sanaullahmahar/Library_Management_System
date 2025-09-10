<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="DAO.bookDAOimpl" %>
<%@page import="entity.bookdtls" %>        
        <%@ page import="DB.DBconnect" %>

<%
    String idStr = request.getParameter("id");
    int id = Integer.parseInt(idStr);

    bookDAOimpl dao = new bookDAOimpl(DBconnect.getconnection());
    bookdtls book = dao.getBookById(id);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Borrow Book</title>
    <%@ include file="all-component/allcss.jsp" %>
</head>
<body>
    
 <%@ include file="all-component/navbar.jsp" %>
    <form action="borrowbook" method="post">
       

        <div class="container p-2">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center" style="color: #00796b;"> Book Borrow </h3>
                           <div class="mb-3">
                                <label for="userId" class="form-label">Book Name</label>
                                <input type="text" class="form-control" id="bookname" name="book_name" value="<%= book.getBookname() %>">
                            </div>
                             <div class="mb-3">
                                <label for="userId" class="form-label">Author name</label>
                                <input type="text" class="form-control" id="authorname" name="author" value="<%= book.getAuthor() %>">
                            </div>
                             <div class="mb-3">
                                <label for="userId" class="form-label">Price</label>
                                <input type="text" class="form-control" id="priceofbook" name="price" value="<%= book.getPrice() %>" >
                            </div>
                            <div class="mb-3">
                                <label for="userId" class="form-label">User ID</label>
                                <input type="text" class="form-control" id="userId" name="user_id" required>
                            </div>
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" name="name" required="required">
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email" required="required" value="${Userobj.email}"> 
                            </div>
                            <div class="mb-3">
                                <label for="contact" class="form-label">Contact</label>
                                <input type="text" class="form-control" id="contact" name="contact" required="required">
                            </div>
                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" name="address" required="required">
                            </div>
                            <div class="mb-3">
                                <label for="borrowDate" class="form-label">Borrow Date</label>
                                <input type="date" class="form-control" id="borrowDate" name="bdate" required="required">
                            </div>
                            <div class="mb-3">
                                <label for="returnDate" class="form-label">Return Date</label>
                                <input type="date" class="form-control" id="returnDate" name="rdate" required="required">
                            </div>
                            <button type="submit" class="btn btn-primary" style="background-color: #00796b;"><a Borrow</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>