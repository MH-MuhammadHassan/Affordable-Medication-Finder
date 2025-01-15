import "dart:io";

pharmacyRegMenu() {
  print("\n⚡ Welcome to Pharmacy Registeration! ⚡");
  print(
      "\n▶ Please select an option: \n1. New Registration \n2. Login \n3. Exit");

  stdout.write("Enter Your Choice: ");
  int user_choice = int.parse(stdin.readLineSync()!);
  bool condition = true;
  while (condition) {
    if (user_choice == 1) {
      pharmacyRegisteration();
    } else if (user_choice == 2) {
      pharmacyLogin();
    } else if (user_choice == 3) {
      condition = false;
    }
  }
}

// Registration Function
pharmacyRegisteration() {
  print("\nWe welcome you \n");
  // User Name
  stdout.write("Enter your pharmacy name: ");
  String pharmacyName = stdin.readLineSync() ?? '';
  // User Email
  stdout.write("Enter email: ");
  String pharmacyEmail = stdin.readLineSync() ?? '';
  // User Password
  stdout.write("Enter password: ");
  String pharmacyPassword = stdin.readLineSync() ?? '';
  // Pharmacy Address
  stdout.write("Enter your pharmacy address: ");
  String pharmacyAddress = stdin.readLineSync() ?? ''; // Take in List/Map
  // Available Medicines
  stdout.write("What Medicines do you have?: "); // Take in List/Map
  String availableMedicines = stdin.readLineSync() ?? '';

  List<Map<String, String>> pharmacyInfo = [
    {
      "name": pharmacyName,
      "email": pharmacyEmail,
      "password": pharmacyPassword,
      "address": pharmacyAddress,
      "availablemedicines": availableMedicines,
    }
  ];

  print(pharmacyInfo);
  print("Registration Successful, Please Login");
}

// Login Function
pharmacyLogin() {
  print("Welcome Back");
  // User Email
  stdout.write("Enter your email: ");
  String userEmail = stdin.readLineSync() ?? '';
  // User Password
  stdout.write("Enter your password: ");
  String userPassword = stdin.readLineSync() ?? '';
  // if(userEmail==userDetails)

  print("Welcome Back $userEmail & $userPassword");
}

// show crud
showCrud() {
  print(
      "▶ Please select an option: \n1. View All Medicines \n2. Add Medicine  \n3. Edit Medicine \n4. Exit");
  stdout.write("Enter Your Choice 1/2/3: ");
  int user_choice = int.parse(stdin.readLineSync()!);
  bool condition = true;
  while (condition) {
    if (user_choice == 1) {
      viewMedicine();
    } else if (user_choice == 2) {
      addMedicine();
    } else if (user_choice == 3) {
      editMedcine();
    } else if (user_choice == 4) {
      deleteMedicine();
    }
    condition = false;
  }
}

// View Medicine
viewMedicine() {}

// Add Medicines
addMedicine() {}

// Edit-Update Medicine
editMedcine() {}

// Delete Medicine
deleteMedicine() {}
