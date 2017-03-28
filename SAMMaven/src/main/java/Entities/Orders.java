/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Adel Zaid
 */
public class Orders implements Serializable {

    private int id;

    private Date dateordered;

    private Double price;


    public Orders() {
    }

    public Orders(int id) {
        this.id = id;
    }

    public Orders(int id, Date dateordered) {
        this.id = id;
        this.dateordered = dateordered;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDateordered() {
        return dateordered;
    }

    public void setDateordered(Date dateordered) {
        this.dateordered = dateordered;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

}
