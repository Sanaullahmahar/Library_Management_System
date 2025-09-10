<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Book</title>
    
    <%@include file="allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
    <%@include file="navbar.jsp" %>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Add Book</h4>
                        <c:if test="${not empty succmsg}"><p class="text-center text-success">${succmsg}</p>
                            <c:remove var="succmsg" scope="session" /></c:if>
                        <c:if test="${not empty failedmsg}"><p class="text-center text-danger">${failedmsg}</p>
                            <c:remove var="failedmsg" scope="session" /></c:if>
                            
                        <form action="../addbook" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="bname">Book Name</label>
                                <input name="bname" type="text" class="form-control" id="bname">
                            </div>
                            <div class="form-group">
                                <label for="author">Author Name</label>
                                <input name="author" type="text" class="form-control" id="author">
                            </div>
                            <div class="form-group">
                                <label for="price">Price</label>
                                <input name="price" type="number" class="form-control" id="price">
                            </div>
                            <div class="form-group">
                                <label for="category">Book Categories</label>
                                <select id="category" name="category" class="form-control">
                                    <option selected>Select</option>
                                    <option>Art</option>
                                    <option>Biography</option>
                                    <option>Business</option>
                                    <option>Fiction</option>
                                    <option>History</option>
                                    <option>Poetry</option>
                                    <option>Psychology</option>
                                    <option>Other</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="status">Book Status</label>
                                <select id="status" name="status" class="form-control">
                                    <option selected>Select</option>
                                    <option value="Available">Available</option>
                                    <option value="Unavailable">Unavailable</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="photo">Upload Photo</label>
                                <input name="photo" type="file" class="form-control-file" id="photo">
                            </div>
                            <button type="submit" class="btn btn-primary" style="background-color: #00796b;">Add</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>