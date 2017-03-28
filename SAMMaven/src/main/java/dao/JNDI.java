/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Sheko
 */
public class JNDI {

    DataSource dataSource;

    private JNDI() {
        try {
            Context context = (Context) new InitialContext().lookup("java:comp/env");
            dataSource = (DataSource) context.lookup("jdbc/TestDB");

        } catch (NamingException ex) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static JNDI getInstance() {
        return JNDIHolder.INSTANCE;
    }

    public Connection getDataSource() {
        try {
            return dataSource.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(JNDI.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    private static class JNDIHolder {

        private static final JNDI INSTANCE = new JNDI();
    }
}
