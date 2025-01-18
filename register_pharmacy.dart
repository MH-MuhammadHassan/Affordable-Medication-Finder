import "dart:io";

import "main.dart";

List<Map<String, dynamic>> userDetails =
    []; // Global list to store user details

// userDetails[0]["availableMedicines"]

// Create a map to store a single user's data
Map<String, dynamic> user = {
  "pharmacyName": "",
  "pharmacyEmail": "",
  "pharmacyPassword": "",
  "pharmacyAddress": "",
  "availableMedicines": []
};

// Menu Function
void pharmacyRegMenu() {
  bool running = true;

  while (running) {
    print("\n⚡ Welcome to Pharmacy Registration! ⚡");
    print(
        "\n▶ Please select an option: \n1. New Registration \n2. Login \n3. Back To Home \n4. Exit");
    stdout.write("Enter Your Choice (1/2/3/4): ");

    String userInput =
        stdin.readLineSync() ?? ''; // Read user input as a string
    int? userChoice = int.tryParse(userInput); // Safely parse input to integer

    if (userChoice == null) {
      print("\n❌ Invalid input! Please enter a number between 1 and 4.\n");
      continue;
    }

    switch (userChoice) {
      case 1:
        pharmacyRegisteration();
        break;
      case 2:
        pharmacyLogin();
        break;
      case 3:
        mainMenu();
        break;
      case 4:
        print(
            "\n👋 Thank you for using Affordable Medication Finder! Goodbye!\n");
        exit(0);
      default:
        print("\n❌ Invalid choice! Please enter a number between 1 and 4.\n");
    }
  }
}

// Registration Function
void pharmacyRegisteration() {
  print("\nWe welcome you to our platform 😊\n");

  // Pharmacy Name
  stdout.write("Enter your pharmacy name: ");
  user["pharmacyName"] = stdin.readLineSync() ?? '';

  // Pharmacy Email
  stdout.write("Enter email: ");
  user["pharmacyEmail"] = stdin.readLineSync() ?? '';

  // Pharmacy Password
  stdout.write("Enter password: ");
  user["pharmacyPassword"] = stdin.readLineSync() ?? '';

  // Pharmacy Address
  stdout.write("Enter your pharmacy address: ");
  user["pharmacyAddress"] = stdin.readLineSync() ?? '';

  // Available Medicines
  stdout.write("Enter available medicines (comma-separated): ");
  String medicinesList = stdin.readLineSync() ?? '';
  user["availableMedicines"] =
      medicinesList.split(",").map((e) => e.trim()).toList();

  // Add the user data to the global list
  userDetails.add(user);
  print("\n✅ Registration Successful!: ${user['pharmacyName']} \n");
  showCrud();
  // print(userDetails);
}

// Login Function
void pharmacyLogin() {
  print("\n=== Pharmacy Login ===");

  if (userDetails.isEmpty) {
    print("\n❌ No users are registered yet. Please register first.\n");
    return;
  }

  // User Email
  stdout.write("Enter your email: ");
  String loginEmail = stdin.readLineSync() ?? '';

  // User Password
  stdout.write("Enter your password: ");
  String loginPassword = stdin.readLineSync() ?? '';

  // Validate login credentials
  bool found = false;
  for (var user in userDetails) {
    if (user["pharmacyEmail"] == loginEmail &&
        user["pharmacyPassword"] == loginPassword) {
      found = true;
      print("\n✅ Login Successful! Welcome back, ${user['pharmacyName']}.");
      showCrud();

      break;
    }
  }

  if (!found) {
    print("\n❌ Invalid email or password. Please try again.\n");
  }
}

void main() {
  pharmacyRegMenu();
}

// show crud
showCrud() {
  bool running = true;

  while (running) {
    print(
        "▶ Please select an option: \n1. View All Medicines \n2. Add Medicine  \n3. Edit Medicine \n4. Delete Medicine \n5. Back To Home \n6. Exit");
    stdout.write("Enter Your Choice 1/2/3/4/5/6: ");

    String userInput =
        stdin.readLineSync() ?? ''; // Read user input as a string
    int? userChoice = int.tryParse(userInput); // Safely parse input to integer

    if (userChoice == null) {
      print("\n❌ Invalid input! Please enter a number between 1 and 4.\n");
      continue;
    }

    switch (userChoice) {
      case 1:
        viewMedicine();
        break;
      case 2:
        addMedicine();
        break;
      case 3:
        editMedcine();
        break;
      case 4:
        deleteMedicine();
        ();
        break;
      case 5:
        mainMenu();
        ();
        break;
      case 6:
        print(
            "\n👋 Thank you for using Affordable Medication Finder! Goodbye!\n");
        exit(0);
      default:
        print("\n❌ Invalid choice! Please enter a number between 1 and 4.\n");
    }
  }
}

// View Medicine
viewMedicine() {
  print("\nAvailable Medicines: ${userDetails[0]["availableMedicines"]} \n");
}

// Add Medicines
addMedicine() {
  // Prompt for Add New Medicine
  stdout.write("\nEnter New medicines (comma-separated): ");
  List<String> userAddMedicines =
      stdin.readLineSync()!.split(',').map((e) => e.trim()).toList();

  // Collect new medicines that are not already in the list
  List<String> newMedicines = [];
  for (var medicine in userAddMedicines) {
    if (!user["availableMedicines"].contains(medicine)) {
      newMedicines.add(medicine);
    } else {
      print("\n$medicine is already in the list!");
    }
  }

  // Add all new medicines to the user's availableMedicines list
  if (newMedicines.isNotEmpty) {
    user["availableMedicines"].addAll(newMedicines);
    print("\n✅ New Medicines Added: $newMedicines");
  } else {
    print("\nNo new medicines were added.");
  }
}

// Edit-Update Medicine Function
editMedcine() {
  // Check if availableMedicines is empty
  if (user["availableMedicines"] is List &&
      user["availableMedicines"].isEmpty) {
    print("The availableMedicines list is empty. Nothing to edit.");
  } else {
    // Print available medicines
    print("Current Medicines: ${user["availableMedicines"].join(', ')}");

    // Prompt user to enter the medicine name to edit
    stdout.write("\nEnter the medicine name you want to edit: ");
    String oldMedicineName = stdin.readLineSync()!.trim();

    // Check if the medicine exists
    if (user["availableMedicines"].contains(oldMedicineName)) {
      // Prompt user for the new name
      stdout.write("Enter the new name for the medicine: ");
      String newMedicineName = stdin.readLineSync()!.trim();

      // Update the medicine name in the list
      int index = user["availableMedicines"].indexOf(oldMedicineName);
      user["availableMedicines"][index] = newMedicineName;

      print("✅ Medicine updated: $oldMedicineName -> $newMedicineName");
    } else {
      print("❌ Medicine not found: $oldMedicineName");
    }
  }

// display the updated medicine
  viewMedicine();
}

// Delete Medicine Function
deleteMedicine() {
  // Check if availableMedicines is empty
  if (user["availableMedicines"] is List &&
      user["availableMedicines"].isEmpty) {
    print("The availableMedicines list is empty. Nothing to delete.");
  } else {
    // Print available medicines
    print("Current Medicines: ${user["availableMedicines"].join(', ')}");

    // Prompt user to enter the medicine name to delete
    stdout.write("\nEnter the medicine name you want to remove: ");
    String removeMedicineName = stdin.readLineSync()!.trim();

    // Attempt to remove the medicine
    if (user["availableMedicines"].remove(removeMedicineName)) {
      print("✅ Medicine removed: $removeMedicineName");
    } else {
      print("❌ Medicine not found.");
    }
  }

  viewMedicine();
}
