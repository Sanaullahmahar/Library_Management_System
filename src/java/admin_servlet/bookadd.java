package admin_servlet;

import DAO.bookDAOimpl;
import DB.DBconnect;
import entity.bookdtls;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import jakarta.servlet.http.Part;

@WebServlet("/addbook")
@MultipartConfig
public class bookadd extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String bookname = req.getParameter("bname");
            String author = req.getParameter("author");
            String price = req.getParameter("price");
            String category = req.getParameter("category");
            String status = req.getParameter("status");
            Part part = req.getPart("photo");
            String filename = part.getSubmittedFileName();
            bookdtls b = new bookdtls(bookname, author, price, category, status, filename, "admin@gmail.com");
            bookDAOimpl dao = new bookDAOimpl(DBconnect.getconnection());
            boolean f = dao.addbook(b);
            HttpSession session = req.getSession();
            if (f) {
                session.setAttribute("succmsg", "Book Added Successfully");
                resp.sendRedirect("admin/addbook.jsp");
            } else {
                session.setAttribute("failedmsg", "Something went wrong!");
                resp.sendRedirect("admin/addbook.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}