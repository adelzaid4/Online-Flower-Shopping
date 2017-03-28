/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Entities.CartDetails;
import dto.CartProductDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sheko
 */
public class CartDetailDao {

    public List<CartDetails> selectAll() {
        LinkedList<CartDetails> cartDetailses = new LinkedList<>();
        Connection con = new ConnectionManager().getConnection();
        try  {
            PreparedStatement ps = con.prepareStatement("select * from cart_details");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CartDetails cartDetails = new CartDetails();
                cartDetails.setCartId(rs.getInt("id"));
                cartDetails.setProductId(rs.getInt("PRODUCT_ID"));
                cartDetails.setQuantity(rs.getInt("QUANTITY"));
                cartDetailses.add(cartDetails);
            }
         
        } catch (SQLException ex) {
            Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
           return cartDetailses;
    }

    public List<CartProductDetails> selectCartProductsDetailById(CartDetails cartDetails) {
        LinkedList<CartProductDetails> details = new LinkedList<>();
        Connection con = new ConnectionManager().getConnection();
        try  {
            PreparedStatement ps = con.prepareStatement("select * from cart_details where id=?");
            ps.setInt(1, cartDetails.getCartId());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CartProductDetails cartProductDetails = new CartProductDetails();
                cartProductDetails.setProductId(rs.getInt("PRODUCT_ID"));
                cartProductDetails.setProductId(rs.getInt("QUANTITY"));
                details.add(cartProductDetails);
            }
            

        } catch (SQLException ex) {
            Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
        }
         finally
        {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return details;
    }

    public boolean insertCartDetail(CartDetails cartDetails,int clientid) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag=false;
        try  {
            PreparedStatement ps = con.prepareStatement("insert into cart_details(PRODUCT_ID,QUANTITY,client_id)"
                    + "values(?,?,?)");
            ps.setInt(1, cartDetails.getProductId());
            ps.setInt(2, cartDetails.getQuantity());
            ps.setInt(3, clientid);
            int num = ps.executeUpdate();
            if (num != 0) {
                flag= true;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
         finally
        {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    public boolean deleteByProductId(CartDetails cartDetails,int clientid) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag=false;
        try  {

            PreparedStatement ps = con.prepareStatement("delete from cart_details where client_id=? and product_id=?");
            ps.setInt(1, clientid);
            ps.setInt(2, cartDetails.getProductId());
            int num = ps.executeUpdate();
            if (num != 0) {
                flag= true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDao.class.getName()).log(Level.SEVERE, null, ex);
        }
           finally
        {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }
    public boolean deleteByClientId(int clientid) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag=false;
        try  {

            PreparedStatement ps = con.prepareStatement("delete from cart_details where client_id=?");
            ps.setInt(1, clientid);
            int num = ps.executeUpdate();
            if (num != 0) {
                flag= true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDao.class.getName()).log(Level.SEVERE, null, ex);
        }
           finally
        {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    public boolean updateCartDetails(CartDetails cartDetails,int clientid) {
      Connection con = new ConnectionManager().getConnection();
      boolean flag=false;
        try  {
            PreparedStatement ps=con.prepareStatement("update cart_details set quantity=? where client_id=? and PRODUCT_ID=?");
            ps.setInt(1, cartDetails.getQuantity());
            ps.setInt(2, clientid);
            ps.setInt(3, cartDetails.getProductId());
            int num=ps.executeUpdate();
            if(num!=0)
            {
               flag=true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
        }
                   finally
        {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }
    public List<CartProductDetails> selectCartProductsDetailById(int clientid) {
        LinkedList<CartProductDetails> details = new LinkedList<>();
        Connection con = new ConnectionManager().getConnection();
        try  {
            PreparedStatement ps = con.prepareStatement("select * from cart_details where client_id=?");
            ps.setInt(1,clientid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                CartProductDetails cartProductDetails = new CartProductDetails();
                cartProductDetails.setProductId(rs.getInt("PRODUCT_ID"));
                cartProductDetails.setQuntity(rs.getInt("QUANTITY"));
                details.add(cartProductDetails);
            }
            

        } catch (SQLException ex) {
            Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
        }
         finally
        {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(CartDetailDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return details;
    }

}
