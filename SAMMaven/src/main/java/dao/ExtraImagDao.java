/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Entities.ImageEntity;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alaa
 */
public class ExtraImagDao {

    //************************* start allaa *********************
    public ImageEntity selectExtraImagesByExtraId(int id) {
        ImageEntity extraImage = new ImageEntity();

        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from EXTRAS_IMAGES where EXTRAS_IMAGES.EXTRAID  in (select ID from  EXTRAS where EXTRAS.ID = ?)");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                extraImage.setId(rs.getInt(1));
                extraImage.setUrl(rs.getString(2));
//                System.out.println(flowerImage.toString());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ExtraImagDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return extraImage;
    }

    //************************* end allaa ************************
}
