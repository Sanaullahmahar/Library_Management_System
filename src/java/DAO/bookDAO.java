/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package DAO;

import entity.*;
import java.util.List;

/**
 *
 * @author sanaullah
 */
public interface bookDAO {
 public boolean addbook(bookdtls b);
 public List<bookdtls> getallbooks();
 public boolean updateeditbook(bookdtls book);
 public boolean deletebook(int id);
  public boolean returnbook(int id);
 public List<bookdtls> getbook(); 
 public boolean borrowbook(borrowdtls b );
  public List<borrowdtls> getborrowbook( String email);
   public List<borrowdtls> getallborrowed();
   public List<bookdtls> getbookbysearch(String ch);
 
}