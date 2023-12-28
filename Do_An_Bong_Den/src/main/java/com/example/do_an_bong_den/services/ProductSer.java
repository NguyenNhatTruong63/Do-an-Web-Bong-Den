//package com.example.do_an_bong_den.services;
//
//import com.example.do_an_bong_den.beans.Product;
//import com.example.do_an_bong_den.db.DBConnector;
//import com.example.do_an_bong_den.db.DBProperties;
//import com.example.do_an_bong_den.db.producdb;
//import com.example.do_an_bong_den.db.JDBIConnector;
//
//import java.io.Serializable;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.LinkedList;
//import java.util.List;
//
//public class ProductSer {
//
//    public List<Product> getAllProduct() {
//        List<Product> list = new ArrayList<>();
//        String query = "SELECT * FROM products";
//        try {
//            Connection conn = new producdb().getConnection();
//            PreparedStatement ps = conn.prepareStatement(query);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
//                        rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10)
//                ));
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        } finally {
//            // Đóng tài nguyên ở đây
//        }
//        return list;
//    }
//
//
////    public static List<Product> getListProduct(){
////        LinkedList<Product> list = new LinkedList<>();
////        Statement statement = DBConnector.getInstall().get();
////        if (statement != null)
////            try {
////                ResultSet resultSet = statement.executeQuery("select * from products");
////                resultSet.last();
////                System.out.println(resultSet.getRow());
////                resultSet.beforeFirst();
////                while (resultSet.next()){
////                    System.out.println(resultSet.getString(1) + "......" + resultSet.getString(2));
////                }
////            } catch (
////                    SQLException e) {
////                throw new RuntimeException(e);
////            }
////        else{
////            System.out.println("Không có kết nối");
////        }
////        return list;
////    }
//
//
//}
