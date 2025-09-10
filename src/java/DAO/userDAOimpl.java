package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

import entity.user;

public class userDAOimpl implements userDAO {
    private Connection conn;

    public userDAOimpl(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean userregister(user us) {
        boolean success = false;
        String query = "INSERT INTO registered(Name, Email, Phone_no, Password) VALUES (?, ?, ?, ?)";
        try (
            PreparedStatement pst = conn.prepareStatement(query)) {
            pst.setString(1, us.getName());
            pst.setString(2, us.getEmail());
            pst.setString(3, us.getContact());
            pst.setString(4, us.getPassword());

            int i = pst.executeUpdate();
            if (i == 1) {
                success = true;
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
        return success;
    }

    @Override
    public user login(String email, String password) {
        user us = null;
        try {
            String query = "SELECT * FROM registered WHERE Email=? AND Password=?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                us = new user();
                us.setId(rs.getString(1));
                us.setName(rs.getString(2));
                us.setEmail(rs.getString(3));
                us.setContact(rs.getString(4));
                us.setPassword(rs.getString(5));
            }
        } catch (SQLException e) {
            e.printStackTrace(); }
        return us;
    }
}
