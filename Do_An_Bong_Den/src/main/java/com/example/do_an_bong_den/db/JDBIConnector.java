package com.example.do_an_bong_den.db;

import com.example.do_an_bong_den.beans.Product;
//import com.example.do_an_bong_den.services.ProductSer;
import com.mysql.cj.jdbc.MysqlDataSource;
import database.DBProperties;
import org.jdbi.v3.core.Jdbi;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class JDBIConnector {
  private static  Jdbi jdbi;
  Connection conn=null;
  PreparedStatement ps =null;
  ResultSet rs= null;

  public JDBIConnector() {
  }
  public static Jdbi get(){
    if(jdbi == null) ;
    return jdbi;
  }

  public List<Product> getAllProduct() {
    List<Product> list = new ArrayList<>();
    String query = "SELECT * FROM products";
    try {
      conn = new producdb().getConnection();
      ps = conn.prepareStatement(query);
      rs = ps.executeQuery();
      while (rs.next()) {
        list.add(new Product(
                rs.getString(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5),
                rs.getInt(6),
                rs.getInt(7),
                rs.getInt(8),
                rs.getString(9),
                rs.getString(10)
        ));
      }
    } catch (SQLException e) {
      throw new RuntimeException(e);
    } catch (Exception e) {
      throw new RuntimeException(e);
    } finally {
      // Đóng tài nguyên ở đây
    }
    return list;
  }

  public static void main(String[] args) {
    try {
      JDBIConnector dao = new JDBIConnector();
      List<Product> list = dao.getAllProduct();
      if (!list.isEmpty()) {
        for (Product a : list) {
          System.out.println(a);
        }
      } else {
        System.out.println("Danh sách sản phẩm trống.");
      }
    } catch (Exception e) {
      throw new RuntimeException(e);
    }




//  private static  Jdbi jdbi;
//  static void makeConnect() {
//    MysqlDataSource dataSource = new MysqlDataSource();
//    dataSource.setURL("jdbc:mysql://" + database.DBProperties.getDbHost() + ":" + database.DBProperties.getDbPort() + "/"
//            + database.DBProperties.getDbName());
//    dataSource.setUser(database.DBProperties.getUsername());
//    dataSource.setPassword(DBProperties.getPassword());
//    try {
//      dataSource.setUseCompression(true);
//      dataSource.setAutoReconnect(true);
//
//    } catch (SQLException throwables) {
//      throwables.printStackTrace();
//      throw new RuntimeException(throwables);
//    }
//    jdbi = Jdbi.create(dataSource);
//
//  }
//  public JDBIConnector() {
//
//  }

//    Connection conn=null;
//    PreparedStatement ps =null;
//    ResultSet rs= null;
//
//  public JDBIConnector() {
//  }
//  public static Jdbi get(){
//    if (jdbi == null) ;
//    return jdbi;
//  }

//    public List<Product> getAllProduct() {
//      List<Product> list = new ArrayList<>();
//      String query = "SELECT * FROM products";
//      list.add(new Product());
//      return list;
//    }

//  public List<Product> getAllProduct() {
//      List<Product> list = new ArrayList<>();
//      String query = "SELECT * FROM products";
//      try {
//        conn = new producdb().getConnection();
//        ps = conn.prepareStatement(query);
//        rs = ps.executeQuery();
//        while (rs.next()) {
//          list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
//            rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)
//          ));
//        }
//      } catch (SQLException e) {
//        throw new RuntimeException(e);
//      } catch (Exception e) {
//        throw new RuntimeException(e);
//      } finally {
////         Đóng tài nguyên ở đây
//      }
//      return list;
//    }
//
//  public static void main(String[] args) {
//    try {
//      JDBIConnector dao = new JDBIConnector();
//      List<Product> list = dao.getAllProduct();
//      if (!list.isEmpty()) {
//        for (Product a : list) {
//          System.out.println(a);
//        }
//      } else {
//        System.out.println("Danh sách sản phẩm trống.");
//      }
//    } catch (Exception e) {
//      throw new RuntimeException(e);
//    }
  }


}
