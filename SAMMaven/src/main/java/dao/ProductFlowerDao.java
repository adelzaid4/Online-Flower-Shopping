/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Entities.ImageEntity;
import dto.ProductFlower;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Adel Zaid
 */
public class ProductFlowerDao {
    //************************* Start Adel ************************

    public boolean insertProductWithFlowers(ProductFlower productFlower) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("INSERT INTO BOQUET_FLOWERS (P_ID, F_ID) VALUES ( ?, ?)");
            ps.setInt(1, productFlower.getProductID());

            ps.setInt(2, productFlower.getFlowerID());
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

    public ArrayList<ProductFlower> selectProductFlowersByProductId(int id) {
        ArrayList<ProductFlower> productFlowersList = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from BOQUET_FLOWERS where P_ID  = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductFlower image = new ProductFlower();
                image.setProductID(rs.getInt(1));
                image.setFlowerID(rs.getInt(2));
                productFlowersList.add(image);
                System.out.println(image.toString());
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

        return productFlowersList;
    }

    public boolean updateProductFlowers(ProductFlower productFlower) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("update BOQUET_FLOWERS set P_ID=?, F_ID=?  where P_ID = ?");
            ps.setInt(1, productFlower.getProductID());
            ps.setInt(2, productFlower.getFlowerID());
            ps.setInt(3, productFlower.getProductID());
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

    public boolean deleteProductFlowers(int productID) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("delete from BOQUET_FLOWERS where P_ID = ?");

            ps.setInt(1, productID);
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
