package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Entities.Extra;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator;

import oracle.jdbc.OracleDriver;

/**
 *
 * @author Moamenovic
 */
public class ExtraDao {

    Extra oneExtra;
    Connection con;
    ArrayList<Extra> extratList;
    ExtraImagDao iDao = new ExtraImagDao();

    public boolean insertExtra(Extra extra) {
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("INSERT INTO EXTRAS (NAME, PRICE, QUANTITY) VALUES (?,?,?)");
            ps.setString(1, extra.getName());
            ps.setFloat(2, extra.getPrice());
            ps.setInt(3, extra.getQuantity());
            int count = ps.executeUpdate();
            if (count != 0) {
                return true;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ExtraDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }

    public boolean updateExtra(Extra extra) {
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("UPDATE EXTRAS SET NAME = ? , price = ? , QUANTITY = ?  WHERE  Id = ?");
            ps.setString(1, extra.getName());
            ps.setFloat(2, extra.getPrice());
            ps.setInt(3, extra.getQuantity());
            ps.setInt(4, extra.getId());
            int count = ps.executeUpdate();
            if (count != 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ExtraDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ExtraDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return false;
    }

    public ArrayList<Extra> selectAllExtras() {
        extratList = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try  {
            PreparedStatement ps = con.prepareStatement("select * from EXTRAS");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Extra extra = new Extra();
                extra.setId(rs.getInt(1));
                extra.setName(rs.getString(2));
                extra.setPrice(rs.getFloat(3));
                extra.setQuantity(rs.getInt(4));
                extra.setImage(iDao.selectExtraImagesByExtraId(extra.getId()));
                extratList.add(extra);
                System.out.println(extra.toString());
            }
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ExtraDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return extratList;
    }

    public Extra selectOneExtra(int f) {
        Extra extra = new Extra();
        try (Connection con = new ConnectionManager().getConnection()) {
            PreparedStatement ps = con.prepareStatement("select * from EXTRAS where Id = ?");
            ps.setInt(1, f);
            ResultSet rs = ps.executeQuery();
            rs.next();
            extra.setId(rs.getInt(1));
            extra.setName(rs.getString(2));
            extra.setPrice(rs.getFloat(3));
            extra.setQuantity(rs.getInt(4));
            extra.setImage(iDao.selectExtraImagesByExtraId(extra.getId()));
            System.out.println(extra.toString());
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();

        }

        return extra;
    }

    ////* moamen*/////////////
    public String selectExtraName(int id) {

        Connection con = new ConnectionManager().getConnection();
        String name = new String();
        try {
            PreparedStatement ps = con.prepareStatement("select name from extras where extras.ID = ?");
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
                Logger.getLogger(ProductDoa.class
                        .getName()).log(Level.SEVERE, null, ex);
            }
        }
        return name;
    }

    ArrayList<Extra> ExtrasById;

    public ArrayList<Extra> selectExtrasByClientID(int id) {
        ExtrasById = new ArrayList<>();
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from order_extradetail where ORDER_ID  = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Extra extra = new Extra();
                extra.setOrderId(rs.getInt(1));
                extra.setId(rs.getInt(2));

                extra.setQuantity(rs.getInt(3));
                ExtrasById.add(extra);
                System.out.println(extra.toString());
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return ExtrasById;
    }
    //////*moamenEnd*///////
}
