<%@ page import="com.example.do_an_bong_den.db.JDBIConnector" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.do_an_bong_den.beans.Product" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 12/12/2023
  Time: 21:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>text</title>
</head>
<body>
  <% JDBIConnector Dao = new JDBIConnector();
    List<Product> list = Dao.getAllProduct();
    for( Product product: list) {
  %>

  <p>
    <%= product.getName()
    %>
  </p>
  <p>
    <%= product.getImg() %>
  </p>
  <p>
    <%= product.getPrice() %>
  </p>
  <p>
    <%= product.getDescription() %>
  </p>
  <p>
    <%= product.getNameBrand() %>
  </p>

<% }%>


</body>
</html>
