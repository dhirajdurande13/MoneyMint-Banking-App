package Bank.db;

import java.sql.Connection;
import java.sql.SQLException;
import org.postgresql.ds.PGSimpleDataSource;

public class connection1 {
    private static final String url = "jdbc:postgresql://moneymint-4095.7s5.aws-ap-south-1.cockroachlabs.cloud:26257/defaultdb?sslmode=verify-full";
    private static final String user = "dhirajdurande13";
    private static final String password = "OSrL58LgPLCLcJN81XcIrw";

    public static Connection getConnection() {
        PGSimpleDataSource dataSource = new PGSimpleDataSource();
        dataSource.setUrl(url);
        dataSource.setUser(user);
        dataSource.setPassword(password);

        try {
            Connection conn = dataSource.getConnection();
            System.out.println("Connection established successfully!");
            return conn;
        } catch (SQLException e) {
            // Handle any potential SQLException
            e.printStackTrace();
            return null;
        }
    }
}
