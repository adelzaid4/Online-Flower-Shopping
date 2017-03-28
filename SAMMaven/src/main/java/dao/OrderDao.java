package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import Entities.Order;
import java.util.logging.Level;
import java.util.logging.Logger;
import oracle.jdbc.OracleDriver;

/**
 *
 * @author Moamenovic
 */
public class OrderDao {

    Order oneOrder;
    ArrayList<Order> OrderList;

    public ArrayList<Order> selectOrdersByClientID(int id) {
        OrderList = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from orders where CLIENT_ID = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order order = new Order();
                order.setID(rs.getInt(1));
                order.setClientId(rs.getInt(2));
                order.setStamp(rs.getTimestamp(3));
                order.setPrice(rs.getInt(4));
                OrderList.add(order);
                System.out.println(order.toString());
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(OrderDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return OrderList;
    }

    public int insertOrder(Order order) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("INSERT INTO ORDERS (CLIENT_ID, DATEORDERED, PRICE) VALUES (?,?,?)");
            ps.setInt(1, order.getClientId());
            ps.setTimestamp(2, order.getStamp());
            ps.setFloat(3, order.getPrice());
            ResultSet rs = ps.executeQuery();
            flag = true;
        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(OrderDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return getOrderId(order);
    }

    public int getOrderId(Order order) {
        Connection con = new ConnectionManager().getConnection();
        int orderId = -1;
        try {
            PreparedStatement ps = con.prepareStatement("select id from ORDERS where client_id=? and dateordered=? ");
            ps.setInt(1, order.getClientId());
            ps.setTimestamp(2, order.getStamp());
//            ps.setFloat(3, order.getPrice());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                orderId = rs.getInt("id");
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(OrderDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return orderId;

    }

}
