package com.example.do_an_bong_den.services;
import beans.Order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderDAO {
    // Thay đổi các thông tin kết nối dưới đây
    private static final String URL = "jdbc:mysql://localhost:3306/dabd";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    // Hàm thêm đơn hàng vào cơ sở dữ liệu
    public void addOrder(Order order) {
        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
            // Câu truy vấn SQL để chèn đơn hàng
            String sql = "INSERT INTO orders (idUser, fullName, email, phoneNumber, address, note, orderDate, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                // Thiết lập giá trị cho các tham số trong câu truy vấn
                preparedStatement.setInt(1, order.getIdUser());
                preparedStatement.setString(2, order.getFullName());
                preparedStatement.setString(3, order.getEmail());
                preparedStatement.setInt(4, order.getPhoneNumber());
                preparedStatement.setString(5, order.getAddress());
                preparedStatement.setString(6, order.getNote());
                preparedStatement.setString(7, order.getOrderDate());
                preparedStatement.setString(8, order.getStatus());


                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//    public boolean processPayment(int orderId, String paymentMethod) {
//        return true;
//    }
//    public void updateOrderStatus(int orderId, String newStatus) {
//        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
//            // Câu truy vấn SQL để cập nhật trạng thái đơn hàng
//            String sql = "UPDATE orders SET status = ? WHERE idOrder = ?";
//
//            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
//                // Thiết lập giá trị cho các tham số trong câu truy vấn
//                preparedStatement.setString(1, newStatus);
//                preparedStatement.setInt(2, orderId);
//
//                preparedStatement.executeUpdate();
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
}
