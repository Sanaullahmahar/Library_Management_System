/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package DAO;

/**
 *
 * @author ESHOP
 */
import entity.user;
public interface userDAO {
    public boolean userregister(user us);
    public user login( String email,String password);
  }