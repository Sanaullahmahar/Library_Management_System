<%-- 
    Document   : login
    Created on : Mar 30, 2024, 3:41:54 PM
    Author     : ESHOP
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<!DOCTYPE html>
<html>
<head>
    <%@ include file="all-component/allcss.jsp" %>
    <title>Login Page</title>
</head>
<body style="background-color: #f0f1f2;">

<%@ include file="all-component/navbar.jsp" %>
<div class="container p-2">
    <br><br><br><br><br><br>
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center" style="color: #00796b;">Login</h3>
                    <c:if test="${not empty failed}">
                        <h5 class="text-center text-danger">${failed}</h5>
                        <c:remove var="failed" scope="session"/>
                    </c:if>
                    <form action="login" method="post">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
                        </div>
                        <button type="submit" class="btn btn-primary" style="background-color: #00796b;">Login</button>
                        <br><a href="register.jsp" style="color: #00796b;">Create Account</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>