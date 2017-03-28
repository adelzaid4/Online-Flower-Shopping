package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Entities.Flower;
import java.util.logging.Level;
import java.util.logging.Logger;

import oracle.jdbc.OracleDriver;

/**
 *
 * @author Moamenovic
 */
public class FlowerDao {

    Flower oneFlower;

    ArrayList<Flower> flowertList;
    FlowerImageDao fiDao = new FlowerImageDao();

    public boolean insertProduct(Flower flower) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("INSERT INTO FLOWERS (NAME, COUNTRY) VALUES (?, ?)");
            ps.setString(1, flower.getName());
            ps.setString(2, flower.getCountry());
            ps.executeUpdate();
            flag = true;
        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(FlowerDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    public boolean updateFlower(Flower flower) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("UPDATE FLOWERS SET NAME = ? , COUNTRY = ?  WHERE  id = ?");
            ps.setString(1, flower.getName());
            ps.setString(2, flower.getCountry());
            ps.setInt(3, flower.getId());
            ps.executeUpdate();

            flag = true;
        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(FlowerDao.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return flag;
    }

    public ArrayList<Flower> selectAllFlowers() {
        flowertList = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from FLOWERS");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Flower flower = new Flower();
                flower.setId(rs.getInt(1));
                flower.setName(rs.getString(2));
                flower.setCountry(rs.getString(3));
                flower.setImage(fiDao.selectFlowerImagesByFlowerId(flower.getId()));
                flowertList.add(flower);
            //    System.out.println(flower.toString());
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(FlowerDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return flowertList;
    }

    public Flower selectOneFlower(int f) {
        Flower flower = new Flower();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from FLOWERS where id = ?");
            ps.setInt(1, f);
            ResultSet rs = ps.executeQuery();
            rs.next();
            flower.setId(rs.getInt(1));
            flower.setName(rs.getString(2));
            flower.setCountry(rs.getString(3));
         //   System.out.println(flower.toString());
            
        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(FlowerDao.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return flower;
    }

    public int selectFlowerID(String name) {
        int id=-1;
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select id from FLOWERS where name = ?");
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                id=rs.getInt(1);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(FlowerDao.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        return id;
    }

    public boolean deleteFlower(int id) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("DELETE FROM FLOWERS WHERE  id = ?");
            ps.setInt(1, id);
            ps.executeUpdate();
            flag = true;
        } catch (SQLException ex) {
            ex.printStackTrace();

        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(FlowerDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    public ArrayList<Flower> selectFlowerByProductId(int id) {
        ArrayList<Flower> flowers = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from FLOWERS where FLOWERS.ID  in (select F_ID from  BOQUET_FLOWERS where BOQUET_FLOWERS.P_ID = ?)");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Flower flower = new Flower();
                flower.setId(rs.getInt(1));
                flower.setName(rs.getString(2));
                flower.setCountry(rs.getString(3));
                flower.setImage(fiDao.selectFlowerImagesByFlowerId(flower.getId()));
                flowers.add(flower);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(FlowerDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flowers;
    }

}
