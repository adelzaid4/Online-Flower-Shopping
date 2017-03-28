/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Entities.ImageEntity;
import Entities.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alaa
 */
public class FlowerImageDao {

    //************************* start allaa *********************
    public ImageEntity selectFlowerImagesByFlowerId(int id) {
        ImageEntity flowerImage = new ImageEntity();

        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from FLOWER_IMAGES where FLOWER_IMAGES.FLOWERID  in (select ID from  FLOWERS where FLOWERS.ID = ?)");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                flowerImage.setId(rs.getInt(1));
                flowerImage.setUrl(rs.getString(2));
//                System.out.println(flowerImage.toString());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(FlowerImageDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return flowerImage;
    }

    //************************* end allaa ************************
}
