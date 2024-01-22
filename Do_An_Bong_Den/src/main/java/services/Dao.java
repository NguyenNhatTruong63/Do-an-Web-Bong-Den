package services;


import beans.*;
import database.DBText;
import org.jdbi.v3.core.Jdbi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dao {
  private static Jdbi jdbi;
  Connection conn = null;
  PreparedStatement ps = null;
  ResultSet rs = null;

  public static Jdbi get() {
    if (jdbi == null) ;
    return jdbi;
  }

  public Account login(String user, String pass) {
    String query = "select * from user where userName = ? and password = ?";
    try {
      conn = new DBText().getConnection();
      ps = conn.prepareStatement(query);
      ps.setString(1, user);
      ps.setString(2, pass);
      rs = ps.executeQuery();
      while (rs.next()) {
        return new Account(rs.getString(1),
          rs.getString(2),
          rs.getString(3),
          rs.getString(4),
          rs.getString(5),
          rs.getString(6)
        );
      }


    } catch (Exception e) {

    }
    return null;
  }

  public Account checkAccountExit(String user) {
    String query = "select * from user where userName = ?";
    try {
      conn = new DBText().getConnection();
      ps = conn.prepareStatement(query);
      ps.setString(1, user);
      rs = ps.executeQuery();
      while (rs.next()) {
        return new Account(rs.getString(1),
          rs.getString(2),
          rs.getString(3),
          rs.getString(4),
          rs.getString(5),
          rs.getString(6)
        );
      }


    } catch (Exception e) {

    }
    return null;
  }

  public void signup(String user, String pass, String email, String phone, String address) {
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
    } catch (Exception e) {

    }
  }

  //B1: Viet method lay thong tin chi tiet san pham --> test
  // B2: hien thị san pham o trang productdetail.jsp
  public Product getProduct(String id) {
    String query = "select * from products where id = ?";
    try {
      conn = new DBText().getConnection();
      ps = conn.prepareStatement(query);
      ps.setString(1, id);
      rs = ps.executeQuery();
      while (rs.next()) {
        return new Product(rs.getInt(1),
          rs.getInt(2),
          rs.getInt(3),
          rs.getString(4),
          rs.getString(5),
          rs.getDouble(6),
          rs.getDouble(7),
          rs.getInt(8),
          rs.getInt(9),
          rs.getString(10));

      }


    } catch (Exception e) {

    }
    return null;
  }

  // phuong thuc lay ten thuong hieu cua san pham
  public BrandProduct getBrandProduct(String id) {
    String query = "SELECT products.name, brands.name from products, brands WHERE products.idBrand = brands.id and products.id = ?";
    try {
      conn = new DBText().getConnection();
      ps = conn.prepareStatement(query);
      ps.setString(1, id);
      rs = ps.executeQuery();
      while (rs.next()) {
        return new BrandProduct(rs.getString(1),
          rs.getString(2));
      }


    } catch (Exception e) {

    }
    return null;
  }

  public ProductDetail getProductDetail(String id) {
    String query = "select * from product_detail where idProduct = ?";
    try {
      conn = new DBText().getConnection();
      ps = conn.prepareStatement(query);
      ps.setString(1, id);
      rs = ps.executeQuery();
      while (rs.next()) {
        return new ProductDetail(rs.getInt(1),
          rs.getInt(2),
          rs.getString(3),
          rs.getString(4),
          rs.getString(5),
          rs.getString(6),
          rs.getString(7)
        );
      }
    } catch (Exception e) {
    }
    return null;
  }

  public static void main(String[] args) {
    Dao dao = new Dao();
    Product product = new Product();
    //  System.out.println(dao.getProductDetail("4"));
    //    System.out.println(dao.getBrandProduct("25"));
    System.out.println(dao.getProductDetail("2"));
  }
}
