import "dart:io";

import "main.dart";

searchPharmacyMenu() {
  stdout.write("\n▶ Please Enter Medicine Name: ");

  String userMedName = stdin.readLineSync() ?? '';
  // show pharmacy where medicine available
  print("$userMedName available at Munaf Pharmacy");
  mainMenu();

  // print(
  //     "\n▶ Please select an option: \n1. Search Pharmacy \n2. Back To Home"); // \n3. Exit \n
  // stdout.write("Enter Your Choice 1/2/3: ");
  // int user_choice = int.parse(stdin.readLineSync()!);

  // bool condition = true;
  // while (condition) {
  //   if (user_choice == 1) {
  //     searchPharmacyMenu();
  //   } else if (user_choice == 2) {
  //     mainMenu();
  //   }
  // }
}
