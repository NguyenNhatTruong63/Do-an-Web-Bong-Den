package database;

import beans.Product;
import org.jdbi.v3.core.Jdbi;
import com.mysql.cj.jdbc.MysqlDataSource;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class JDBIConnector {
  private static Jdbi jdbi;

//  tao ket noi
   static void makeConnect() {
    MysqlDataSource dataSource = new MysqlDataSource();
    dataSource.setURL("jdbc:mysql://" + DBProperties.getDbHost() + ":" + DBProperties.getDbPort() + "/"
      + DBProperties.getDbName());
    dataSource.setUser(DBProperties.getUsername());
    dataSource.setPassword(DBProperties.getPassword());
    try {
      dataSource.setUseCompression(true);
      dataSource.setAutoReconnect(true);

    } catch (SQLException throwables) {
      throwables.printStackTrace();
      throw new RuntimeException(throwables);
    }
    jdbi = Jdbi.create(dataSource);

  }

  private JDBIConnector() {

  }

  public static Jdbi get() {
    if (jdbi == null)
      makeConnect();
    return jdbi;


  }


}
