package com.zeroraj.www.dto;

/**
 *
 * @author SRRK <rajeshs@cdac.in>
 */
public class FormUser {

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getPincode() {
        return pincode;
    }

    public void setPincode(int pincode) {
        this.pincode = pincode;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    private String username;
    private String password;
    private int pincode;
    private String email;
    
}
