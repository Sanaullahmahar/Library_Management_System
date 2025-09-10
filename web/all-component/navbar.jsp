<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid" style="height: 10px; background-color: #00796b;"></div>

<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" style="color: black;" id="exampleModalLongTitle">Log Out</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h4 style="color: black;">Do you want to logout?</h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <a href="logout" class="btn btn-primary">Logout</a> 
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
<c:choose>
      <c:when test="${empty sessionScope['Userobj']}">
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="allbooks.jsp"><i class="fa-solid fa-book"></i> All Books</a>
      </li>
    <c:if test="${empty Userobj}">
    <li class="nav-item">
        <a class="nav-link" href="login.jsp"><i class="fa-solid fa-book-open"></i> MyBooks</a>
    </li>
</c:if>
<c:if test="${not empty Userobj}">
    <li class="nav-item">
        <a class="nav-link" href="mybooks.jsp"><i class="fa-solid fa-book-open"></i><i class="fa-solid fa-book-open"></i> MyBooks</a>
    </li>
</c:if>
    
    </ul>
      
          <form action="search.jsp" method="post" class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="ch" required="required">
    <button  class="btn btn-success my-2 my-sm-0" style="background-color: #00796b;"><i class="fa-solid fa-magnifying-glass"></i> Search</button>
          </form>
  
         
        <div class="col-md-3">
         
          <a href="login.jsp" class="btn btn-success" style="background-color: #00796b;"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
          <a href="register.jsp" class="btn btn-success" style="background-color: #00796b;"><i class="fa-solid fa-users"></i> Register</a>
        </div>
      </c:when>
      <c:otherwise>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house"></i> Home<span class="sr-only">(current)</span></a>
            </li>
            
       <li class="nav-item">
        <a class="nav-link" href="allbooks.jsp"><i class="fa-solid fa-book"></i> All Books</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="mybooks.jsp"><i class="fa-solid fa-book-open"></i> MyBooks</a>
      </li>
        </ul>
          <form action="search.jsp" method="post" class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="ch" required="required">
    <button  class="btn btn-success my-2 my-sm-0" style="background-color: #00796b;"><i class="fa-solid fa-magnifying-glass"></i> Search</button>
          </form>
              <div class="col-md-3">
          <a href="#" class="btn btn-success" style="background-color: #00796b;"><i class="fa-solid fa-user"></i> ${Userobj.name}</a>
            <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-success" style="background-color: #00796b;"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
      </div>  </c:otherwise>
    </c:choose>

</nav>
<style>
  .bg-custom {
    background-color: #00796b !important;
  }

  .navbar .nav-item:hover .nav-link {
    background-color: #005a4b;
    color: white; 
    border-radius: 15px;
  }
</style>