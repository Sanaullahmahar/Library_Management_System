/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package admin_servlet;

import DAO.bookDAOimpl;
import DB.DBconnect;
import entity.bookdtls;
import entity.borrowdtls;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.text.SimpleDateFormat;

/**
 *
 * @author ESHOP
 */
@WebServlet("/borrowbook")
public class borrowbook extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            
            String book_name=req.getParameter("book_name");
            String author=req.getParameter("author");
            String price=req.getParameter("price");
            String id = req.getParameter("user_id");
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String contact = req.getParameter("contact");
            String address = req.getParameter("address");
            String borrowDate = req.getParameter("bdate");
            String returnDate = req.getParameter("rdate");
            
           

            borrowdtls b = new borrowdtls(book_name,author,price,id, name, email, contact, address, borrowDate, returnDate);
            bookDAOimpl dao = new bookDAOimpl(DBconnect.getconnection());
            boolean f = dao.borrowbook(b);
            HttpSession session = req.getSession();
            if (f) {
                
                session.setAttribute("succmsg", "Book borrowed Successfully");
                resp.sendRedirect("allbooks.jsp");
            } else {
                session.setAttribute("failedmsg", "Something went wrong!");
                resp.sendRedirect("borrow.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}