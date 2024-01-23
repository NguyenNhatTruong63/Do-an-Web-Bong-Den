package com.example.do_an_bong_den.services;
import beans.Order;
import beans.OrderDetail;

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
    public void insertOrder(Order order) throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        try (
            Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
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
                preparedStatement.setInt(7, order.getIdUser());

                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error during insert");
                e.printStackTrace();
            }
        } catch (SQLException  e) {
            System.out.println("Connection error");
            e.printStackTrace();
       }
    }
    public void insertOrderDetail(OrderDetail orderDetail) throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
            // Câu truy vấn SQL để thêm mới chi tiết đơn hàng
            String sql = "INSERT INTO orderDetail (orderId, productId, productName, quantity, unitPrice) VALUES (?, ?, ?, ?, ?)";

            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                // Thiết lập giá trị cho các tham số trong câu truy vấn
                preparedStatement.setInt(1, orderDetail.getOrderId());
                preparedStatement.setInt(2, orderDetail.getProductId());
                preparedStatement.setString(3, orderDetail.getProductName());
                preparedStatement.setInt(4, orderDetail.getQuantity());
                preparedStatement.setDouble(5, orderDetail.getUnitPrice());

                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error during insertOrderDetail");
                e.printStackTrace();
            }
        } catch (SQLException e) {
            System.out.println("Connection error");
            e.printStackTrace();
        }
    }
    public static void main(String[] args) throws ClassNotFoundException {
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


        // Gọi phương thức updateOrder
        orderDAO.insertOrder(order);

        // In thông báo khi hoàn thành
        System.out.println("Update order success!");
    }
}
