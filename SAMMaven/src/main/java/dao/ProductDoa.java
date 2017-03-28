package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.Instant;
import Entities.Product;
import java.util.logging.Level;
import java.util.logging.Logger;
import oracle.jdbc.OracleDriver;
//import oracle.sql.DATE;

/**
 *
 * @author Moamenovic
 */
public class ProductDoa {

    Product oneProduct;
    ArrayList<Product> productList;
    ProductImageDao iDao = new ProductImageDao();
    FlowerDao fDao = new FlowerDao();

    public boolean insertProduct(Product product) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("INSERT INTO PRODUCT (NAME, PRICE, QUANTITY, DESCRIPTION, RATING) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, product.getName());
            ps.setFloat(2, product.getPrice());
            ps.setInt(3, product.getQuantity());
            ps.setString(4, product.getDescription());
            ps.setInt(5, product.getRating());
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

    public ArrayList<Product> selectAllProducts() {
        productList = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from PRODUCT");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setPrice(rs.getFloat(3));
                product.setQuantity(rs.getInt(4));
                product.setDescription(rs.getString(5));
                product.setRating(rs.getInt(6));
                product.setFlowers(fDao.selectFlowerByProductId(product.getId()));
                product.setImages(iDao.selectProductImagesByProductId(product.getId()));
                productList.add(product);
                //  System.out.println(product.toString());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDoa.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return productList;
    }

    public ArrayList<Product> selectProductsByCategory(int id) {
        productList = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from PRODUCT where PRODUCT.id  in (select product_id from  cat_pro where cat_pro.category_id = ?)");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setPrice(rs.getFloat(3));
                product.setQuantity(rs.getInt(4));
                product.setDescription(rs.getString(5));
                product.setRating(rs.getInt(6));
                product.setImages(iDao.selectProductImagesByProductId(product.getId()));
                product.setFlowers(fDao.selectFlowerByProductId(product.getId()));
                productList.add(product);
                //   System.out.println(product.toString());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDoa.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return productList;
    }

    public Product selectOneProduct(int id) {
        Connection con = new ConnectionManager().getConnection();

        Product product = new Product();
        try {
            PreparedStatement ps = con.prepareStatement("select * from PRODUCT where ID = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setPrice(rs.getFloat(3));
                product.setQuantity(rs.getInt(4));
                product.setDescription(rs.getString(5));
                product.setRating(rs.getInt(6));
                product.setImages(iDao.selectProductImagesByProductId(product.getId()));
                product.setFlowers(fDao.selectFlowerByProductId(product.getId()));
                //   System.out.println("dao product " + product.getName());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDoa.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return product;
    }

    public Product selectProductByName(String name) {

        Connection con = new ConnectionManager().getConnection();
        Product product = new Product();
        try {

            PreparedStatement ps = con.prepareStatement("select * from PRODUCT where NAME = ?");
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setPrice(rs.getFloat(3));
                product.setQuantity(rs.getInt(4));
                product.setDescription(rs.getString(5));
                product.setRating(rs.getInt(6));
                product.setImages(iDao.selectProductImagesByProductId(product.getId()));
                product.setFlowers(fDao.selectFlowerByProductId(product.getId()));
                //   System.out.println("dao product " + product.getName());
            }
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDoa.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return product;
    }

    public int selectProductId(String name) {
        int num = -1;
        Connection con = new ConnectionManager().getConnection();
        try {

            PreparedStatement ps = con.prepareStatement("select * from PRODUCT where NAME = ?");
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                num = rs.getInt("ID");
            }
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDoa.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return num;
    }

    public boolean updateProduct(Product product) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("update PRODUCT set NAME=?, PRICE=?, QUANTITY=?, DESCRIPTION=?, RATING=? where id = ?");
            ps.setString(1, product.getName());
            ps.setFloat(2, product.getPrice());
            ps.setInt(3, product.getQuantity());
            ps.setString(4, product.getDescription());
            ps.setInt(5, product.getRating());
            ps.setInt(6, product.getId());
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

    public boolean deleteProduct(int id) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("DELETE FROM PRODUCT WHERE  id =?");
            ps.setInt(1, id);

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

    public ArrayList<Product> selectProductsByFlower(int id) {
        productList = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from PRODUCT where PRODUCT.ID in (select P_ID from BOQUET_FLOWERS where BOQUET_FLOWERS.F_ID = ?)");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setPrice(rs.getFloat(3));
                product.setQuantity(rs.getInt(4));
                product.setDescription(rs.getString(5));
                product.setRating(rs.getInt(6));
                product.setImages(iDao.selectProductImagesByProductId(product.getId()));
                product.setFlowers(fDao.selectFlowerByProductId(product.getId()));
                productList.add(product);
                //    System.out.println(product.toString());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDoa.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return productList;
    }

    public String selectProductName(int id) {

        Connection con = new ConnectionManager().getConnection();
        String name = new String();
        try {
            PreparedStatement ps = con.prepareStatement("select name from PRODUCT where PRODUCT.ID = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                name = rs.getString(1);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDoa.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return name;
    }

    public ArrayList<Product> selectHighRatedProducts() {

        productList = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from PRODUCT where RATING > 7");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt(1));
                product.setName(rs.getString(2));
                product.setPrice(rs.getFloat(3));
                product.setQuantity(rs.getInt(4));
                product.setDescription(rs.getString(5));
                product.setRating(rs.getInt(6));
                product.setFlowers(fDao.selectFlowerByProductId(product.getId()));
                product.setImages(iDao.selectProductImagesByProductId(product.getId()));
                productList.add(product);
                //  System.out.println(product.toString());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDoa.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return productList;
    }

}
