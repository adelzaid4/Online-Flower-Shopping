/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Entities.Extra;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sheko
 */
public class OrderExtraDetail {

    public void insertOrderDetail(ArrayList<Extra> extras, int orderid) {
        Connection connection = new ConnectionManager().getConnection();
        try {
            for (Extra extra : extras) {
                PreparedStatement ps = connection.prepareStatement("insert into order_extraDetail(order_id,extra_id,quantity) values(?,?,?)");
                ps.setInt(1, orderid);
                ps.setInt(2, extra.getId());
                ps.setInt(3, extra.getQuantity());
                ps.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderExtraDetail.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(OrderExtraDetail.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
