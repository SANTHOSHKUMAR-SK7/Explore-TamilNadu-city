import java.sql.*;

public class CityGuide {

    public void showHotels(int cityId) {
        try (Connection con = DBConnection.getConnection()) {
            String sql = "SELECT name, address, phone FROM hotels WHERE city_id = " + cityId;
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            System.out.println("\nHotels:");
            while (rs.next()) {
                System.out.println("- " + rs.getString("name") +
                        " | " + rs.getString("address") +
                        " | " + rs.getString("phone"));
            }
        } catch (Exception e) {
            System.out.println("Error fetching hotels: " + e.getMessage());
        }
    }

    // Show restaurants in a city
    public void showRestaurants(int cityId) {
        try (Connection con = DBConnection.getConnection()) {
            String sql = "SELECT name, cuisine, address, phone FROM restaurants WHERE city_id = " + cityId;
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            System.out.println("\nRestaurants:");
            while (rs.next()) {
                System.out.println("- " + rs.getString("name") +
                        " (" + rs.getString("cuisine") + ")" +
                        " | " + rs.getString("address") +
                        " | " + rs.getString("phone"));
            }
        }
    }

    // Show tourist places in a city
    public void showTouristPlaces(int cityId) {
        try (Connection con = DBConnection.getConnection()) {
            String sql = "SELECT name, description FROM tourist_places WHERE city_id = " + cityId;
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            System.out.println("\nTourist Places:");
            while (rs.next()) {
                System.out.println("- " + rs.getString("name") +
                        " | " + rs.getString("description"));
            }
        } catch (Exception e) {
            System.out.println("Error fetching tourist places: " + e.getMessage());
        }
    }
}

