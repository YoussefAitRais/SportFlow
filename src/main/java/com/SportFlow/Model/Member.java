package com.SportFlow.Model;

public class Member extends User {



    private String sport;
    private String date;


    public Member() {}
    public Member( int id , String nomcomplet, String email , String password , String role, String sport, String date) {

        super(id, nomcomplet, email, password, role);
        this.sport = sport;
        this.date = date;
    }



}
