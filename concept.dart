void main() {
  Map<String, dynamic> user = {
    "pharmacyName": "",
    "pharmacyEmail": "",
    "pharmacyPassword": "",
    "pharmacyAddress": "",
    "availableMedicines": []
  };

  if (user["availableMedicines"] is List &&
      user["availableMedicines"].isEmpty) {
    print("The availableMedicines list is empty.");
  } else {
    print("The availableMedicines list is not empty.");
  }
}
