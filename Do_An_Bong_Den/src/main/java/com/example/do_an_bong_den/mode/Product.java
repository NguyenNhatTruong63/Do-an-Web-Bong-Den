package com.example.do_an_bong_den.mode;

public class Product {
  private String id;
  private String brand;
  private String name;
  private String img;
  private int price;
  private int sellPrice;
  private int quantity;
//  private String description;

  public Product() {
  }

  public Product(String id, String brand, String name, String img, int price, int sellPrice, int quantity) {
    this.id = id;
    this.brand = brand;
    this.name = name;
    this.img = img;
    this.price = price;
    this.sellPrice = sellPrice;
    this.quantity = quantity;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getBrand() {
    return brand;
  }

  public void setBrand(String brand) {
    this.brand = brand;
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

  public int getSellPrice() {
    return sellPrice;
  }

  public void setSellPrice(int sellPrice) {
    this.sellPrice = sellPrice;
  }

  public int getQuantity() {
    return quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

  @Override
  public String toString() {
    return "Product{" +
      "id='" + id + '\'' +
      ", brand='" + brand + '\'' +
      ", name='" + name + '\'' +
      ", img='" + img + '\'' +
      ", price=" + price +
      ", sellPrice=" + sellPrice +
      ", quantity=" + quantity +
      '}';
  }
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
