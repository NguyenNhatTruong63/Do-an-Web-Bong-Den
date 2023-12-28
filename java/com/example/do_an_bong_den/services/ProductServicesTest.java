package com.example.do_an_bong_den.services;

import com.example.do_an_bong_den.beans.Product;

import java.util.List;

public class ProductServicesTest {
  public static void main(String[] args) {
    List<Product> all = ProductServices.getInstance().getAll();
    System.out.println(all);
    ProductServices.getInstance().getById(1);
    System.out.println();
  }

}
