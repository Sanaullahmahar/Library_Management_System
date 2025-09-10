<%-- 
    Document   : footer
    Created on : Apr 1, 2024, 2:01:33 AM
    Author     : Sanaullah
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   
    <style>   
    *{
        margin: 0;
        padding: 0;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 16px;
        color: white;
    }
    footer{
        background: #00796b;
        padding-top: 8px;
    }
    .container{
        width: 1140px;
        margin: auto;
        display: flex;
        justify-content: center;
    }
    .footer-content{
        width: 33.3%;
         text-align: center;
         padding: 0 10px;
    }
    h3{
        font-size: 22px;
        margin-bottom: 10px;
       
    }
    .footer-content p{
        width:190px;
         font-size: 14px;
        margin: 5px auto;
        padding: 5px;
    }
    .footer-content ul{
        text-align: center;
    }
    .list{
        padding: 0;
           text-align: left;
    }
    .list li{
      list-style-type: none;
    padding: 5px;
        
    }
    .list li::before{
        content: '';
        position: absolute;
        transform: translate(-50%,-50%);
        left: 50%;
        top: 100%;
        width: 0;
        height: 2px;
        background: #00796b;
        transition-duration: .5s;
    }
    .list li:hover::before{
        width: 50px;
    }
    .social-icons{
        text-align: center;
        padding: 0;
    }
    .social-icons li{
        display: inline-block;
        text-align: center;
        padding: 5px;
    }
    .social-icons i{
        color: white;
        font-size: 20px;
    }
    a{color:white;
        text-decoration: none;
    }
    a:hover{
        
        color:black;
    }
    .social-icons i:hover{
        color: black;
    }
</style>
 </head>
    <body>
       <footer>
        <div class="container">
            <div class="footer-content">
                <h3>Contact Us</h3>
                <p><a href="mailto:maharsanaullah40@gmail.com">Send Email</a></p>
                <p>Phone: +92-3022682282</p>
                <p>Address: Sukkur Sindh</p>
            </div>
            <div class="footer-content">
                <h3>Quick Links</h3>
                 <ul class="list">
                 
                    <li><a href="">About</a></li>
                    <li><a href="">Services</a></li>
                    <li><a href="">Contact</a></li>
                 </ul>
            </div>
            <div class="footer-content">
                <h3>Follow Us</h3>
                <ul class="social-icons">
                 <li><a href=""><i class="fab fa-facebook"></i></a></li>
                 <li><a href=""><i class="fab fa-twitter"></i></a></li>
                 <li><a href=""><i class="fab fa-instagram"></i></a></li>
                 <li><a href=""><i class="fab fa-linkedin"></i></a></li>
                </ul>
                </div>
        </div>
      
    </footer>
    </body>
</html>