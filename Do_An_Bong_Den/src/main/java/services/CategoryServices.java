package services;

import beans.Category;
import beans.Product;
import database.JDBIConnector;
import org.jdbi.v3.core.Handle;
import org.jdbi.v3.core.mapper.reflect.BeanMapper;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryServices {
  private static CategoryServices instance;

  public CategoryServices(){
  }

  public static CategoryServices getInstance() {
    if (instance == null) {
      instance = new CategoryServices();
    }
    return instance;
  }
  public List<Category> getCategoryList() {
    List<Category> categoryList = new ArrayList<>();

    try (Handle handle = JDBIConnector.get().open()) {
      handle.registerRowMapper(BeanMapper.factory(Category.class));
      categoryList = handle.createQuery("SELECT * FROM categories")
        .mapTo(Category.class)
        .list();
    } catch (Exception e) {
      e.printStackTrace();
    }

    return categoryList;

  }
  public static void main(String[] args) throws SQLException {
    CategoryServices categoryServices = new CategoryServices();
    System.out.println(categoryServices.getCategoryList());

  }
}
