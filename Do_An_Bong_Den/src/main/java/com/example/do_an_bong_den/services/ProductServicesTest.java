package com.example.do_an_bong_den.services;

import com.example.do_an_bong_den.beans.Product;

import java.util.List;

public class ProductServicesTest {
  public static void main(String[] args) {
    List<Product> all = ProductServices.getInstance().getAll();
    System.out.println(all);
<<<<<<< HEAD
    ProductServices.getInstance().getById(1);
    System.out.println();
=======
    Product byId = ProductServices.getInstance().getById(1);
    System.out.println(byId);
>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae
  }

}
