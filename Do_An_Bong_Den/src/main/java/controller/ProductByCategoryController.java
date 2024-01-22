package controller;


//import services.ProductServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductController", value = "/category")
public class ProductByCategoryController extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//    List<Category> data = CategoryServices.getInstance().getCategoryList();
//    req.setAttribute("category",data);



    req.getRequestDispatcher("category.jsp").forward(req,resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

  }
}