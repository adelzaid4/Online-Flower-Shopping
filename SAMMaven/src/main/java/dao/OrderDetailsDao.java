package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Entities.OrderDetails;
import dto.CartProductDetails;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import oracle.jdbc.OracleDriver;

/**
 *
 * @author Moamenovic
 */
public class OrderDetailsDao {

    ArrayList<OrderDetails> OrderList;

    public ArrayList<OrderDetails> selectOrdersByClientID(int id) {
        OrderList = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from ORDER_DETAILS where ORDER_ID  = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                OrderDetails OrderDetails = new OrderDetails();

                OrderDetails.setOrderId(rs.getInt(1));
                OrderDetails.setProductId(rs.getInt(2));
                OrderDetails.setQuantity(rs.getInt(3));
                OrderList.add(OrderDetails);
                System.out.println(OrderDetails.toString());
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(OrderDetailsDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return OrderList;
    }

    public boolean insertOrderDetails(OrderDetails od) { /// hint orderDetails object contains only order_id, product_id not an object of any of them 
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("INSERT INTO ORDER_DETAILS (order_ID, product_id , quantity) VALUES (?,?,?)");
            ps.setInt(1, od.getOrderId());
            ps.setInt(2, od.getProductId());
            ps.setInt(3, od.getQuantity());
            ResultSet rs = ps.executeQuery();
            flag = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(OrderDetailsDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }
    public boolean insertOrderDetails(List<CartProductDetails> cartProductDetailses, int orderid) { /// hint orderDetails object contains only order_id, product_id not an object of any of them 
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            for(CartProductDetails cpd:cartProductDetailses){
            PreparedStatement ps = con.prepareStatement("INSERT INTO ORDER_DETAILS (order_ID, product_id , quantity) VALUES (?,?,?)");
            ps.setInt(1, orderid);
            ps.setInt(2, cpd.getProductId());
            ps.setInt(3, cpd.getQuntity());
//            ResultSet rs = ps.executeQuery();
            ps.executeUpdate();
            }
            flag = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(OrderDetailsDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }
}
