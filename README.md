# Affordable Medication Finder

Affordable Medication Finder is a Dart-based console application designed to bridge the gap between pharmacy owners and customers. It allows users to find pharmacies with the required medicines and offers pharmacy owners a platform to manage their inventories effectively.

---

## Features

### For Customers:
- **Search for Pharmacies:** Easily find pharmacies based on your location or required medicines.
- **Access Medicine Availability:** Check the availability of specific medicines.

### For Pharmacy Owners:
- **Register Your Pharmacy:** Register your pharmacy to make it visible to customers.
- **Login:** Secure login to manage your pharmacy details.
- **Manage Inventory:** 
  - Add new medicines.
  - Edit or update existing medicines.
  - Delete medicines from inventory.
  - View all available medicines.

### Additional Features:
- **User-Friendly Navigation:** Intuitive menus for seamless interaction.
- **Error Handling:** Validates user inputs for a smooth experience.

---

## Technologies Used

- **Dart Programming Language**
- **Command-Line Interface (CLI)**

---

## File Structure

1. **`main.dart`**
   - Entry point of the application.
   - Displays the main menu and handles navigation between customer and pharmacy owner functionalities.

2. **`register_pharmacy.dart`**
   - Handles pharmacy registration, login, and inventory management features.
   - Allows CRUD (Create, Read, Update, Delete) operations for medicines.

3. **`search_pharmacy.dart`**
   - Enables customers to search for pharmacies based on their location or specific medicines.

---

## How to Run the Application

### Prerequisites:
- Install [Dart SDK](https://dart.dev/get-dart) on your system.

### Steps:
1. Clone this repository to your local machine.
2. Navigate to the project directory in your terminal.
3. Run the following command to execute the application:
   ```bash
   dart main.dart

### Future Enhancements
 - Add a database or file system to persist user and pharmacy data.
 - Implement a GUI (Graphical User Interface) for a more interactive user experience.
 - Enable location-based pharmacy searches using real-world data.
