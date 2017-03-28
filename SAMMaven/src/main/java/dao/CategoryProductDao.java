/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.CategoryProduct;
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
public class CategoryProductDao {
     public boolean insertCategoryProdcut(CategoryProduct categoryProduct) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("INSERT INTO CAT_PRO (CATEGORY_ID, PRODUCT_ID) VALUES ( ?, ?)");
            ps.setInt(1, categoryProduct.getCategoryID());

            ps.setInt(2, categoryProduct.getProductID());
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
     
     public ArrayList<CategoryProduct> selectCategoryProductsByCategoryId(int id) {
        ArrayList<CategoryProduct> categoryProductsList = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from CAT_PRO where CATEGORY_ID  = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                
                CategoryProduct categoryProduct=new CategoryProduct();
                categoryProduct.setCategoryID(rs.getInt("CATEGORY_ID"));
                categoryProduct.setProductID(rs.getInt("PRODUCT_ID"));
                categoryProductsList.add(categoryProduct);
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

        return categoryProductsList;
    }
     
     public boolean deleteCategoryProducts(int categoryID) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("delete from CATE_PRO where CATEGORY_ID = ?");

            ps.setInt(1, categoryID);
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
}
