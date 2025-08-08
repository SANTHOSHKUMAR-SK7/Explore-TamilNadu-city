import java.sql.*;

public class DBConnection {
    public static Connection getConnection() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/smartcity_tn";
        String user = "root";
        String pass = "7077";
        return DriverManager.getConnection(url, user, pass);
    }
}
