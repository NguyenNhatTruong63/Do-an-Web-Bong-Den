


package com.example.do_an_bong_den.beans;

public class Product {
    private String id;
    private String idCatgoy;
    private String nameBrand;
    private String name;
    private String img;
    private double price;
    private double discount;
    private int quantity;
    private String status;

    public Product() {
    }

    public Product(String id, String idCatgoy, String nameBrand, String name, String img, double price, double discount, int quantity, String status) {
        this.id = id;
        this.idCatgoy = idCatgoy;
        this.nameBrand = nameBrand;
        this.name = name;
        this.img = img;
        this.price = price;
        this.discount = discount;
        this.quantity = quantity;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
//    public double salePrice() {
//        double sale = price *((100-discount)/100));
//        return sale;
//
//    }
    public double salePrice() {
        double sale = price - (price * discount);
        return sale;
    }
}

