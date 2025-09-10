<%--
    Document   : mybooks
    Created on : Apr 27, 2024, 11:45:12 AM
    Author     : sanaullah
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="DAO.bookDAOimpl" %>
<%@ page import="entity.bookdtls" %>
<%@ page import="DB.DBconnect" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="DB.DBconnect" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>All Books</title>
    <%@ include file="all-component/allcss.jsp" %>
    <style>
        .card-body {
            background-color: #f8f9fa;
            color: black;
            padding: 10px;
         
          
        }
        
        
    </style>
</head>


<%@ include file="all-component/navbar.jsp" %>

<body>
    <c:if test="${not empty succmsg}">
        <p class="text-center text-success">${succmsg}</p>
        <c:remove var="succmsg" scope="session"/>
    </c:if>
    <c:if test="${not empty failedmsg}">
        <p class="text-center text-danger">${failedmsg}</p>
        <c:remove var="failedmsg" scope="session"/>
    </c:if>
<div class="container">
    <div class="row p-4">
        <% bookDAOimpl dao1 = new bookDAOimpl(DBconnect.getconnection());
        List<bookdtls> list = dao1.getbook();
        for(bookdtls b: list){
        %>
       
        <div class="col-md-3">
             
            <div class="card card-ho" style="width: 12rem; height: 15%;">
                
    
        
  <div class="card-body">
      <img alt="Card image cap" src="book/<%= b.getPhoto()%>" class="card-img-top" style="width:170px; height: 200px;" class="img-thumblin">
       
        <p style="color: black">Name: <%=b.getBookname()%></p>
        <p style="color: black">Author: <%=b.getAuthor()%></p>
        <p style="color: black">Category: <%=b.getBookcategory()%></p>
        <p style="color: black">Price: <%=b.getPrice()%></p>
        <c:choose>
            <c:when test="${empty sessionScope['Userobj']}">
        <a href="login.jsp" class="btn btn-danger btn-sm ml-2">Borrow</a>
        </c:when>
        <c:otherwise>
             <a href="borrow.jsp?id=<%=b.getBookid()%>" class="btn btn-danger btn-sm ml-2">Borrow</a>
        </c:otherwise>
               </c:choose>
    </div>       
</div>      </div>
    
        <% }
        %>
            
    </div>
       
</div>

<footer>
    <%@ include file="all-component/footer.jsp" %>
</footer>
</body>
</html>