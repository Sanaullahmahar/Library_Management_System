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

@WebServlet("/returnbook")
public class returnbook extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            bookDAOimpl dao = new bookDAOimpl(DBconnect.getconnection());
            boolean returnbook = dao.returnbook(id);
            HttpSession session = req.getSession();
            if (returnbook) {
                session.setAttribute("Successmsg", "Book returned successfully");
      
            } else {
                session.setAttribute("failedmsg", "Failed to return  book");
               
            }
            resp.sendRedirect(req.getContextPath() + "/mybooks.jsp");
        } catch (Exception e) {
            
            // Handle any exceptions appropriately
        }
    }
}