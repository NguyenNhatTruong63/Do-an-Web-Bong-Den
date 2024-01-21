package com.example.do_an_bong_den.services;
import beans.Order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class OrderDAO {
    // Thay đổi các thông tin kết nối dưới đây
    private static final String URL = "jdbc:mysql://localhost:3306/dabd";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    // Hàm thêm đơn hàng vào cơ sở dữ liệu
    public void insertOrder(Order order) {
        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
            // Câu truy vấn SQL để thêm mới đơn hàng
            String sql = "INSERT INTO orders (fullName, email, phoneNumber, address, note, orderDate, status, idUser) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                // Thiết lập giá trị cho các tham số trong câu truy vấn
                preparedStatement.setString(1, order.getFullName());
                preparedStatement.setString(2, order.getEmail());
                preparedStatement.setInt(3, order.getPhoneNumber());
                preparedStatement.setString(4, order.getAddress());
                preparedStatement.setString(5, order.getNote());
                preparedStatement.setString(6, order.getOrderDate());
                preparedStatement.setString(7, order.getStatus());
                preparedStatement.setInt(8, order.getIdUser());

                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error during insert");
                e.printStackTrace();
            }
        } catch (SQLException e) {
            System.out.println("Connection error");
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        // Tạo một đối tượng OrderDAO
        OrderDAO orderDAO = new OrderDAO();

        // Tạo một đối tượng Order với dữ liệu giả định
        Order order = new Order();
        order.setIdUser(1);
        order.setFullName("Nguyen Van A");
        order.setEmail("nguyenvana@example.com");
        order.setPhoneNumber(123456789);
        order.setAddress("123 Main Street");
        order.setNote("Special note");
        order.setOrderDate("2024-01-01");
        order.setStatus("Processing");

        // Gọi phương thức updateOrder
        orderDAO.insertOrder(order);

        // In thông báo khi hoàn thành
        System.out.println("Update order success!");
    }
}
