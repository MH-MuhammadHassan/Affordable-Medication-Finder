import 'dart:io';

void main() {
  stdout.write("Please Enter Your State: ");
  String userState = stdin.readLineSync()!.trim().toLowerCase();
  stdout.write("Please Enter Medicine Name: ");
  String userMedName = stdin.readLineSync()!.trim().toLowerCase();

  Map<String, Map<String, Map<String, String>>> search = {
    "texas": {
      "panadol": {"vons pharmacy": "20", "save mart pharmacy": "15"},
    },
  };

  // Searching
  if (search.containsKey(userState)) {
    var medicines = search[userState]!;
    if (medicines.containsKey(userMedName)) {
      var pharmacies = medicines[
          userMedName]!; // {"vons pharmacy": "200", "save mart pharmacy": "150"},
      print(
          "\n✅ The medicine '$userMedName' is available at the following pharmacies:");
      //  Iterate and print each pharmacy with the price
      pharmacies.forEach((pharmacy, price) {
        print("\n▶ $pharmacy ➡ 💲$price.");
      });
    } else {
      print("Medicine NOT FOUND ❌");
    }
  } else {
    print("STATE NOT FOUND ❌");
  }
}
