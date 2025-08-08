import java.util.Scanner; 

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        CityGuide guide = new CityGuide();

        while (true) {
            System.out.println("\n--- Smart City Tamil Nadu Guide ---");
            System.out.println("Select a city:");
            System.out.println("1. Chennai");
            System.out.println("2. Coimbatore");
            System.out.println("3. Madurai");
            System.out.println("4. Exit");
            System.out.print("Enter choice: ");
            int cityChoice = sc.nextInt();

            if (cityChoice == 4) {
                System.out.print("Thank you for using Smart City Guide :)");
                break;
            }

            System.out.println("\nWhat do you want to view?");
            System.out.println("1. Hotels");
            System.out.println("2. Restaurants");
            System.out.println("3. Tourist Places");
            System.out.print("Enter choice: ");
            int viewChoice = sc.nextInt();

            switch (viewChoice) {
                case 1:
                    guide.showHotels(cityChoice);
                    break;
                case 2:
                    guide.showRestaurants(cityChoice);
                    break;
                case 3:
                    guide.showTouristPlaces(cityChoice);
                    break;
                default:
                    System.out.println("Invalid option :(");
            }
        }
    }
}

