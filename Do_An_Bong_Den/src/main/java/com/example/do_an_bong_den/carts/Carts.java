package com.example.do_an_bong_den.carts;

import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.services.ProductServices;

import java.util.HashMap;
import java.util.Map;

public class Carts {
  Map<Integer, CartsProduct> data = new HashMap<>();

  public Carts() {
  }
  public boolean add(int productid, int quantity) {
    Product product = ProductServices.getInstance().getById(productid);
    if(product == null) return false;
    if(!data.containsKey(productid)){
      data.put(productid, new CartsProduct(product, quantity));
    }

    if (data.containsKey(productid)){
      data.get(productid);

    }
    return true;
  }
}
