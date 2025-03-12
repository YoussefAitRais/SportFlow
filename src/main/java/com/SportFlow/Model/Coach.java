package com.SportFlow.Model;

public class Coach extends User {


    private String specialite;

    public Coach () {}
    public Coach (int id , String nomcomplet, String email , String password , String role,String specialite) {

        super(id, nomcomplet, email, password, role);
        this.specialite = specialite;
    }

}
