package com.example.do_an_bong_den.beans;

public class Brand {
  private int id;
  private String name;

  public Brand(int id, String name) {
    this.id = id;
    this.name = name;
  }

  public Brand() {
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  @Override
  public String toString() {
    return "Brand{" +
      "id=" + id +
      ", name='" + name + '\'' +
      '}';
  }
}
