package com.example.do_an_bong_den.beans;

import java.io.Serializable;

public class Product implements Serializable {

  private String id;
  private String idCatgoy;
  private String nameBrand;
  private String name;
  private String img;
  private int price;
  private int discount;
  private int quantity;
  //  private String description;
  private String status;

  public Product() {
  }

  public Product(String id, String idCatgoy, String nameBrand, String name, String img, int price, int discount, int quantity, String status) {
    this.id = id;
    this.idCatgoy = idCatgoy;
    this.nameBrand = nameBrand;
    this.name = name;
    this.img = img;
    this.price = price;
    this.discount = discount;
    this.quantity = quantity;
//    this.description = description;
    this.status = status;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getIdCatgoy() {
    return idCatgoy;
  }

  public void setIdCatgoy(String idCatgoy) {
    this.idCatgoy = idCatgoy;
  }

  public String getNameBrand() {
    return nameBrand;
  }

  public void setNameBrand(String nameBrand) {
    this.nameBrand = nameBrand;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getImg() {
    return img;
  }

  public void setImg(String img) {
    this.img = img;
  }

  public int getPrice() {
    return price;
  }

  public void setPrice(int price) {
    this.price = price;
  }

  public int getDiscount() {
    return discount;
  }

  public void setDiscount(int discount) {
    this.discount = discount;
  }

  public int getQuantity() {
    return quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

//  public String getDescription() {
//    return description;
//  }
//
//  public void setDescription(String description) {
//    this.description = description;
//  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }
  public int salePrice(){
    return price *((100-discount)/100);
//    return price -(price*discount);
  }

}
