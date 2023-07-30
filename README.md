# Monster Dairy 

## Introduction
This project is a web application built using Python, Flask, MySQL, HTML, CSS, and JavaScript. It allows users to buy milk and milk products from the Dairy Site.

### User Side
The user can Register for a New Account or Login from dummy account []

The are different features available for the user:
- Add item to Cart
- Checkout Cart
- Apply for Subscription
- Apply for Membership
- Cancel your order

### Admin Side
Only the administrators can access the Admin Page. They can then view the Sales, Products, Outlets, Inventory, and Staff personal information.

The admin login is (Username, Password):
```bash
Aadya
aadya_0105
```

This document provides a step-by-step guide on how to set up the application on your local machine, including downloading the SQL dump and running the application.

## Installation and Setup

### 1. Clone the Repository

Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/theaadya/monster-dairy
cd monster-dairy
```

### 2. Set Up MySQL Database

Import the MySQL dump file to your system by running the following command in your cmd. 
Enter your MySQL password when prompted. 
Username by default is root. 

```bash
mysqldump -u your_username -p monster_dairy > "path to sqldump.sql"
```

### 3. Run the aplication.

```bash
flask run
```

### 4. Access the Application

Open your web browser and visit http://127.0.0.1:5002 or http://localhost:5002 to access the web application.
