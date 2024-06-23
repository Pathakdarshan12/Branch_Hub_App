# BranchHub Inventory Management App

<img src="" style="height:100px; width=100px">

## Table of Contents
1. [Introduction](#introduction)
2. [Working](#working)
3. [Features](#features)
4. [Requirements](#requirements)
5. [Installation](#installation)
6. [Usage](#usage)
7. [Database Setup](#database-setup)
8. [File Structure](#file-structure)
9. [Screenshots](#screenshots)
10. [License](#license)

## Introduction
BranchHub Inventory Management App is a graphical user interface (GUI) application designed to help businesses manage their inventory effectively. Developed using Python's TkInter module for the GUI and MySQL for the backend database, this application provides a robust solution for inventory management, allowing users to add, update, delete, and view inventory items in an easy-to-use interface.

## Working
The BranchHub Inventory Management App connects to a MySQL database where all the inventory data is stored. The application interacts with the database using SQL queries to perform various operations such as inserting new records, updating existing records, deleting records, and retrieving data to display in the GUI. 

Here's a brief overview of how the application works:
1. **Database Connection:** When the application starts, it connects to the MySQL database using the credentials provided in the `config.py` file.
2. **User Interaction:** Users interact with the application through a series of forms and buttons provided by the TkInter GUI.
3. **CRUD Operations:** Based on user inputs, the application performs Create, Read, Update, and Delete (CRUD) operations on the inventory database.
4. **Data Display:** The application retrieves inventory data from the database and displays it in a table format within the GUI.

## Features
- Add new inventory items
- Update existing inventory items
- Delete inventory items
- View all inventory items in a tabular format
- Search for inventory items
- Intuitive and user-friendly interface

## Requirements
- Python
- TkInter module (comes pre-installed with Python)
- MySQL server
- MySQL Connector for Python (`mysql-connector-python`)

## Installation
1. **Clone the repository:**
   ```sh
   git clone 
   cd Branch_Hub_App
   ```

2. **Install required Python packages:**
   ```sh
   pip install mysql-connector-python
   ```

3. **Set up the MySQL database:**
   Follow the instructions in the [Database Setup](#database-setup) section.

4. **Run the application:**
   ```sh
   python app.py
   ```

## Usage
1. **Launch the application** by running the `app.py` script.
2. **Main Screen:** The main screen allows you to view the current inventory in a table.
3. **Add Item:** Click the "Add Item" button to open a form for adding new inventory items.
4. **Update Item:** Select an item from the table and click the "Update Item" button to modify its details.
5. **Delete Item:** Select an item from the table and click the "Delete Item" button to remove it from the inventory.
6. **Search Item:** Use the search bar to find specific items in the inventory.

## Database Setup
1. **Create Database:**
   ```sql
   CREATE DATABASE branchhub_inventory;
   ```

2. **Create Table:**
   
    run Database_Structure.sql file for the DataBase Structure
   

3. **Configure Database Connection:**
   Edit the `config.py` file with your MySQL database credentials:
   ```python
   db_config = {
       'user': 'yourusername',
       'password': 'yourpassword',
       'host': 'localhost',
       'database': 'branchhub_inventory'
   }
   ```

## File Structure
```
branchhub-inventory/
│
├── app.py            # Main application script
├── config.py         # Database configuration
├── requirements.txt  # Python package requirements
├── README.md         # Readme file
└── assets/           # Directory for images and other assets
```

## Screenshots
![Main Screen](screenshots/main_screen.png)
*Main Screen*

![Add Item](screenshots/add_item.png)
*Add Item Form*

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.