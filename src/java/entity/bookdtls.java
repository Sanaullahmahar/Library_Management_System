/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author sanaullah
 */
public class bookdtls {
    private int bookid;
    private String bookname;
    private String author;
    private String price;
    private String bookcategory;
    private String status;
    private String photo;
    private String email;
    public bookdtls(){
    super();
    }
    public bookdtls(String bookname, String author, String price, String bookcategory, String status, String photo, String email ){
    this.bookname = bookname;
    this.author = author;
    this.price = price;
    this.bookcategory=bookcategory;
    this.status = status;
    this.photo = photo;
    this.email = email;
    }

    public int getBookid(){
        return bookid;
    }

    /**
     * @param bookid the bookid to set
     */
    public void setBookid(int bookid) {
        this.bookid = bookid;
    }

    /**
     * @return the bookname
     */
    public String getBookname() {
        return bookname;
    }

    /**
     * @param bookname the bookname to set
     */
    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    /**
     * @return the author
     */
    public String getAuthor() {
        return author;
    }

    /**
     * @param author the author to set
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * @return the price
     */
    public String getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(String price) {
        this.price = price;
    }

    /**
     * @return the bookcategory
     */
    public String getBookcategory() {
        return bookcategory;
    }

    /**
     * @param bookcategory the bookcategory to set
     */
    public void setBookcategory(String bookcategory) {
        this.bookcategory = bookcategory;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the photo
     */
    public String getPhoto() {
        return photo;
    }

    /**
     * @param photo the photo to set
     */
    public void setPhoto(String photo) {
        this.photo = photo;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }
}