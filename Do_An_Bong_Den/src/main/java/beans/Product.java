package beans;

import java.awt.desktop.AboutEvent;
import java.io.Serializable;

public class  Product implements Serializable {
  private static final long serialVersionUID = 1L;
  private int id;
  private int idCategory;
  private int idBrand;
  private String nameBrand;
  private String name;
  private String img;
  private double discount;
  private int quantity;
  private double price;
  private int status;

  public Product() {

  }

  public Product(int id, int idCategory, String nameBrand, String name, String img, double price, double discount, int quantity, int status) {
    this.id = id;
    this.idCategory = idCategory;
    this.idBrand = idBrand;
    this.nameBrand = nameBrand;
    this.name = name;
    this.img = img;
    this.discount = discount;
    this.quantity = quantity;
    this.price = price;
    this.status = status;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public int getIdCategory() {
    return idCategory;
  }

  public void setIdCategory(int idCategory) {
    this.idCategory = idCategory;
  }

  public int getIdBrand() {
    return idBrand;
  }

  public void setIdBrand(int idBrand) {
    this.idBrand = idBrand;
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
  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }

  public int getStatus() {
    return status;
  }

  public void setStatus(int status) {
    this.status = status;
  }

  @Override
  public String toString() {
    return "Product{" +
      "id='" + id + '\'' +
      ", idCategory='" + idCategory + '\'' +
      ", idBrand='" + idBrand + '\'' +
      ", nameBrand='" + nameBrand + '\'' +
      ", name='" + name + '\'' +
      ", img='" + img + '\'' +
      ", discount=" + discount +
      ", quantity=" + quantity +
      ", price=" + price +
      ", status=" + status +
      '}';
  }

  public double salePrice() {
    double sale = price - (price * discount);
    return sale;
  }
}
