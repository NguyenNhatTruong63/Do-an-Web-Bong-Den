
package services;

import beans.Order;
import database.JDBIConnector;
import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.mapper.reflect.BeanMapper;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderServices {
    private static OrderServices instance;

    public OrderServices(){
    }

    public static OrderServices getInstance() {
        if (instance == null) {
            instance = new OrderServices();
        }
        return instance;
    }
    public List<Order> getOrderList() {
        List<Order> orderList = new ArrayList<>();

        try (Handle handle = JDBIConnector.get().open()) {
            handle.registerRowMapper(BeanMapper.factory(Order.class));
            orderList = handle.createQuery("SELECT * FROM order")
                    .mapTo(Order.class)
                    .list();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return orderList;

    }
    public String nameOrder(String id) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT name FROM order WHERE id = ?")
                    .bind(0, id)
                    .mapTo(String.class)
                    .findOne()
                    .orElse(null);
        });
    }

    public static void main(String[] args) throws SQLException {
        OrderServices orderServices = new OrderServices();
//    System.out.println(categoryServices.getCategoryList());
        System.out.println(orderServices);

    }

}