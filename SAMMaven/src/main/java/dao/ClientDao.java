/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Entities.Client;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sheko
 */
public class ClientDao {

//private Connection getConnection()
//{
//// Connection con=DriverManager.getConnection("jdbc:ora")
    
    InterestsDao iDao = new InterestsDao();
    
    public boolean deleteClientById(Client client) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("delete from client where id=?");
            ps.setInt(1, client.getId());
            int num = ps.executeUpdate();
            if (num != 0) {
                flag = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    public boolean deleteClientById(int id) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("delete from client where id=?");
            ps.setInt(1, id);
            int num = ps.executeUpdate();
            if (num != 0) {
                flag = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    public boolean deleteClientByMail(Client client) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("delete from client where mail=?");
            ps.setString(1, client.getMail());
            int num = ps.executeUpdate();
            if (num != 0) {
                flag = true;

            }
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    public boolean updateClient(Client client) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("update client set fname=?,lname=?,mail=?,password=?"
                    + ",job=?,address=?,cridetlimit=?,birthday=?,phone=? where id=?");
            ps.setString(1, client.getFname());
            ps.setString(2, client.getLname());
            ps.setString(3, client.getMail());
            ps.setString(4, client.getPassword());
            ps.setString(5, client.getJob());
            ps.setString(6, client.getAddress());
            ps.setInt(7, client.getCridetlimit());
            Date date = new SimpleDateFormat("yyyy-MM-dd").parse(client.getBirthday());
            ps.setDate(8, new java.sql.Date(date.getTime()));
            ps.setString(9, client.getPhone());
            ps.setInt(10, client.getId());
            iDao.deleteClientInterests(client.getId());
            iDao.insert(client.getInterests(), client.getId());
            int num = ps.executeUpdate();
            if (num != 0) {
                flag = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    public boolean insertClient(Client client) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {

            PreparedStatement ps = con.prepareStatement("insert into client(fname,lname,mail,password,job,address,"
                    + "cridetlimit,birthday,phone) values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1, client.getFname());
            ps.setString(2, client.getLname());
            ps.setString(3, client.getMail());
            ps.setString(4, client.getPassword());
            ps.setString(5, client.getJob());
            ps.setString(6, client.getAddress());
            ps.setInt(7, client.getCridetlimit());
            Date date = new SimpleDateFormat("yyyy-MM-dd").parse(client.getBirthday());
            ps.setDate(8, new java.sql.Date(date.getTime()));
            ps.setString(9, client.getPhone());
            int num = ps.executeUpdate();
            if (num != 0) {
                flag = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    public List<Client> selectAll() {

        List<Client> clients = new LinkedList<Client>();
        Client client;
        Connection con = new ConnectionManager().getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("select * from client");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                client = new Client();
                client.setFname(rs.getString("fname"));
                client.setLname(rs.getString("lname"));
                client.setPassword(rs.getString("password"));
                client.setMail(rs.getString("mail"));
                client.setJob(rs.getString("job"));
                client.setAddress(rs.getString("address"));
                client.setPhone(rs.getString("phone"));
                client.setCridetlimit(rs.getInt("cridetlimit"));
                client.setBirthday(rs.getDate("birthday").toString());
                client.setId(rs.getInt("id"));
                clients.add(client);
            }

        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return clients;
    }

    public boolean validclient(Client client) {
        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("select * from client where mail=? and password=?");
            ps.setString(1, client.getMail());
            ps.setString(2, client.getPassword());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                flag = true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    public boolean existMail(Client client) {

        Connection con = new ConnectionManager().getConnection();
        boolean flag = false;
        try {
            PreparedStatement ps = con.prepareStatement("select * from client where mail=? ");
            ps.setString(1, client.getMail());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                flag = true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }

    public Client selectById(Client client) {
        Connection conn = new ConnectionManager().getConnection();
        Client clientById = null;
        try {
            PreparedStatement ps = conn.prepareStatement("select * from client where id=?");
            ps.setInt(1, client.getId());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                clientById = new Client();
                clientById.setFname(rs.getString("fname"));
                clientById.setLname(rs.getString("lname"));
                clientById.setPassword(rs.getString("password"));
                clientById.setMail(rs.getString("mail"));
                clientById.setJob(rs.getString("job"));
                clientById.setAddress(rs.getString("address"));
                clientById.setPhone(rs.getString("phone"));
                clientById.setCridetlimit(rs.getInt("cridetlimit"));
                clientById.setBirthday(rs.getDate("birthday").toString());
                clientById.setId(rs.getInt("id"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);

            }

        }
        return clientById;
    }
    
    
    // ********************allaa *****************
    
    public Client selectByEmail(String mail) {
        Connection conn = new ConnectionManager().getConnection();
        Client clientByMail = null;
        try {
            PreparedStatement ps = conn.prepareStatement("select * from client where mail=?");
            ps.setString(1, mail);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                clientByMail = new Client();
                clientByMail.setFname(rs.getString("fname"));
                clientByMail.setLname(rs.getString("lname"));
                clientByMail.setPassword(rs.getString("password"));
                clientByMail.setMail(rs.getString("mail"));
                clientByMail.setJob(rs.getString("job"));
                clientByMail.setAddress(rs.getString("address"));
                clientByMail.setPhone(rs.getString("phone"));
                clientByMail.setCridetlimit(rs.getInt("cridetlimit"));
                clientByMail.setBirthday(rs.getDate("birthday").toString());
                clientByMail.setId(rs.getInt("id"));
                clientByMail.setInterests(iDao.selectByClientId(clientByMail.getId()));

            }
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);

            }

        }
        return clientByMail;
    }
    // ******************** end allaa **************

    public Client selectById(int id) {
        Connection conn = new ConnectionManager().getConnection();
        Client clientById = new Client();
        try {
            PreparedStatement ps = conn.prepareStatement("select * from client where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                clientById.setFname(rs.getString("fname"));
                clientById.setLname(rs.getString("lname"));
                clientById.setPassword(rs.getString("password"));
                clientById.setMail(rs.getString("mail"));
                clientById.setJob(rs.getString("job"));
                clientById.setAddress(rs.getString("address"));
                clientById.setPhone(rs.getString("phone"));
                clientById.setCridetlimit(rs.getInt("cridetlimit"));
                clientById.setBirthday(rs.getDate("birthday").toString());
                clientById.setId(rs.getInt("id"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);

            }

        }
        return clientById;
    }
    public boolean updateCredit(int clientId,int Credit)
    {
        Client client=selectById(clientId);
        if(client.getCridetlimit()<Credit)
            return false;
        Connection connection=new ConnectionManager().getConnection();
        try {
           
            PreparedStatement ps=connection.prepareStatement("update client set CRIDETLIMIT=? where id=?");
            int creditafter=(client.getCridetlimit()-Credit);
            ps.setInt(1, creditafter);
            ps.setInt(2, clientId);
            ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(ClientDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return true;
    }
}
