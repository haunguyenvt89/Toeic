/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

/**
 *
 * @author devil
 */
public class DatabaseManager {

    private Connection connection;

    public void open() throws SQLException {
        
        Driver d = new org.gjt.mm.mysql.Driver();
        DriverManager.registerDriver(d);
        String url = "jdbc:mysql://localhost:3306/Toeic";
        Properties info = new Properties();
        info.setProperty("characterEncoding", "utf-8");
        info.setProperty("user", "root");
        info.setProperty("password", "");
        this.connection = DriverManager.getConnection(url, info);
        
    }

    public void close() throws SQLException {
        
        this.connection.close();        
    }

    public ResultSet executeQuery(String sql) throws SQLException {
        ResultSet rs = null;
        
        Statement sm = this.connection.createStatement();
        rs = sm.executeQuery(sql);
        
        return rs;
    }

    public int executeUpdate(String sql) throws SQLException {
        int n = -1;
        
        Statement sm = this.connection.createStatement();
        n = sm.executeUpdate(sql);
        
        return n;
    }
}

