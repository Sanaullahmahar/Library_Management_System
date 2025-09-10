package DAO;

import entity.bookdtls;
import entity.borrowdtls;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import java.sql.ResultSet;
import entity.user;

public class bookDAOimpl implements bookDAO {
    private Connection conn;
    public bookDAOimpl(Connection conn) {
        super();
        this.conn = conn;
    }

public boolean addbook(bookdtls b) {
    boolean f = false;
    PreparedStatement ps = null;
    try {
        String sql = "insert into book_dbs(book_name, author, price, bookcategory, status, photo, user_email) values(?,?,?,?,?,?,?)";
        ps = conn.prepareStatement(sql);
        ps.setString(1, b.getBookname());
        ps.setString(2, b.getAuthor());
        ps.setString(3, b.getPrice());
        ps.setString(4, b.getBookcategory());
        ps.setString(5, b.getStatus());
        ps.setString(6, b.getPhoto());
        ps.setString(7, b.getEmail());
        int i = ps.executeUpdate();
        if (i == 1) {
            f = true;
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return f;
}

    @Override
    public List<bookdtls> getallbooks() {
        List<bookdtls> list=new ArrayList<bookdtls>();
        bookdtls b=null;
        
        try{
            String query="select * from book_dbs";
            PreparedStatement ps=conn.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                b=new bookdtls();
                b.setBookid(rs.getInt(1));
                b.setBookname(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setPrice(rs.getString(4));
                b.setBookcategory(rs.getString(5));
                b.setStatus(rs.getString(6));
                b.setPhoto(rs.getString(7));
                b.setEmail(rs.getString(8));
                list.add(b);
                
            }
        }
        catch(Exception e){
        }
        return list;
    }
    
    public bookdtls getBookById(int id){
      
    bookdtls b= null;
       try{
       String sql = "select * from book_dbs where book_id=?";
       PreparedStatement ps = conn.prepareStatement(sql);
       ps.setInt(1, id);
       ResultSet rs= ps.executeQuery();
       while(rs.next()){
       b = new bookdtls();
       b.setBookid(rs.getInt(1));
       b.setBookname(rs.getString(2));
       b.setAuthor(rs.getString(3));
       b.setPrice(rs.getString(4));
       b.setBookcategory(rs.getString(5));
       b.setStatus(rs.getString(6));
       b.setPhoto(rs.getString(7));
       b.setEmail(rs.getString(8));
          
       }
       }catch(Exception e){
       e.printStackTrace();
       }
       return b;
      
    }

    @Override
    public boolean updateeditbook(bookdtls book) {
        boolean f=false;
        try{
        String query="update book_dbs set book_name=?,author=?,price=?, status=? where book_id=?";
        PreparedStatement ps=conn.prepareStatement(query);
        ps.setString(1, book.getBookname());
         ps.setString(2, book.getAuthor());
          ps.setString(3, book.getPrice());
           ps.setString(4, book.getStatus());
           ps.setInt(5, book.getBookid());
           int i=ps.executeUpdate();
           if(i>0){
               f=true;
           }
              }
        catch(Exception e){
        }
        return f;
    }

    @Override
    public boolean deletebook(int id) {
        boolean f= false;
        try{
            String query="delete from book_dbs where book_id=?";
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setInt(1, id);
            int i=ps.executeUpdate();
            if(i>0){
            f=true;
            }
        }catch(Exception e){
        }
        return f;
    }
 public boolean returnbook(int id) {
        boolean f= false;
        try{
            String query="delete from borrowed where ID=?";
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setInt(1, id);
            int i=ps.executeUpdate();
            if(i>0){
            f=true;
            }
        }catch(Exception e){
        }
        return f;
    }
 

    @Override
    public List<bookdtls> getbook() {
     List<bookdtls> list = new ArrayList<bookdtls>();
        bookdtls b =null;
        try{
          String sql="select * from book_dbs where status=?";   
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, "Available");
        ResultSet rs = ps.executeQuery();
        int i=0;
        while(rs.next()){
        b=new bookdtls();
         b.setBookid(rs.getInt(1));
       b.setBookname(rs.getString(2));
       b.setAuthor(rs.getString(3));
       b.setPrice(rs.getString(4));
       b.setBookcategory(rs.getString(5));
       b.setStatus(rs.getString(6));
       b.setPhoto(rs.getString(7));
       b.setEmail(rs.getString(8));
       list.add(b);
       i++;
        }
        }catch(Exception e){
        e.printStackTrace();
        }
       
    return list;
    
    }

   

    @Override
    public boolean borrowbook(borrowdtls b ) {
        
         boolean f = false;
    PreparedStatement ps = null;
    try {
        String sql = "INSERT INTO borrowed(book_name, author, price,Name, Email, Contact, Adress, borrow_date, return_date) values(?,?,?,?,?,?,?,?,?)";
        ps = conn.prepareStatement(sql);
        ps.setString(1, b.getBook_name());
        ps.setString(2, b.getAuthor());
        ps.setString(3, b.getPrice());
        ps.setString(4, b.getName());
        ps.setString(5, b.getEmail());
        ps.setString(6, b.getContact());
        ps.setString(7, b.getAdress());
        ps.setString(8, b.getBodate());
        ps.setString(9, b.getRedate());
  
        int i = ps.executeUpdate();
        
        if (i > 0) {
            f = true;
        }
    } catch (Exception e) {
        e.printStackTrace();
        System.out.println(e.getMessage());
    }
    return f;
    }

    @Override
    public List<borrowdtls> getborrowbook( String email) {
        
         List<borrowdtls> list = new ArrayList<borrowdtls>();
        borrowdtls b =null;
        user us=new user();
        String em = us.getEmail();
        try{
          String sql="select * from borrowed where Email=?";   
        PreparedStatement ps = conn.prepareStatement(sql);
        
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();
        int i=0;
        while(rs.next()){
        b=new borrowdtls();
       b.setId(rs.getString(1));
       b.setBook_name(rs.getString(2));
       b.setAuthor(rs.getString(3));
       b.setPrice(rs.getString(4));
        b.setName(rs.getString(5));
        b.setEmail(rs.getString(6));
        b.setContact(rs.getString(7));
        b.setAdress(rs.getString(8));
       b.setBodate(rs.getString(9));
       b.setRedate(rs.getString(10));
      
       list.add(b);
       i++;
        }
        }catch(Exception e){
        e.printStackTrace();
        }
       
    return list;
    
    }

       @Override
    public List<borrowdtls> getallborrowed() {
        List<borrowdtls> list=new ArrayList<borrowdtls>();
        borrowdtls b=null;
        
        try{
            String query="select * from borrowed";
            PreparedStatement ps=conn.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                b=new borrowdtls();
                b.setId(rs.getString(1));
                 b.setBook_name(rs.getString(2));
                 b.setAuthor(rs.getString(3));
                 b.setPrice(rs.getString(4));
                b.setName(rs.getString(5));
                b.setEmail(rs.getString(6));
                b.setContact(rs.getString(7));
                b.setAdress(rs.getString(8));
                b.setBodate(rs.getString(9));
                b.setRedate(rs.getString(10));
                list.add(b);
            }
        }
        catch(Exception e){
        }
        return list;
    }
    public List<bookdtls> getbookbysearch(String ch) {
       List<bookdtls> list = new ArrayList<bookdtls>();
        bookdtls b =null;
        try{
          String sql="select * from book_dbs where book_name like ? or author like ? or bookcategory like ? and status=?";   
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, "%"+ch+"%");
        ps.setString(2, "%"+ch+"%");
        ps.setString(3, "%"+ch+"%");
        ps.setString(4, "Available");
        ResultSet rs = ps.executeQuery();
        int i=0;
        while(rs.next()){
        b=new bookdtls();
         b.setBookid(rs.getInt(1));
       b.setBookname(rs.getString(2));
       b.setAuthor(rs.getString(3));
       b.setPrice(rs.getString(4));
       b.setBookcategory(rs.getString(5));
       b.setStatus(rs.getString(6));
       b.setPhoto(rs.getString(7));
       b.setEmail(rs.getString(8));
       list.add(b);
       i++;
        }
        }catch(Exception e){
        e.printStackTrace();
        }
       
    return list;
    
    }
}