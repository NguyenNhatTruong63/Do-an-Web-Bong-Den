package com.example.do_an_bong_den.beans;

import java.io.Serializable;

public class Product implements Serializable {

  private String id;
  private String idCatgoy;
  private String nameBrand;
  private String name;
  private String img;
  private int price;
<<<<<<< HEAD
  private String discount;
  private int quantity;
  private String description;
=======
  private int discount;
  private int quantity;
//  private String description;
>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae
  private String status;

  public Product() {
  }

<<<<<<< HEAD
  public Product(String id, String idCatgoy, String nameBrand, String name, String img, int price, String discount, int quantity, String description, String status) {
=======
  public Product(String id, String idCatgoy, String nameBrand, String name, String img, int price, int discount, int quantity, String status) {
>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae
    this.id = id;
    this.idCatgoy = idCatgoy;
    this.nameBrand = nameBrand;
    this.name = name;
    this.img = img;
    this.price = price;
    this.discount = discount;
    this.quantity = quantity;
<<<<<<< HEAD
    this.description = description;
=======
//    this.description = description;
>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae
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

<<<<<<< HEAD
  public String getDiscount() {
    return discount;
  }

  public void setDiscount(String discount) {
=======
  public int getDiscount() {
    return discount;
  }

  public void setDiscount(int discount) {
>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae
    this.discount = discount;
  }

  public int getQuantity() {
    return quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

<<<<<<< HEAD
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }
=======
//  public String getDescription() {
//    return description;
//  }
//
//  public void setDescription(String description) {
//    this.description = description;
//  }
>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }
<<<<<<< HEAD

=======
  public int salePrice(){
    return price *((100-discount)/100);
//    return price -(price*discount);
  }
>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae

}









