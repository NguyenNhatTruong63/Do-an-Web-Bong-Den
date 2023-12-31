package com.example.do_an_bong_den.services;

import com.example.do_an_bong_den.beans.Account;
import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.db.DBProperties;
import com.example.do_an_bong_den.db.DBText;
import com.example.do_an_bong_den.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class Dao {
    private static Jdbi jdbi;
    Connection conn=null;
    PreparedStatement ps =null;
    ResultSet rs= null;

    public static Jdbi get() {
        if(jdbi == null);
        return jdbi;
    }
    public Account login(String user, String pass){
        String query = "select * from user where userName = ? and password = ?";
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()){
                return  new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                );
            }


        }catch (Exception e){

        }
        return null;
    }

    public Account checkAccountExit(String user){
        String query = "select * from user where userName = ?";
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()){
                return  new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                );
            }


        }catch (Exception e){

        }
        return null;
    }
    public void signup(String user, String pass, String email, String phone, String address){
        String query = "insert into user values(?,?,?,?,?)";
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.executeUpdate();
        }catch (Exception e){

        }
    }

    public static void main(String[] args) {
        Dao dao = new Dao();
//        List<Product> list =
    }
}
