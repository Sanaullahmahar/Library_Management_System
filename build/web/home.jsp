<%-- 
    Document   : index
    Created on : Mar 29, 2024, 1:10:13 AM
    Author     : Sanaullah
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all-component/allcss.jsp" %>
        <style type="text/css">
    .back-img {
        background: url("img/a.jpg");
        height: 86.8vh;
     
       width: 100%;
         background-size: cover;
        background-repeat: no-repeat;
    }
</style>

    </head>
    <body>
        <header><%@include file="all-component/navbar.jsp" %>
        </header>
              <div class="container-fluid back-img">
            
    <h2 class="text-center" style="color: white;">Welcome to GoodReads</h2>
</div>
        <footer><%@include file="all-component/footer.jsp" %></footer>
    </body>
</html>