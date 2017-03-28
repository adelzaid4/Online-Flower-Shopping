/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import Entities.Extra;
import java.util.ArrayList;

/**
 *
 * @author Sheko
 */
public class BuyOrder {
    private float price;
    private ArrayList<Extra> ids;
    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public ArrayList<Extra> getIds() {
        return ids;
    }

    public void setIds(ArrayList<Extra> ids) {
        this.ids = ids;
    }

    
    
}
