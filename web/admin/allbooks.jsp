<%-- 
    Document   : allbooks
    Created on : Apr 19, 2024, 1:18:43 PM
    Author     : sanaullah
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="DAO.bookDAOimpl" %>
<%@ page import="entity.bookdtls" %>
<%@ page import="DB.DBconnect" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All books</title>
         <c:if test="${not empty Successmsg}">
                        <p class="text-center text-success">${Successmsg}</p>
                        <c:remove var="Successmsg" scope="session"/>
                    </c:if>
                    <c:if test="${not empty failedmsg}">
                        <p class="text-center text-danger">${failedmsg}</p>
                        <c:remove var="failedmsg" scope="session"/>
                    </c:if>
         <%@include file="allcss.jsp"%>
    </head>
    <body>
        


          <%@include file="navbar.jsp" %>
           <% bookDAOimpl dao=new bookDAOimpl(DBconnect.getconnection()) ;
      List<bookdtls> list=dao.getallbooks(); %>
       <table class="table">
  <thead class="thead-dark">
    <tr>
        <th scope="col">Id</th>
      <th scope="col">Image</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Status</th>
      <th scope="col">email</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <% bookDAOimpl dao1 = new bookDAOimpl(DBconnect.getconnection());
      List<bookdtls> list1 = dao1.getallbooks();
      for(bookdtls b:list){
      %>
       <tr>
      <td><%=b.getBookid()%></td>
      <td><Img src="../book/<%=b.getPhoto()%>" 
               style="width: 50px ; height: 50px"> </td>
      <td><%=b.getBookname()%></td>
      <td><%=b.getAuthor()%></td>
      <td><%=b.getPrice()%></td>
      <td><%=b.getBookcategory()%></td>
       <td><%=b.getStatus()%></td>
        <td><%=b.getEmail()%></td>
       
      <td>
  <a href="edit_book.jsp?id=<%=b.getBookid() %>" class="btn btn-sm btn btn-primary">Edit</a>
  <a href="..//deletebooks?id=<%=b.getBookid()%>" class="btn btn-sm btn btn-danger">Delete</a>
      </td>
    </tr>
      <%}
%>
  </tbody>
</table>


    </body>
</html>