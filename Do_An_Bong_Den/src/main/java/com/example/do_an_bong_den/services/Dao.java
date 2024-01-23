package com.example.do_an_bong_den.services;

import com.example.do_an_bong_den.beans.Account;
import com.example.do_an_bong_den.beans.BrandProduct;

import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.beans.ProductDetail;
import com.example.do_an_bong_den.db.DBText;
<<<<<<< HEAD

=======
import database.JDBIConnector;
>>>>>>> c57b0f248c8221d2c84dfbb6a2d095ebba2662f2
import org.jdbi.v3.core.Jdbi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Dao {
    private static Jdbi jdbi;
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public static Jdbi get() {
        if (jdbi == null) ;
        return jdbi;
    }

    //    public Account login(String user, String pass){
//        List<Account> accounts =  JDBIConnector.get().withHandle(handle -> {
//            return handle.createQuery("select * from users where userName = ? and password = ?")
//                    .mapToBean(Account.class).stream().collect(Collectors.toList());
//        });
//        return (Account) accounts;
//    }
    public Account login(String user, String pass) {
        String query = "select * from user where userName = ? and password = ?";
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                );
            }


        } catch (Exception e) {

        }
        return null;
    }


<<<<<<< HEAD

//    public Account checkAccountExist(String user){
//        String query = "select * from user where userName = ?";

    public Account checkAccountExit(String user){
        String query = "select * from users where userName = ?";

=======
    public Account checkAccountExist(String user) {
        String query = "select * from user where userName = ?";
>>>>>>> c57b0f248c8221d2c84dfbb6a2d095ebba2662f2
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                );
            }


        } catch (Exception e) {

        }
        return null;
    }

<<<<<<< HEAD
//    public Account signup(String userName, String password, String repassword ,String email){
//        String query = "insert into user VALUES (0, ?, ?, ?, 0, 0 )";
//        try {
//            conn = new DBText().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setInt(1, id);

    public void signup(String userName, String password, String repassword, String email){
        String query = "insert into user VALUES (7, ?, ?, ?, ?, 0)";
//        String query = "insert into user VALUES (0, ?, ?, ?, 0, 0 )";
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);

=======
    public Account signup(String userName, String password, String repassword, String email, String phoneNumber) {
        String query = "insert into user VALUES (0, ?, ?, ?, ?, 0 )";
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
//            ps.setInt(1, id);
>>>>>>> c57b0f248c8221d2c84dfbb6a2d095ebba2662f2
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, phoneNumber);
//            ps.setString(4, phoneNumber);
//            ps.setString(6, idRole);
//            ps.setString(4, phone);
//            ps.setString(5, address);
            ps.executeUpdate();
            System.out.println("insert thành công");
        } catch (Exception e) {

        }
<<<<<<< HEAD
    }
    public List<Product> searchbyname(String search){
        List<Product> list = new ArrayList<>();
        String query = "select name from products where name like = ?";
        try{
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%"+ search +"%");
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getDouble(7),
                        rs.getInt(8),
                        rs.getInt(9)
//                        rs.getString(10)


                ));
            }
        }catch (Exception e){

        }
        return list;
    }
        public int getTotalPage(){
=======
        return null;
    }
//    public List<Product> searchbyname(String search){
//        List<Product> list = new ArrayList<>();
//        String query = "select name from products where name like = ?";
//        try{
//            conn = new DBText().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, "%"+ search +"%");
//            rs = ps.executeQuery();
//            while (rs.next()){
//                list.add(new Product(
//                        rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getInt(6),
//                        rs.getInt(7),
//                        rs.getInt(8),
//                        rs.getString(9),
//                        rs.getString(10)
//
//
//                ));
//            }
//        }catch (Exception e){
//
//        }
//        return list;
//    }

    public int getTotalPage() {
>>>>>>> c57b0f248c8221d2c84dfbb6a2d095ebba2662f2
        String query = "select count(*) from products";
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }

        return 0;
    }
<<<<<<< HEAD
    public List<Product> pagingProduct(int index){
        List<Product> list = new ArrayList<>();
        String query = "select * from products order by id offset ? rows fetch next 3 rows only";
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index-1)*3);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getDouble(7),
                        rs.getInt(8),
                        rs.getInt(9)
//            rs.getString(10)
                ));

            }
        }catch (Exception e){

        }

        return list;
    }
        public BrandProduct getBrandProduct(String id) {
        String query = "SELECT products.name, brands.name from products, brands WHERE products.idBrand = brands.id and products.id = ?";
        try {
            conn = new database.DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new BrandProduct(rs.getString(1),
                        rs.getString(2));
            }


        } catch (Exception e) {

        }
        return null;
    }

    public ProductDetail getProductDetail(String id) {
        String query = "select * from product_detail where idProduct = ?";
        try {
        conn = new database.DBText().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, id);
        rs = ps.executeQuery();
            while (rs.next()) {
                return new ProductDetail(rs.getInt(1),
                    rs.getInt(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getString(9),
                    rs.getString(10)


                );
            }
        } catch (Exception e) {

            }
        return null;
    }







    }
//    public List<Product> searchbyname(String search){
//        List<Product> list = new ArrayList<>();
//        String query = "select name from products where name like = ?";
//        try{
//            conn = new DBText().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, "%"+ search +"%");
//            rs = ps.executeQuery();
//            while (rs.next()){
//                list.add(new Product(
//                        rs.getInt(1),
//                        rs.getInt(2),
//                        rs.getInt(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getDouble(6),
//                        rs.getDouble(7),
//                        rs.getInt(8),
//                        rs.getInt(9)
//                        rs.getString(10)




//                        rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getInt(6),
//                        rs.getInt(7),
//                        rs.getInt(8),
//                        rs.getString(9)

//                ));
//            }
//        }catch (Exception e){
//
//        }
//        return list;
//    }


//    public int getTotalPage(){
//        String query = "select count(*) from products";
//        try {
//            conn = new DBText().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()){
//                return rs.getInt(1);
//            }
//        }catch (Exception e){
//
//        }
//
//        return 0;
//    }
//    public List<Product> pagingProduct(int index){
=======

    //    public List<Product> pagingProduct(int index){
>>>>>>> c57b0f248c8221d2c84dfbb6a2d095ebba2662f2
//        List<Product> list = new ArrayList<>();
//        String query = "select * from products order by id offset ? rows fetch next 3 rows only";
//        try {
//            conn = new DBText().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setInt(1, (index-1)*3);
//            rs = ps.executeQuery();
//            while (rs.next()){
//                list.add(new Product(
//                        rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getInt(6),
//                        rs.getInt(7),
//                        rs.getInt(8),
//                        rs.getString(9)
////            rs.getString(10)
//                ));
//
//            }
//        }catch (Exception e){
//
//        }
//
//        return list;
//    }
<<<<<<< HEAD
//    public Account getAccount(String id) {
//        String query = "select * from user where id = ? ";
//
//    public List<Product> pagingProduct(int index){
//        List<Product> list = new ArrayList<>();
//        String query = "select * from products order by id offset ? rows fetch next 3 rows only";
//
//        try {
//            conn = new database.DBText().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, id);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Account(rs.getString(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getString(6)
//                );
//            }
//
//
//        } catch (Exception e) {
//
//        }
//        return null;
//    }
=======
    public Account getAccount(String id) {
        String query = "select * from user where id = ? ";
        try {
            conn = new database.DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                );
            }


        } catch (Exception e) {

        }
        return null;
    }
>>>>>>> c57b0f248c8221d2c84dfbb6a2d095ebba2662f2

    //    public static void main(String[] args) {
//        Dao dao = new Dao();
////        List<Product> list =
////        int count = dao.getTotalPage();
////        System.out.println(count);
////        List<Product> list = dao.pagingProduct(1);
////        for (Product product: list){
////            System.out.println(product);
////        }
//        List<Product> list = dao.searchbyname("Bóng Đèn Buld Rạng Đông 12W");
//        for (Product product: list){
//            System.out.println(product);
//        }
//
//    }
//B1: Viet method lay thong tin chi tiet san pham --> test
// B2: hien thị san pham o trang productdetail.jsp
<<<<<<< HEAD
//public Product getProduct(String id) {
//    String query = "select * from products where id = ?";
//    try {
//        conn = new database.DBText().getConnection();
//        ps = conn.prepareStatement(query);
//        ps.setString(1, id);
//        rs = ps.executeQuery();
//        while (rs.next()) {
//            return new Product(rs.getInt(1),
//                    rs.getInt(2),
//                    rs.getInt(3),
//                    rs.getString(4),
//                    rs.getString(5),
//                    rs.getDouble(6),
//                    rs.getDouble(7),
//                    rs.getInt(8),
//                    rs.getInt(9)
////                    rs.getString(10)
//            );
//
//        }
//
//
//    } catch (Exception e) {
//
//    }
//    return null;
//}
=======
    public Product getProduct(String id) {
        String query = "select * from products where id = ?";
        try {
            conn = new database.DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDouble(6),
                        rs.getDouble(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10));

            }


        } catch (Exception e) {

        }
        return null;
    }
>>>>>>> c57b0f248c8221d2c84dfbb6a2d095ebba2662f2

    // phuong thuc lay ten thuong hieu cua san pham
//    public BrandProduct getBrandProduct(String id) {
//        String query = "SELECT products.name, brands.name from products, brands WHERE products.idBrand = brands.id and products.id = ?";
//        try {
//            conn = new database.DBText().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, id);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new BrandProduct(rs.getString(1),
//                        rs.getString(2));
//            }
//
//
//        } catch (Exception e) {
//
//        }
//        return null;
//    }
//
//    public ProductDetail getProductDetail(String id) {
//        String query = "select * from product_detail where idProduct = ?";
//        try {
//        conn = new database.DBText().getConnection();
//        ps = conn.prepareStatement(query);
//        ps.setString(1, id);
//        rs = ps.executeQuery();
//        while (rs.next()) {
//            return new ProductDetail(rs.getInt(1),
//                    rs.getInt(2),
//                    rs.getString(3),
//                    rs.getString(4),
//                    rs.getString(5),
//                    rs.getString(6),
//                    rs.getString(7),
//                    rs.getString(8),
//                    rs.getString(9),
//                    rs.getString(10)
//
//
//            );
//        }
//    } catch (Exception e) {
//
//    }
//
//
//
//    return null;
//}

<<<<<<< HEAD
//    public static void main(String[] args) {
=======

        } catch (Exception e) {

        }
        return null;
    }

    public ProductDetail getProductDetail(String id) {
        String query = "select * from product_detail where idProduct = ?";
        try {
            conn = new database.DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ProductDetail(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)


                );
            }
        } catch (Exception e) {

        }


        return null;
    }

    public Account changePassword(String username, String newPassword) {
        String query = "update user set password = ? where userName = ?";
        try {
            conn = new database.DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, newPassword);
            ps.setString(2, username);
            int effectedRow = ps.executeUpdate();
            System.out.println("So dong da cap nhat: " + effectedRow);

        } catch (Exception e) {

        }
        return null;
    }

    public static void main(String[] args) {
>>>>>>> c57b0f248c8221d2c84dfbb6a2d095ebba2662f2
//        try {
//            Dao dao = new Dao();
//            List<Product> list = dao.searchbyname("");
//            if (!list.isEmpty()) {
//                for (Product product : list) {
//                    System.out.println(product);
//                }
//            }else{
//                    System.out.println("dstrong");
//                }
//            } catch (Exception e){
//            throw new RuntimeException(e);
//
//        }
<<<<<<< HEAD
//    Dao dao = new Dao();
//    System.out.println(dao.signup("234", "123", "123","123"));
//    System.out.println(dao.checkAccountExist("lin"));
//        System.out.println(dao.getAccount("3"));
//        System.out.println(dao.getProductDetail("3"));

//    public static void main(String[] args) {
//        Dao dao = new Dao();
////        List<Product> list =
////        int count = dao.getTotalPage();
////        System.out.println(count);
//        List<Product> list = dao.pagingProduct(1);
//        for (Product product: list){
//            System.out.println(product);
//        }
////        List<Product> list = dao.searchbyname("Bóng Đèn Buld Rạng Đông 12W");
////        for (Product product: list){
////            System.out.println(product);
////        }
//
//    }

//    public static void main(String[] args) {
//        try {
//            Dao dao = new Dao();
//            List<Product> list = dao.pagingProduct(1);
//            if (!list.isEmpty()) {
//                for (Product product : list) {
//                    System.out.println(product);
//                }
//            }else{
//                    System.out.println("dstrong");
//                }
//            } catch (Exception e){
//            throw new RuntimeException(e);
//
//        }
//
//
//    }


//}
=======
        Dao dao = new Dao();
//    System.out.println(dao.signup("234", "123", "123","123"));
        System.out.println(dao.checkAccountExist("linh1"));
//        System.out.println(dao.getAccount("3"));
//        System.out.println(dao.getProductDetail("3"));
//        dao.changePassword("linh", "linh");
    }


}
>>>>>>> c57b0f248c8221d2c84dfbb6a2d095ebba2662f2
