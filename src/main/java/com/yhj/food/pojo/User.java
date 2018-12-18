package com.yhj.food.pojo;

import java.io.Serializable;

public class User implements Serializable{

    private Integer userID;
    private String userName;
    private String email;
    private String userPwd;

    public Integer getUserID() {
        return userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public User(Integer userID, String userName, String email, String userPwd) {
        this.userID = userID;
        this.userName = userName;
        this.email = email;
        this.userPwd = userPwd;
    }

    public User() {
    }
}
