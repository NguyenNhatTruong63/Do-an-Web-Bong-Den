//package com.example.do_an_bong_den.db;
//
//import java.sql.*;
//
//public class DBConnector {
//    String url = "jdbc:mysql://locahost:3306//dabd";
//    String user = "root";
//    String pass = "";
//    Connection connection;
//    static DBConnector install;
//
//    private DBConnector() {
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            connection = DriverManager.getConnection(url, user, pass);
//        } catch (ClassNotFoundException | SQLException e) {
//            throw new RuntimeException(e);
//        }
//
//    }
//
//    public static DBConnector getInstall(){
//        if (install == null) install = new DBConnector();
//        return install;
//    }
//
//    public Statement get() {
//        if (connection == null) return null;
//        try {
//            return connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
//        } catch (SQLException e) {
////            throw new RuntimeException(e);
//            return null;
//        }
//    }
//
//    public static void main(String[] args) throws SQLException {
//        Statement statement = DBConnector.getInstall().get();
//        if (statement != null)
//            try {
//               ResultSet resultSet = statement.executeQuery("select * from products");
//                resultSet.last();
//                System.out.println(resultSet.getRow());
//                resultSet.beforeFirst();
//                while (resultSet.next()){
//                    System.out.println(resultSet.getString(1) + "......" + resultSet.getString(2));
//                }
//            } catch (SQLException e) {
//                throw new RuntimeException(e);
//            }
//        else{
//            System.out.println("Không có kết nối");
//        }
//    }
//}
