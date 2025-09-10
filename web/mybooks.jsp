 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="DAO.bookDAOimpl" %>
<%@ page import="entity.borrowdtls" %>
<%@ page import="DB.DBconnect" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.user" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>My Books</title>
    <c:if test="${not empty Successmsg}">
        <p class="text-center text-success">${Successmsg}</p>
        <c:remove var="Successmsg" scope="session"/>
    </c:if>
    <c:if test="${not empty failedmsg}">
        <p class="text-center text-danger">${failedmsg}</p>
        <c:remove var="failedmsg" scope="session"/>
    </c:if>
    
    <%@ include file="all-component/allcss.jsp" %>
</head>
 
<body>
    <%@ include file="all-component/navbar.jsp" %>
    <h1 hidden="email" name="email">${Userobj.email}</h1>
    
    <%
        user us = (user) session.getAttribute("Userobj");
        String email = us.getEmail();
        bookDAOimpl dao = new bookDAOimpl(DBconnect.getconnection());
        List<borrowdtls> list = dao.getborrowbook(email);
    %>
   
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Name</th>
                <th scope="col">Book Name</th>
                <th scope="col">Author</th>
                <th scope="col">Price</th>
                <th scope="col">Borrow Date</th>
                <th scope="col">Return Date</th>
                <th scope="col">Status</th>
                 
            </tr>
        </thead>
        <tbody>
            <% for(borrowdtls b : list) { %>
            <tr>
                <td style="color: black;"><%= b.getId() %></td>
                <td style="color: black;"><%= b.getName() %></td>
                <td style="color: black;"><%= b.getBook_name() %></td>
                <td style="color: black;"><%= b.getAuthor() %></td>
                <td style="color: black;"><%= b.getPrice() %></td>
                <td style="color: black;"><%= b.getBodate() %></td>
                <td style="color: black;"><%= b.getRedate() %></td>
                <td>
                    <a href="#"
                        data-toggle="modal"
                        data-target="#returnModal<%= b.getId() %>"
                        class="btn btn-sm btn btn-danger">return</a>
                </td>
                
            </tr>
            <!-- Return Modal -->
            <div class="modal fade" id="returnModal<%= b.getId() %>" tabindex="-1" role="dialog" aria-labelledby="returnModalLabel<%= b.getId() %>" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" style="color:black;" id="returnModalLabel<%= b.getId() %>">Return Book</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p style="color:black;">Are you sure you want to return this book?</p>
                            <form action="returnbook" method="GET">
                                <input type="hidden" name="id" value="<%= b.getId() %>">
                                <input style="color:black;" type="date" name="returnDate" id="returnDate" required>
                                <button type="submit" class="btn btn-primary">Return</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Return Modal -->
            <% } %>
        </tbody>
    </table>

    <footer>
        <%@ include file="all-component/footer.jsp" %>
    </footer>
</body>
</html>