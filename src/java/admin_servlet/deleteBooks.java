package admin_servlet;

import DAO.bookDAOimpl;
import DB.DBconnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/deletebooks")
public class deleteBooks extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            bookDAOimpl dao = new bookDAOimpl(DBconnect.getconnection());
            boolean deleted = dao.deletebook(id);
            HttpSession session = req.getSession();
            if (deleted) {
                session.setAttribute("Successmsg", "Book deleted successfully");
            } else {
                session.setAttribute("failedmsg", "Failed to delete book");
            }
            resp.sendRedirect(req.getContextPath() + "/admin/allbooks.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            // Handle any exceptions appropriately
        }
    }
}