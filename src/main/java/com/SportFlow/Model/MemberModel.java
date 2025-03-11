package com.SportFlow.Model;

public class MemberModel extends UserModel {

    private String nomcomplete;
    private String specialite;


    public MemberModel() {}
    public MemberModel(String nomcomplete, String specialite) {

        this.nomcomplete = nomcomplete;
        this.specialite = specialite;

    }



}
