package Entities;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Moamenovic
 */
public class Order {

    private int ID;
    private int clientId;
    private float price;  // can be calculated without saving in DB
    private Timestamp stamp;
    private List<OrderDetails> orderDetails;
    private List<Extra> extras;

    public List<Extra> getExtras() {
        return extras;
    }

    public void setExtras(List<Extra> extras) {
        this.extras = extras;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Timestamp getStamp() {
        return stamp;
    }

    public void setStamp(Timestamp stamp) {
        this.stamp = stamp;
    }

    public List<OrderDetails> getOrderDetails() {
        if (orderDetails == null) {
            orderDetails = new ArrayList<>();

        }
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetails> orderDetails) {
        this.orderDetails = orderDetails;
    }

    @Override
    public String toString() {
        return "Order{" + "ID=" + ID + ", clientId=" + clientId + ", totalPrice=" + price + ", stamp=" + stamp + ", orderDetails=" + orderDetails + '}';
    }

}
