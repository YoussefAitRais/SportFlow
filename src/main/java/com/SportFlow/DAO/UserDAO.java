package com.SportFlow.DAO;

import com.SportFlow.Model.User;
import com.SportFlow.Model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAO {

    private Connection connection;

    public UserDAO () {
        connection = DBConnection.getConnection();
    }

    public static void addUser(User user) throws SQLException {
        String query = "INSERT INTO users (name,email,password,role) VALUES ( ?, ?, ?, ?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, user.getNomcomplet());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, String.valueOf(user.getRole()));
            stmt.executeUpdate();
        }
    }





}
