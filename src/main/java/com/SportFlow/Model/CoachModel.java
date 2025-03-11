package com.SportFlow.Model;

public class CoachModel extends UserModel {


    private String specialite;

    public CoachModel() {}
    public CoachModel(int id , String nomcomplet, String email , String password , String role,String specialite) {

        super(id, nomcomplet, email, password, role);
        this.specialite = specialite;
    }

}
