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
public class ProductImageDao {

    //************************* start allaa *********************
    public ArrayList<ImageEntity> selectProductImagesByProductId(int id) {
        ArrayList<ImageEntity> productImagesList = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from PRODUCT_IMAGES where PRODUCT_IMAGES.PRODUCTSID  in (select ID from  PRODUCT where PRODUCT.ID = ?)");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ImageEntity image = new ImageEntity();
                image.setId(rs.getInt(1));
                image.setUrl(rs.getString(2));
                productImagesList.add(image);
              //  System.out.println(image.toString());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductImageDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return productImagesList;
    }

    //************************* end allaa ************************
    //************************* Start Adel ************************
    public boolean insertProductImage(ImageEntity imageEntity) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("INSERT INTO PRODUCT_IMAGES (URL, PRODUCTSID) VALUES ( ?, ?)");
            ps.setString(1, imageEntity.getUrl());

            ps.setInt(2, imageEntity.getProductID());
            ps.executeUpdate();

            flag = true;
        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDoa.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    public boolean updateProductImages(ImageEntity imageEntity) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("update PRODUCT_IMAGES set PRODUCTSID=?, URL=?  where PRODUCTSID = ?");
            ps.setInt(1, imageEntity.getProductID());
            ps.setString(2, imageEntity.getUrl());
            ps.setInt(3, imageEntity.getProductID());
            ps.executeUpdate();

            flag = true;
        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDoa.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    //************************* end Adel ************************
}
