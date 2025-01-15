import "dart:io";
import "register_pharmacy.dart";
import "seacrch_pharmacy.dart";

void main() {
  mainMenu();
}

mainMenu() {
  print("⚡ Welcome to Affordable Medication Finder! ⚡ \n");
  print(
      "▶ Please select an option: \n1. Search Pharmacy \n2. Register Pharmacy \n3. Exit \n");
  stdout.write("Enter Your Choice 1/2/3: ");
  int user_choice = int.parse(stdin.readLineSync()!);
  bool condition = true;
  while (condition) {
    if (user_choice == 1) {
      searchPharmacyMenu();
    } else if (user_choice == 2) {
      pharmacyRegisteration();
    } else if (user_choice == 3) {
      condition = false;
    }
    condition = false;
  }
}
