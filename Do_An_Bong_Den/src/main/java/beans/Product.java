package beans;

import java.io.Serializable;

public class Product implements Serializable {
  private static final long serialVersionUID = 1L;
  private int id;
  private int idCategory;
  private String nameBrand;
  private String name;
  private String img;
  private int price;
  private int discount;
  private int quantity;
  private int status;

  public Product() {

  }

  public Product(int id, int idCategory, String nameBrand, String name, String img, int price, int discount, int quantity, int status) {
    this.id = id;
    this.idCategory = idCategory;
    this.nameBrand = nameBrand;
    this.name = name;
    this.img = img;
    this.price = price;
    this.discount = discount;
    this.quantity = quantity;
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
      ", nameBrand='" + nameBrand + '\'' +
      ", name='" + name + '\'' +
      ", img='" + img + '\'' +
      ", price=" + price +
      ", discount=" + discount +
      ", quantity=" + quantity +
      ", status=" + status +
      '}';
  }
}
