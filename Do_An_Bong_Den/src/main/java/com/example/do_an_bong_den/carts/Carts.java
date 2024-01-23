package com.example.do_an_bong_den.carts;

import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.db.JDBIConnector;
import com.example.do_an_bong_den.services.ProductServices;

import java.util.HashMap;
import java.util.Map;

public class Carts {
    Map<Integer, CartsProduct> data = new HashMap<>();

//    public Carts() {
//    }
    public Map<Integer, CartsProduct> getData() {
     return data;
}


    public boolean add(int productid) {
        return add(productid, 1);
    }
    public boolean add(int productid, int quantity) {
        if (data.containsKey(productid)){
            return data.get(productid).incri(productid,quantity);
        }
//        Product product = ProductServices.getInstance().getById(productid);
        JDBIConnector dao = new JDBIConnector();
        Product product = dao.getById(productid);
        if(product == null) return false;
        if(!data.containsKey(productid)){
            data.put(productid, new CartsProduct(product, quantity));
        }


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
}