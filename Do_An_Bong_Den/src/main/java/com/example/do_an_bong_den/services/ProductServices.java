package com.example.do_an_bong_den.services;

import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.db.JDBIConnector;

<<<<<<< HEAD
import java.util.LinkedList;
import java.util.List;

public class ProductServices {
  private static ProductServices instance;

  public ProductServices() {

  }
  public  static ProductServices getInstance(){
    if(instance == null){
      instance = new ProductServices();
    }
    return instance;
  }
  public List<Product> getAll(){
    return JDBIConnector.get().withHandle(handle -> {
      return handle.createQuery("SELECT * FROM products")
        .mapToBean(Product.class)
        .list();
    });
  }

  public Product getById(int productid) {
    return JDBIConnector.get().withHandle(handle -> {
      return handle.createQuery("SELECT * FROM products where id = ?")
        .bind("id", productid).mapToBean(Product.class).findFirst().get();

    });
  }
  //  public static List<Product> getProductList(){
//    LinkedList<Product> list = new LinkedList<>();
//    list.add(new Product("1", "Rạng Đông", "Đèn led âm trần Rạng Đông 16w D AT04L 155/16W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp4.jpg", 240, 168, 40));
//    list.add(new Product("2", "Panasonic", "Bóng Đèn Led Ốp Trần Panasonic 18W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp1_den-led-am-tran-18w-panasonic.jpg", 150, 105,40));
//    list.add(new Product("3", "Philips", "Bóng đèn Led Bulb Philips 18W E27 3000K A67 ánh sáng vàng", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp2.jpg", 130, 104,50));
//    list.add(new Product("4", "Panasonic", "Bóng Đèn Led Panasonic Âm Trần kiểu vuông 5W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp3_amtran_Panasonic-5wjpg.jpg", 130, 98,60));
//    list.add(new Product("5", "Rạng Đông", "ĐÈN LED Tuýp Bán Nguyệt 1.5M 48W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp5.jpg", 140, 105,30));
//    list.add(new Product("6", "Philips", "Bóng Đèn Hồng Ngoại Philips 150W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp7_bd_hngoai_philips.jpg", 450, 225,50));
//    list.add(new Product("7", "Panasonic", "Bóng Đèn Led Panasonic Âm Trần Vuông Mặt Vàng 7W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp8_den-led-am-tran-vuong-mat-vang-7w_panasonic.jpg", 160, 112,45));
//    list.add(new Product("8", "Rạng Đông", "Bóng Đèn Led Rạng Đông Đổi Màu 9W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp9_bongdenledbulb_doimau9w.jpg", 70, 63,60));
//    list.add(new Product("9", "Rạng Đông", "Bóng Đèn Led Bulb Rạng Đông Cảm Biến 7W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp11_dendaytoc60w.jpg", 110, 88,60));
//    list.add(new Product("10", "Điện Quang", "Đèn Dây Tóc Điện Quang 60W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp1_den-led-am-tran-18w-panasonic.jpg", 30, 27,50));
//
//    list.add(new Product("11", "Rạng Đông", "Bóng led trụ ngoài trời trang trí sân vườn A7414 | Flexhouse VN", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp13_denledsanvuon.jpg", 420, 252,60));
//    list.add(new Product("12", "Điện Quang", "Bóng đèn led tròn ngoài trời trang trí sân vườn", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp14_densanvuontron.jpg", 300, 240,50));
//    list.add(new Product("13", "Rạng Đông", "Bóng đèn led Blub tròn 5W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp15_bongdenbulb-rd-5W.jpg", 50, 42,55));
//    list.add(new Product("14", "Philips", "Bóng đèn led Tuýp T8-18W-1.2m", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp16_bong-den-led-tuyp-philips-t8.jpg", 100, 80,60));
//    list.add(new Product("15", "Rạng Đông", "Bóng Led Bulb Rạng Đông 20W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp17_bden_bulb_rd_20w.jpg", 80, 64,70));
//    list.add(new Product("16", "Rạng Đông", "Bóng đèn Led Ốp Trần Rạng Đông 12W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp18%20optran_rd-12W.jpg", 140, 105,80));
//    list.add(new Product("17", "Osram", "Bóng Đèn LED Bulb Trụ Nhôm Đúc Led Osram 20W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp19_bong-den-led-bulb-tru-nhom-duc-led-osram-20W.jpg", 80, 64,70));
//    list.add(new Product("18", "Rạng Đông", "Bóng đèn Led Buld Trụ Rạng Đông", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp20_bd_buld_tr%E1%BB%A5_20w.jpg", 130, 98,60));
//    list.add(new Product("19", "Điện Quang", "Đèn Dây Tóc Điện Quang 60W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp1_den-led-am-tran-18w-panasonic.jpg", 30, 27,50));
//    list.add(new Product("20", "Điện Quang", "Đèn Dây Tóc Điện Quang 60W", "http://localhost:8080/Do_An_Bong_Den_war/assart/image/san_pham_tc/sp1_den-led-am-tran-18w-panasonic.jpg", 30, 27,50));
//
//    return list;
//  }

}
=======
import java.util.List;
import java.util.stream.Collectors;

public class ProductServices {
    private static ProductServices instance;

    public ProductServices() {
    }

    public static ProductServices getInstance() {
        if (instance == null) {
            instance = new ProductServices();
        }
        return instance;
    }

    public List<Product> getAll() {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT * FROM products"))
                .mapToBean(Product.class).collect(Collectors.toList());
    }

    public Product getById(int productid) {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT * FROM products WHERE id = :id")
                .bind("id", productid).mapToBean(Product.class).stream().findFirst()).get();
    }

    public Product getByNameBrand(String brand) {
        return JDBIConnector.get().withHandle(handle -> handle.createQuery("SELECT nameBrand FROM products"))
                .bind("nameBrand", brand).mapToBean(Product.class).stream().findFirst().get();
    }

    public static void main(String[] args) {
        List<Product> all = ProductServices.getInstance().getAll();
        System.out.println(all);
    }
}

>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae
