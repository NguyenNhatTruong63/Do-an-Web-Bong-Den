package com.example.do_an_bong_den.services;

import com.example.do_an_bong_den.beans.Account;
import com.example.do_an_bong_den.beans.Product;
import com.example.do_an_bong_den.db.DBText;
import org.jdbi.v3.core.Jdbi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Dao {
    private static Jdbi jdbi;
    Connection conn=null;
    PreparedStatement ps =null;
    ResultSet rs= null;

    public static Jdbi get() {
        if(jdbi == null);
        return jdbi;
    }

//    public Account login(String user, String pass){
//        List<Account> accounts =  JDBIConnector.get().withHandle(handle -> {
//            return handle.createQuery("select * from users where userName = ? and password = ?")
//                    .mapToBean(Account.class).stream().collect(Collectors.toList());
//        });
//        return (Account) accounts;
//    }
    public Account login(String user, String pass){
        String query = "select * from users where userName = ? and password = ?";
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()){
                return  new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                );
            }


        }catch (Exception e){

        }
        return null;
    }

    public Account checkAccountExit(String user){
        String query = "select * from users where userName = ?";
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()){
                return  new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                );
            }


        }catch (Exception e){

        }
        return null;
    }
    public void signup(String userName, String password, String repassword, String email, String phone, String address){
        String query = "insert into user VALUES ( 3, ?, ?, ?, ?, ?, 0 )";
//        String query = "insert into user VALUES (0, ?, ?, ?, 0, 0 )";
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, password);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.executeUpdate();
        }catch (Exception e){

        }


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
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9)

                ));
            }
        }catch (Exception e){

        }
        return list;
    }

    public int getTotalPage(){
        String query = "select count(*) from products";
        try {
            conn = new DBText().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                return rs.getInt(1);
            }
        }catch (Exception e){

        }

        return 0;
    }
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
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9)
//            rs.getString(10)
                ));

            }
        }catch (Exception e){

        }

        return list;
    }

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

    public static void main(String[] args) {
        try {
            Dao dao = new Dao();
            List<Product> list = dao.pagingProduct(1);
            if (!list.isEmpty()) {
                for (Product product : list) {
                    System.out.println(product);
                }
            }else{
                    System.out.println("dstrong");
                }
            } catch (Exception e){
            throw new RuntimeException(e);

        }

    }
}
