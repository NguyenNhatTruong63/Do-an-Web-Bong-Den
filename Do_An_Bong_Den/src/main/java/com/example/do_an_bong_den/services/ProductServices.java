package com.example.do_an_bong_den.services;

import com.example.do_an_bong_den.beans.Product;
//import com.example.do_an_bong_den.db.JDBIConnector;
import database.JDBIConnector;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
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

//    public static List<Product> getProductList() {
//        List<Product> list = new ArrayList<>();
//        return list;
//    }

    public List<Product> getAll() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM products")
                    .mapToBean(Product.class)
                    .list();
        });
    }

    public Product getById(int productid) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM products where id = ?")
                    .bind("id", productid).mapToBean(Product.class).findFirst().get();

        });
    }

//    public List<Product> getListProductByCategory(String id) {
//        return JDBIConnector.get().withHandle(handle -> {
//            return handle.createQuery("select * from products where idCategory = ?").bind(0, id)
//                    .mapToBean(Product.class).list();
//        });
//    }

    //  public static void main(String[] args) throws SQLException {
//    List<Product> all = services.ProductServices.getInstance().getListProductByCategory("3");
//    System.out.println(all);
//
//  }
//    public static void main(String[] args) {
//        List<Product> all = ProductServices.getInstance().getListProductByCategory("3");
//        System.out.println(all);
//    }


}
