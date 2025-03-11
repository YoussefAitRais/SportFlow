package com.SportFlow.Model;

public class MemberModel extends UserModel {



    private String sport;
    private String date;


    public MemberModel() {}
    public MemberModel( int id , String nomcomplet, String email , String password , String role, String sport, String date) {

        super(id, nomcomplet, email, password, role);
        this.sport = sport;
        this.date = date;
    }



}
