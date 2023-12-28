package com.example.do_an_bong_den.db;
import java.sql.Connection;
import java.sql.DriverManager;
public class producdb {
    private final String hostName="localhost:3306";
    private final String dbName="dabd";
    private final String username="root";
    private final String password="";
    private final String instance="";

    private String connectionURL="jdbc:mysql://"+hostName+"/"+dbName;

    public Connection getConnection() throws Exception {
      String url="jdbc:mysql://"+hostName+"/"+dbName;
      Class.forName("com.mysql.cj.jdbc.Driver");
      return DriverManager.getConnection(url,username,password);
    }

    public static void main(String[] args) {
      try {
        System.out.println(new producdb().getConnection());
        System.out.println("connect success");
      } catch (Exception e) {
        e.printStackTrace();
//        throw new RuntimeException(e);
      }
    }



}
