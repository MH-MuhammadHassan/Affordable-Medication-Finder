import "dart:io";
import "register_pharmacy.dart";
import "search_pharmacy.dart";

void main() {
  mainMenu();
}

void mainMenu() {
  bool running = true;

  while (running) {
    print("\n⚡ Welcome to Affordable Medication Finder! ⚡ \n");
    print(
        "▶ Please select an option: \n1. Search Pharmacy \n2. Pharmacy Owner \n3. Exit \n");
    stdout.write("Enter Your Choice (1/2/3): ");

    String userInput =
        stdin.readLineSync() ?? ''; // Read user input as a string
    int? userChoice = int.tryParse(userInput); // Safely parse input to integer

    if (userChoice == null) {
      // If the input is not a valid number
      print("\n❌ Invalid input! Please enter a number between 1 and 3.\n");
      continue; // Go back to the menu
    }

    switch (userChoice) {
      case 1:
        searchPharmacyMenu(); // Call the search pharmacy menu
        break;
      case 2:
        pharmacyRegMenu(); // Call the pharmacy registration menu
        break;
      case 3:
        print(
            "\n👋 Thank you for using Affordable Medication Finder! Goodbye!\n");
        exit(0); // Instant Exit
      // running = false; // Exit the program
      // break;
      default:
        print("\n❌ Invalid choice! Please enter a number between 1 and 3.\n");
        break; // Invalid choice; prompt again
    }
  }
}
