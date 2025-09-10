<%-- 
    Document   : register
    Created on : Mar 30, 2024, 2:26:42 PM
    Author     : ESHOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register Page</title>
        <%@include file="all-component/allcss.jsp" %>
        
    </head>

    <body style="background-color: #f0f1f2;">
        
        <%@include file="all-component/navbar.jsp" %>
    
        <div class="container p-2">
            <br><br><br>
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center" style="color: #00796b;"> Registration </h3>
                            <form action="register" method="post">
                                <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Name </label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="name">
    
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
    
  </div>
                                <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Contact</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp " required="required" name ="phone">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" required="required" name ="password">
  </div>
                                <button type="submit"  class="btn btn-primary" style="background-color: #00796b;">Submit</button>
                            </form>  </div>
                    </div>
                </div>
            </div>
        </div>
        </form>

    </body>
</html>