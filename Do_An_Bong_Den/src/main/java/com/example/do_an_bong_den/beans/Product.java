package com.example.do_an_bong_den.beans;

import java.io.Serializable;

public class Product implements Serializable {

  private String id;
  private String idCatgoy;
  private String nameBrand;
  private String name;
  private String img;
  private int price;
  private String discount;
  private int quantity;
  private String description;
  private String status;

  public Product() {
  }

  public Product(String id, String idCatgoy, String nameBrand, String name, String img, int price, String discount, int quantity, String description, String status) {
    this.id = id;
    this.idCatgoy = idCatgoy;
    this.nameBrand = nameBrand;
    this.name = name;
    this.img = img;
    this.price = price;
    this.discount = discount;
    this.quantity = quantity;
    this.description = description;
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

  public String getDiscount() {
    return discount;
  }

  public void setDiscount(String discount) {
    this.discount = discount;
  }

  public int getQuantity() {
    return quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }
  //  public String id() {
//    return id;
//  }
//
//  public void setId(String id) {
//    this.id = id;
//  }
//
//  public String idCatgoy() {
//    return idCatgoy;
//  }
//
//  public void setIdCatgoy(String idCatgoy) {
//    this.idCatgoy = idCatgoy;
//  }
//
//  public String nameBrand() {
//    return nameBrand;
//  }
//
//  public void setNameBrand(String nameBrand) {
//    this.nameBrand = nameBrand;
//  }
//
//  public String name() {
//    return name;
//  }
//
//  public void setName(String name) {
//    this.name = name;
//  }
//
//  public String img() {
//    return img;
//  }
//
//  public void setImg(String img) {
//    this.img = img;
//  }
//
//  public int price() {
//    return price;
//  }
//
//  public void setPrice(int price) {
//    this.price = price;
//  }
//
//  public int discount() {
//    return discount;
//  }
//
//  public void setDiscount(int discount) {
//    this.discount = discount;
//  }
//
//  public int quantity() {
//    return quantity;
//  }
//
//  public void setQuantity(int quantity) {
//    this.quantity = quantity;
//  }
//
//  public String description() {
//    return description;
//  }
//
//  public void setDescription(String description) {
//    this.description = description;
//  }
//
//  public String status() {
//    return status;
//  }
//
//  public void setStatus(String status) {
//    this.status = status;
//  }


  //  private String id;
//  private String brand;
//  private String name;
//  private String img;
//  private int price;
//  private int sellPrice;
//  private int quantity;
//  private String description;
//
//  public Product() {
//  }
//
//  public Product(String id, String brand, String name, String img, int price, int sellPrice, int quantity, String description) {
//    this.id = id;
//    this.brand = brand;
//    this.name = name;
//    this.img = img;
//    this.price = price;
//    this.sellPrice = sellPrice;
//    this.quantity = quantity;
//    this.description = description;
//  }
//
//  public String getId() {
//    return id;
//  }
//
//  public void setId(String id) {
//    this.id = id;
//  }
//
//  public String getBrand() {
//    return brand;
//  }
//
//  public void setBrand(String brand) {
//    this.brand = brand;
//  }
//
//  public String getName() {
//    return name;
//  }
//
//  public void setName(String name) {
//    this.name = name;
//  }
//
//  public String getImg() {
//    return img;
//  }
//
//  public void setImg(String img) {
//    this.img = img;
//  }
//
//  public int getPrice() {
//    return price;
//  }
//
//  public void setPrice(int price) {
//    this.price = price;
//  }
//
//  public int getSellPrice() {
//    return sellPrice;
//  }
//
//  public void setSellPrice(int sellPrice) {
//    this.sellPrice = sellPrice;
//  }
//
//  public int getQuantity() {
//    return quantity;
//  }
//
//  public void setQuantity(int quantity) {
//    this.quantity = quantity;
//  }
//
//  public String getDescription() {
//    return description;
//  }
//
//  public void setDescription(String description) {
//    this.description = description;
//  }
//
//  @Override
//  public String toString() {
//    return "Product{" +
//      "id='" + id + '\'' +
//      ", brand='" + brand + '\'' +
//      ", name='" + name + '\'' +
//      ", img='" + img + '\'' +
//      ", price=" + price +
//      ", sellPrice=" + sellPrice +
//      ", quantity=" + quantity +
//      ", description='" + description + '\'' +
//      '}';
//  }

}









