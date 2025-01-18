import "dart:io";
import "main.dart";

searchPharmacyMenu() {
  bool running = true;

  while (running) {
    // USER STATE
    stdout.write("\n▶ Enter Your state: ");
    String userState = stdin.readLineSync() ?? 'N/A';
    // USER MEDICINE
    stdout.write("\n▶ Enter Medicine Name: ");
    String userMedName = stdin.readLineSync() ?? 'N/A';
    // available medicines in the state
    Map<String, dynamic> statePharmacyData = {
      "texas": {
        "panadol": ["Vons Pharmacy", "Save Mart Pharmacy"],
      },
      "california": {
        "atorvastatin": ["Safeway", "Pavilions Pharmacy", "Lucky Pharmacy"],
      },
      "arizona": {
        "omeprazole": [
          "Bashas' Pharmacy",
          "Fry's Food and Drug",
          "Lucky Pharmacy"
        ],
      },
      "alabama": {
        "metoprolol": ["Walgreens", "CVS Pharmacy", "Rite Aid"],
      },
      "flordia": {
        "atorvastatin": [
          "Wegmans Food Markets",
          "Kinney Drugs",
          "Price Chopper Pharmacy"
        ],
      },
    };

    // for checking state
    if (statePharmacyData.containsKey(userState)) {
      // Cast the nested map to the correct type
      Map<String, List<String>> medicines = statePharmacyData[userState];
      if (medicines.containsKey(userMedName)) {
        // Print the list of pharmacies
        List<String> pharmacies = medicines[userMedName]!;
        print(
            "\n✅ The medicine '$userMedName' is available at the following pharmacies:");
        for (String pharmacy in pharmacies) {
          print("🔹 $pharmacy");
        }
      } else {
        print("\n ❌ Sorry Medicine NOT found in $userState ❌");
      }
    } else {
      print("❌ State NOT found ❌");
    }

    // Menu options after the search
    print(
        "\n▶ Please select an option: \n1. Search Again \n2. Back to Home \n3. Exit \n");
    stdout.write("Enter Your Choice (1/2/3): ");

    String userInput = stdin.readLineSync() ?? '';
    int? userChoice = int.tryParse(userInput);

    if (userChoice == null) {
      print("\n❌ Invalid input! Please enter a number between 1 and 3.\n");
      continue;
    }

    switch (userChoice) {
      case 1:
        // Search again: do nothing, loop continues
        break;
      case 2:
        mainMenu(); // Return to the main menu
        return; // Exit this function to avoid additional loops
      case 3:
        print(
            "\n👋 Thank you for using Affordable Medication Finder! Goodbye!\n");
        exit(0); // Terminate the program immediately
      default:
        print("\n❌ Invalid choice! Please enter a number between 1 and 3.\n");
        break;
    }
  }
}
