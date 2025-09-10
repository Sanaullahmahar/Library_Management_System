<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="DAO.bookDAOimpl" %>
<%@ page import="entity.borrowdtls" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="DB.DBconnect" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Borrowed Books</title>
    <%@include file="allcss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp" %>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Book Name</th>
        <th scope="col">Author</th>
        <th scope="col">Price</th>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Contact</th>
        <th scope="col">Address</th>
        <th scope="col">Borrow Date</th>
        <th scope="col">Return Date</th>
    </tr>
    </thead>
    <tbody>
    <% bookDAOimpl dao1 = new bookDAOimpl(DBconnect.getconnection());
       List<borrowdtls> list1 = dao1.getallborrowed();
       for(borrowdtls b : list1) {
    %>
    <tr>
        <td><%= b.getId() %></td>
        <td><%= b.getBook_name() %></td>
         <td><%= b.getAuthor() %></td>
          <td><%= b.getPrice() %></td>
        <td><%= b.getName() %></td>
         <td><%= b.getEmail() %></td>
        <td><%= b.getContact() %></td>
        <td><%= b.getAdress() %></td>
        <td><%= b.getBodate() %></td>
        <td><%= b.getRedate() %></td>
    </tr>
    <% }
    %>
    </tbody>
</table>

</body>
</html>