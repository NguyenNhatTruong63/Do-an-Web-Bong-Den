package services;

import beans.Product;
import database.JDBIConnector;

import java.sql.SQLException;
import java.util.List;


public class ProductServices {
  private static ProductServices instance;

  public ProductServices() {
  }

  public static ProductServices getInstance() {
    if (instance == null) {
      instance = new ProductServices();
    }
    return instance;
  }

  public List<Product> getAll() {
    return JDBIConnector.get().withHandle(handle -> {
      return handle.createQuery("select * from products")
        .mapToBean(Product.class).list();
    });
  }


  public List<Product> getListProductByCategory(String id) {
    return JDBIConnector.get().withHandle(handle -> {
      return handle.createQuery("select * from products where idCategory = ?").bind(0, id)
        .mapToBean(Product.class).list();
    });
  }


  public static void main(String[] args) throws SQLException {
    List<Product> all = ProductServices.getInstance().getListProductByCategory("3");
    System.out.println(all);

  }
}
