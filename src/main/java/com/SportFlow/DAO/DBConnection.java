package com.SportFlow.DAO;

import java.net.URL;
import java.sql.*;


public class DBConnection {

        private static Connection connection;

public static  final String URL = "jdbc:mysql://localhost:3306/sportflow";
public static  final String USER = "root";
public static  final String PASSWORD = "root";

    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver"); // Charger le driver MySQL
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
                System.out.println("Connexion réussie à la base de données !");
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                System.out.println("Erreur de connexion à la base de données !");
            }
        }
        return connection;
    }
}
