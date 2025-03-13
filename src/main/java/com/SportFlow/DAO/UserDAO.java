package com.SportFlow.DAO;

import com.SportFlow.Model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    private Connection connection;

    public UserDAO () {
        connection = DBConnection.getConnection();
    }

    public void addUser(User user) throws SQLException {
        String query = "INSERT INTO utilisateur (nomcomplet,email,password,role) VALUES ( ?, ?, ?, ?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, user.getNomcomplet());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, String.valueOf(user.getRole()));
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    public User getUser (String email,String password) throws SQLException {
        String query = "SELECT * FROM utilisateur WHERE email = ? AND password = ?";
        ResultSet rs = null;
        try
                (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, email);
            stmt.setString(2, password);
            rs = stmt.executeQuery();

            if (rs.next()) {
                return new User(
                        rs.getInt("id_users"),
                        rs.getString("nomcomplet"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("role")
                );
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }

            return null;
    }



}
