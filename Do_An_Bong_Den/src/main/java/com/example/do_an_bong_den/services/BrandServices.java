package com.example.do_an_bong_den.services;

import beans.Category;
import com.example.do_an_bong_den.beans.Brand;
import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.db.producdb;
import database.JDBIConnector;
import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.mapper.reflect.BeanMapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BrandServices {
    private static BrandServices instance;

    public BrandServices(){
    }

    public static BrandServices getInstance() {
        if (instance == null) {
            instance = new BrandServices();
        }
        return instance;
    }
//    public List<Brand> getBrand(){
//        List<Brand> list = new ArrayList<>();
//        String query = "SELECT * FROM brand";
//        try {
//            Connection connection = new producdb().getConnection();
//            PreparedStatement preparedStatement = connection.prepareStatement(query);
//            ResultSet resultSet = preparedStatement.executeQuery();
//            while (resultSet.next()){
//                list.add(new Brand(
//                        resultSet.getString(1),
//                        resultSet.getString(2)
//                ));
//            }
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        }
//        return list;
//    }

//    public static void main(String[] args) {
//        try {
//            com.example.do_an_bong_den.db.JDBIConnector dao = new com.example.do_an_bong_den.db.JDBIConnector();
//            List<Brand> list = dao.getBrand();
//            if (!list.isEmpty()) {
//                for (Brand a : list) {
//                    System.out.println(a);
//                }
//            } else {
//                System.out.println("Danh sách sản phẩm trống.");
//            }
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        }
//    }




    public List<Brand> getBrandList() {
        List<Brand> brandList = new ArrayList<>();

        try (Handle handle = JDBIConnector.get().open()) {
            handle.registerRowMapper(BeanMapper.factory(Category.class));
            brandList = handle.createQuery("SELECT * FROM brand")
                    .mapTo(Brand.class)
                    .list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return brandList;

    }
    public Brand nameBrand(String id) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT name FROM brand WHERE id = ?")
                    .bind(0, id)
                    .mapTo(Brand.class).stream().findFirst().get();
//                    .findOne()
//                    .orElse(null);
        });
    }

    public static void main(String[] args) {
        BrandServices brandServices = new BrandServices();
//    System.out.println(categoryServices.getCategoryList());
        System.out.println(brandServices.nameBrand("1"));

    }

}
