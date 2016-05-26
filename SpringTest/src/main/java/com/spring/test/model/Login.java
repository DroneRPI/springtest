package com.spring.test.model;
 
public class Login {
     
    private String id;
    private String pwd;
    private String names;
    private String email;
    private int phone;

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getPwd() {
        return pwd;
    }
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }    
    public String getNames() {
        return names;
    }
    public void setNames(String names) {
        this.names = names;
    }    
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }    
    public int getPhone() {
        return phone;
    }
    public void setPhone(int phone) {
        this.phone = phone;
    }    
}