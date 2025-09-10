/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package admin_servlet;

import DAO.bookDAOimpl;
import DB.DBconnect;
import entity.bookdtls;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author ESHOP
 */
@WebServlet("/editbooks")
public class editbooks extends HttpServlet{
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
           try{
               int id=Integer.parseInt(req.getParameter("id"));
                String bookname = req.getParameter("bname");
               String author = req.getParameter("author");
            String price = req.getParameter("price");
            String status = req.getParameter("status");
             bookdtls b=new bookdtls();
             b.setBookid(id);
             b.setBookname(bookname);
             b.setAuthor(author);
             b.setPrice(price);
             b.setStatus(status);
             
             bookDAOimpl dao=new bookDAOimpl(DBconnect.getconnection());
             boolean f=dao.updateeditbook(b);
             HttpSession session=req.getSession();
             if(f==true){
                 session.setAttribute("Successmsg", "book updated succesfully");
                 resp.sendRedirect("admin/allbooks.jsp");
             }else{
                 session.setAttribute("failedmsg", "failed to update");
                 resp.sendRedirect("admin/allbooks.jsp");
             }
           }
    catch(Exception e){
}
}
}