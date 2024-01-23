package com.example.do_an_bong_den.services;

import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

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
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT * FROM products"))
                .mapToBean(Product.class).collect(Collectors.toList());
    }

    public Product getById(int productid) {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT * FROM products WHERE id = :id")
                .bind("id", productid).mapToBean(Product.class).stream().findFirst()).get();
    }

    public Product getByNameBrand(String brand) {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT nameBrand FROM products"))
                .bind("nameBrand", brand).mapToBean(Product.class).stream().findFirst().get();
    }

    public static void main(String[] args) {
//        List<Product> all = ProductServices.getInstance().getAll();
        ProductServices dao = new ProductServices();

        System.out.println(dao.getById(2));
    }
}