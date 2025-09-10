/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user_servelet;

import DAO.userDAOimpl;
import DB.DBconnect;
import entity.user;
import jakarta.servlet.RequestDispatcher;
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
@WebServlet("/login")
public class loginServlet extends HttpServlet{
    userDAOimpl dao=new userDAOimpl(DBconnect.getconnection());
       protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
           try{
               userDAOimpl dao=new userDAOimpl(DBconnect.getconnection());
               HttpSession session=req.getSession();
               String email=req.getParameter("email");
               String password=req.getParameter("password");
              if(email.equals("admin@gmail.com") && password.equals("12345")){
                  user us=new user();
                  us.setName("Admin");
                  session.setAttribute("Userobj", us);
                  resp.sendRedirect("admin/home.jsp");
              }else{
                  user us=dao.login(email, password);
                   if(us!=null ){
                      us.setName(us.getName());
                      session.setAttribute("Userobj", us);
                  resp.sendRedirect("home.jsp");
                  }else{
                      session.setAttribute("failed", "user not found");
                      resp.sendRedirect("login.jsp");
                  }
                  
              }
              
               
       }catch(Exception e){
            
        }}
}