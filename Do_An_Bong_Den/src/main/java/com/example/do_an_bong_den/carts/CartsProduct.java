package com.example.do_an_bong_den.carts;

import com.example.do_an_bong_den.beans.Product;

public class CartsProduct {
  private Product product;
  private int quantity;

  public CartsProduct() {
  }

  public CartsProduct(Product product, int quantity) {
    this.product = product;
    this.quantity = quantity;
  }

  public Product getProduct() {
    return product;
  }

  public void setProduct(Product product) {
    this.product = product;
  }

  public int getQuantity() {
    return quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }
<<<<<<< HEAD
=======
  public boolean incri(int productid, int quantity){
    this.quantity += quantity;
    if(this.product.getQuantity() < this.quantity){
      this.quantity -=quantity;
      return false;
    }
    return true;
  }
  public boolean dencri(int productid, int quantity){
    this.quantity -= quantity;
    if(this.product.getQuantity() < this.quantity){
      this.quantity +=quantity;
      return false;
    }
    return true;
  }
  
>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae

  @Override
  public String toString() {
    return "CartsProduct{" +
      "product=" + product +
      ", quantity=" + quantity +
      '}';
  }
}
