/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Entities.Interests;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sheko
 */
public class InterestsDao {


//**************** allaaa **********************************
    public ArrayList<Interests> selectByClientId(int id) {
        ArrayList<Interests> interestsList = new ArrayList<>();
        Interests clientInterests;
        Connection con = new ConnectionManager().getConnection();
        try  {
            PreparedStatement ps = con.prepareStatement("select * from INTERESTS where INTERESTS.ID in (select INTEREST_ID from CLIENT_INTERESS where CLIENT_ID=?)");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                clientInterests = new Interests();
                clientInterests.setId(rs.getInt("ID"));
                clientInterests.setName(rs.getString("NAME"));
                interestsList.add(clientInterests);
            }
           
        } catch (SQLException ex) {
            Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
       return interestsList;
    }
    
    
     public ArrayList<Interests> selectAll() {
        ArrayList<Interests> interestsList = new ArrayList<>();
        Interests interests;
        Connection con = new ConnectionManager().getConnection();

        try {

            PreparedStatement ps = con.prepareStatement("select * from INTERESTS");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                interests = new Interests();
                interests.setId(rs.getInt("ID"));
                interests.setName(rs.getString("NAME"));
                interestsList.add(interests);
            }

        } catch (SQLException ex) {
            Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return interestsList;
    }
     
     public boolean insert(List<Interests> interestsList , int id ) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            for (Interests interest : interestsList) {
                PreparedStatement ps = con.prepareStatement("insert into CLIENT_INTERESS(client_id,INTEREST_ID)values(?,?)");
                ps.setInt(2, interest.getId());
                ps.setInt(1, id);
                int num = ps.executeUpdate();
                if (num != 0) {
                    flag = true;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }
     
      public boolean deleteClientInterests(int id ) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag=false;
        try  {
            PreparedStatement ps = con.prepareStatement("delete from CLIENT_INTERESS where client_id=? ");
            ps.setInt(1, id);
            int num = ps.executeUpdate();
            if (num != 0) {
               flag=true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }
    
     public Interests selectInterestByName(String name) {
        Interests interest =  new Interests();
        Connection con = new ConnectionManager().getConnection();
        try  {
            PreparedStatement ps = con.prepareStatement("select * from INTERESTS where NAME =? ");
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                interest = new Interests();
                interest.setId(rs.getInt("ID"));
                interest.setName(rs.getString("NAME"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
       return interest;
    }
     
//********************** end allaa ******************
    
//    public boolean deleteByName(Interests interests) {
//        Connection con = new ConnectionManager().getConnection();
//        boolean flag=false;
//        try  {
//            PreparedStatement ps = con.prepareStatement("delete from CLIENT_INTERESTS where client_id=? and flower_id=?");
//            ps.setInt(1, interests.getId());
//            ps.setInt(2, interests.getFlowerId());
//            int num = ps.executeUpdate();
//            if (num != 0) {
//                flag= true;
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        finally {
//            try {
//                con.close();
//            } catch (SQLException ex) {
//                Logger.getLogger(InterestsDao.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }
//        return flag;
//    }
//
   
}
