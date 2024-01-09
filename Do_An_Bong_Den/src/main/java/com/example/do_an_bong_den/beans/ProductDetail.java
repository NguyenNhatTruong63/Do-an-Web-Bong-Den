package com.example.do_an_bong_den.beans;

public class ProductDetail {
    private int id;
    private int idProduct;
    private String wattage; // công suat
    private String voltage; // điện áp
    private String luminousFlux; // quang thông
    private String longevity; // tuổi thọ
    private String cri; // hệ số màu

    private String elecConsumption; // mức tiêu thụ điện

    private String size;

    private String material;


    public ProductDetail(int id, int idProduct, String wattage, String voltage, String luminousFlux, String longevity, String cri, String elecConsumption, String size, String material) {
        this.id = id;
        this.idProduct = idProduct;
        this.wattage = wattage;
        this.voltage = voltage;
        this.luminousFlux = luminousFlux;
        this.longevity = longevity;
        this.cri = cri;
        this.elecConsumption = elecConsumption;
        this.size = size;
        this.material = material;
    }

    ProductDetail() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getWattage() {
        return wattage;
    }

    public void setWattage(String wattage) {
        this.wattage = wattage;
    }

    public String getVoltage() {
        return voltage;
    }

    public void setVoltage(String voltage) {
        this.voltage = voltage;
    }

    public String getLuminousFlux() {
        return luminousFlux;
    }

    public void setLuminousFlux(String luminousFlux) {
        this.luminousFlux = luminousFlux;
    }

    public String getLongevity() {
        return longevity;
    }

    public void setLongevity(String longevity) {
        this.longevity = longevity;
    }

    public String getCri() {
        return cri;
    }

    public void setCri(String cri) {
        this.cri = cri;
    }

    public String getElecConsumption() {
        return elecConsumption;
    }

    public void setElecConsumption(String elecConsumption) {
        this.elecConsumption = elecConsumption;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    @Override
    public String toString() {
        return "ProductDetail{" +
                "id=" + id +
                ", idProduct=" + idProduct +
                ", wattage='" + wattage + '\'' +
                ", voltage='" + voltage + '\'' +
                ", luminousFlux='" + luminousFlux + '\'' +
                ", longevity='" + longevity + '\'' +
                ", cri='" + cri + '\'' +
                ", elecConsumption='" + elecConsumption + '\'' +
                ", size='" + size + '\'' +
                ", material='" + material + '\'' +
                '}';
    }
}
