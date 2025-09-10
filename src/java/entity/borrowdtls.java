package entity;


public class borrowdtls {
    private String book_name;
    private String author;
    private String price;
    private String Id;
    private String Name;
    private String Email;
    private String Contact;
    private String Address;
    private String Bodate;
    private String Redate;

    public borrowdtls( String book_name,String author,String price ,String id, String name, String email, String contact, String address, String borrowDate, String returnDate) {
        this.book_name=book_name;
        this.author=author;
        this.price=price;
        this.Id = id;
        this.Name = name;
        this.Email = email;
        this.Contact = contact;
        this.Address = address;
        this.Bodate = borrowDate;
        this.Redate = returnDate;
    }

    public borrowdtls() {
    }

   
    public String getId() {
        return Id;
    }

    public void setId(String id) {
        this.Id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        this.Name = name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        this.Email = email;
    }

    public String getContact() {
        return Contact;
    }

    public void setContact(String contact) {
        this.Contact = contact;
    }

    public String getAdress() {
        return Address;
    }

    public void setAdress(String address) {
        this.Address = address;
    }

     public String getBodate() {
        return Bodate;
    }

    public void setBodate(String bodate) {
        this.Bodate = bodate;
    }

    public String getRedate() {
        return Redate;
    }

    public void setRedate(String redate) {
        this.Redate = redate;
    }

    /**
     * @return the book_name
     */
    public String getBook_name() {
        return book_name;
    }

    /**
     * @param book_name the book_name to set
     */
    public void setBook_name(String book_name) {
        this.book_name = book_name;
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
}