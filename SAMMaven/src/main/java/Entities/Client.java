/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.util.ArrayList;

/**
 *
 * @author Adel Zaid
 */
public class Client {

    private int id;

    private String fname;

    private String lname;

    private String mail;

    private String password;

    private String birthday;

    private String job;

    private String phone;

    private int cridetlimit;

    private String address;

    private ArrayList<Interests> interests;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getCridetlimit() {
        return cridetlimit;
    }

    public void setCridetlimit(int cridetlimit) {
        this.cridetlimit = cridetlimit;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public ArrayList<Interests> getInterests() {
        if (interests == null) {
            interests = new ArrayList<>();
        }
        return interests;
    }

    public void setInterests(ArrayList<Interests> interests) {
        this.interests = interests;
    }

    @Override
    public String toString() {
        return "Client{" + "id=" + id + ", fname=" + fname + ", lname=" + lname + ", mail=" + mail + ", password=" + password + ", birthday=" + birthday + ", job=" + job + ", phone=" + phone + ", cridetlimit=" + cridetlimit + ", address=" + address + ", interests=" + interests + '}';
    }

}
