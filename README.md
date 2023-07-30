# Monster Dairy 

## Introduction
The Dairy Site is a web application built using Python, Flask, MySQL, HTML, CSS, and JavaScript. It provides users with the ability to purchase milk and milk products online. 

The primary goal of this project is to create a simulated online retail store focused on dairy products, offering a seamless shopping experience to customers.

You can access the site from here: http://theaadya.pythonanywhere.com/
(free hosting, the site might break, no promises)

### User Side

The user can Register for a New Account or,
Login from dummy account 
```bash
xyz
456
```

The are different features available for the user:
- Browse a wide range of products
- Add item to Cart
- Checkout Cart
- Track your Order
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

Here's a step-by-step guide on how to set up the application on your local machine, including downloading the SQL dump and running the application.

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

Open your web browser and visit http://127.0.0.1:5000 or http://localhost:5000 to access the web application.

## Contributing

Contributions are welcome! If you have any ideas, suggestions, or improvements, please submit a pull request or open an issue on the GitHub repository.
