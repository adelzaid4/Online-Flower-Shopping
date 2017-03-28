/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import oracle.jdbc.OracleDriver;
//import oracle.jdbc.
/**
 *
 * @author Sheko
 */
public class ConnectionManager {
private DataSource dataSource; 
    public ConnectionManager() {    
    }
    public Connection getConnection()
    {
      return JNDI.getInstance().getDataSource();
    
    }
}
