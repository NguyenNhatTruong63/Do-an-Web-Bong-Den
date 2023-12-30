package com.example.do_an_bong_den.services;

import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.db.JDBIConnector;

import java.sql.SQLException;
import java.util.List;

public class ProductBrand {
    private static ProductBrand instance;

    public ProductBrand() {
    }

    public static ProductBrand getInstance() {
        if (instance == null) {
            instance = new ProductBrand();
        }
        return instance;
    }

//  public List<Product> getAll() {
//    return JDBIConnector.get().withHandle(handle -> {
//      return handle.createQuery("select * from products")
//        .mapToBean(Product.class).list();
//    });
//  }


    public List<Product> getListProductByBrand(String id) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from products where id = ?").bind(0, id)
                    .mapToBean(Product.class).list();
        });
    }


    public static void main(String[] args) throws SQLException {
        List<Product> all = ProductBrand.getInstance().getListProductByBrand("Ráº¡ng ÄÃ´ng");

        ProductBrand product = new ProductBrand();

        System.out.println(all);

    }

}
