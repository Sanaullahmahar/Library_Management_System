/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package user_servelet;

/**
 *
 * @author ESHOP
 */

import DAO.userDAOimpl;
import DB.DBconnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import jakarta.servlet.annotation.WebServlet;
import entity.user;
import java.io.PrintWriter;
@WebServlet("/register")
public class registerServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
        try{
            String name=req.getParameter("name");
            String email=req.getParameter("email");
            String contact=req.getParameter("phone");
            String pasword=req.getParameter("password");
           
            System.out.println(name);
            user us=new user();
            us.setName(name);
            us.setEmail(email);
            us.setContact(contact);
            us.setPassword(pasword);
            
            userDAOimpl dao=new userDAOimpl(DBconnect.getconnection());
            boolean f=dao.userregister(us);
            if(f){
                 resp.sendRedirect("login.jsp");
                System.out.println("true");
            }else{
                 resp.sendRedirect("register.jsp");
                PrintWriter out=resp.getWriter();
                out.println("false");
            }
        }catch(Exception e){
            
        }
    }
    
    }