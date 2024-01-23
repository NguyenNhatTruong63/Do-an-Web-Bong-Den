package com.example.do_an_bong_den.db;

import com.example.do_an_bong_den.beans.Brand;
import com.example.do_an_bong_den.beans.Product;
import org.jdbi.v3.core.Jdbi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JDBIConnector {
  private static  Jdbi jdbi;
  Connection conn=null;
  PreparedStatement ps =null;
  ResultSet rs= null;

  public JDBIConnector() {
  }
//  public static Jdbi get(){
//    if(jdbi == null) ;
//    return jdbi;
//  }


  public static Jdbi get() {
    if(jdbi == null);
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
                rs.getInt(1),
                rs.getInt(2),
                rs.getInt(3),
                rs.getString(4),
                rs.getString(5),
                rs.getInt(6),
                rs.getInt(7),
                rs.getInt(8),
                rs.getInt(9)
//            rs.getString(10)
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
  public Product getById(int proid) {
    String query = "SELECT * FROM products WHERE id =?";
    try {
      conn = new DBText().getConnection();
      ps = conn.prepareStatement(query);
      ps.setInt(1, proid);
      rs = ps.executeQuery();
      while (rs.next()) {
        Product p = new Product(
                rs.getInt(1),
                rs.getInt(2),
                rs.getInt(3),
                rs.getString(4),
                rs.getString(5),
                rs.getDouble(6),
                rs.getDouble(7),
                rs.getInt(8),
                rs.getInt(9)
        );
        return p;
      }
    } catch (SQLException e) {
      throw new RuntimeException(e);
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
    return null;
  }


  public List<Brand> getBrand(){
    List<Brand> list = new ArrayList<>();
    String query = "SELECT * FROM brand";
    try {
      conn = new producdb().getConnection();
      ps = conn.prepareStatement(query);
      rs = ps.executeQuery();
      while (rs.next()){
        list.add(new Brand(
                rs.getInt(1),
                rs.getString(2)
        ));
      }
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
    return list;
  }

  public static void main(String[] args) {
    JDBIConnector dao = new JDBIConnector();
    System.out.println(dao.getById(2));
  }




//  public static void main(String[] args) {
//    try {
//      JDBIConnector dao = new JDBIConnector();
////      List<Product> list = dao.getAllProduct();
//      List<Brand> list = dao.getBrand();
//      if (!list.isEmpty()) {
//        for (Brand brand : list) {
//          System.out.println(brand);
//        }
//      } else {
//        System.out.println("Danh sách sản phẩm trống.");
//      }
//    } catch (Exception e) {
//      throw new RuntimeException(e);
//    }
//  }

}