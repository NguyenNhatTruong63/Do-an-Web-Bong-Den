package com.example.do_an_bong_den.services;

import com.example.do_an_bong_den.beans.Product;
import database.JDBIConnector;

import java.sql.SQLException;
import java.util.List;


public class ProductByCategoryServices {
  private static ProductByCategoryServices instance;

  public ProductByCategoryServices() {
  }

  public static ProductByCategoryServices getInstance() {
    if (instance == null) {
      instance = new ProductByCategoryServices();
    }
    return instance;
  }

//  public List<Product> getAll() {
//    return JDBIConnector.get().withHandle(handle -> {
//      return handle.createQuery("select * from products")
//        .mapToBean(Product.class).list();
//    });
//  }


  public List<Product> getListProductByCategory(String id) {
    return JDBIConnector.get().withHandle(handle -> {
      return handle.createQuery("select * from products where idCategory = ?").bind(0, id)
              .mapToBean(Product.class).list();
    });
  }


  public static void main(String[] args) throws SQLException {
    List<Product> all = ProductByCategoryServices.getInstance().getListProductByCategory("3");

    ProductByCategoryServices product = new ProductByCategoryServices();

    System.out.println(all);

  }
}
