package com.example.do_an_bong_den.carts;

import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.services.ProductServices;

import java.util.HashMap;
import java.util.Map;

public class Carts {
  Map<Integer, CartsProduct> data = new HashMap<>();

  public Carts() {
  }
<<<<<<< HEAD
  public boolean add(int productid, int quantity) {
=======
  public boolean add(int productid) {
    return add(productid, 1);
  }
  public boolean add(int productid, int quantity) {
    if (data.containsKey(productid)){
      return data.get(productid).incri(productid,quantity);
    }
>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae
    Product product = ProductServices.getInstance().getById(productid);
    if(product == null) return false;
    if(!data.containsKey(productid)){
      data.put(productid, new CartsProduct(product, quantity));
    }

<<<<<<< HEAD
    if (data.containsKey(productid)){
      data.get(productid);

    }
    return true;
  }
=======
//    if (data.containsKey(productid)){
//      data.get(productid);
//
//    }


    return true;
  }
  public void remove(int productid) {
    data.remove(productid);
  }
  public boolean update(int productid, int quantity) {
    if (!data.containsKey(productid)){
      return false;
    }
    CartsProduct cartsProduct = data.get(productid);
    if(quantity <=0 || quantity > cartsProduct.getProduct().getQuantity()) return false;
    data.get(productid).setQuantity(quantity);
    return true;
  }
  public int getTotal(){
    return data.size();
  }
>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae
}
