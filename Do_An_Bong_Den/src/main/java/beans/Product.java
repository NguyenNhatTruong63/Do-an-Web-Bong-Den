
package beans;

import java.io.Serializable;

public class Product implements Serializable {
  private static final long serialVersionUID = 1L;
  private int id;
  private int idCategory;
  private int idBrand;
  private String name;
  private String img;
  private double price;
  private double discount;
  private int quantity;
  private int status;
  private String description;

  public Product() {

  }

  public Product(int id, int idCategory, int idBrand, String name, String img, double price, double discount, int quantity, int status, String description ) {
    this.id = id;
    this.idCategory = idCategory;
    this.idBrand = idBrand;
    this.name = name;
    this.img = img;
    this.price = price;
    this.discount = discount;
    this.quantity = quantity;
    this.status = status;
    this.description = description;
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

  public int getStatus() {
    return status;
  }

  public void setStatus(int status) {
    this.status = status;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  @Override
  public String toString() {
    return "Product{" +
      "id=" + id +
      ", idCategory=" + idCategory +
      ", idBrand='" + idBrand + '\'' +
      ", name='" + name + '\'' +
      ", img='" + img + '\'' +
      ", price=" + price +
      ", discount=" + discount +
      ", quantity=" + quantity +
      ", status=" + status +
      ", description='" + description + '\'' +
      '}';
  }

  public double salePrice() {
    double sale = price - (price * discount);
    return sale;
  }
}

