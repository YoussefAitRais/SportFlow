package com.SportFlow.Model;

public class User {

    private int id ;
    private String nomcomplet ;
    private String email ;
    private String password ;
    private String role ;



    public User() {}

    public User(int id, String nomcomplet, String email, String password, String role) {
        this.id = id;
        this.nomcomplet = nomcomplet;
        this.email = email;
        this.password = password;
        this.role = role;

    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public User(String nomcomplet, String email, String password, String role) {
        this.nomcomplet = nomcomplet;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getNomcomplet() {
        return nomcomplet;
    }
    public void setNomcomplet(String nomcomplet) {
        this.nomcomplet = nomcomplet;

    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;

    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;

    }
}
