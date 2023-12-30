package services;

import beans.Product;
import database.JDBIConnector;

import java.sql.SQLException;
import java.util.List;

<<<<<<< HEAD

=======
>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae
public class ProductByBrandServices {
    private static ProductByBrandServices instance;

    public ProductByBrandServices() {
    }

    public static ProductByBrandServices getInstance() {
        if (instance == null) {
            instance = new ProductByBrandServices();
        }
        return instance;
    }

//  public List<Product> getAll() {
//    return JDBIConnector.get().withHandle(handle -> {
//      return handle.createQuery("select * from products")
//        .mapToBean(Product.class).list();
//    });
//  }


    public List<Product> getListProductByBrand(String id) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from products where id = ?").bind(0, id)
                    .mapToBean(Product.class).list();
        });
    }


    public static void main(String[] args) throws SQLException {
<<<<<<< HEAD
        List<Product> all = ProductByBrandServices.getInstance().getListProductByBrand("Rạng Đông");
=======
        List<Product> all = ProductByBrandServices.getInstance().getListProductByBrand("Ráº¡ng ÄÃ´ng");
>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae

        ProductByBrandServices product = new ProductByBrandServices();

        System.out.println(all);

    }
<<<<<<< HEAD
=======

>>>>>>> 7421e0f4a1b215b60f2cf572aeae625e03d27cae
}
