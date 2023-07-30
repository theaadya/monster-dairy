# monster-dairy
Import the sql dump to your system
Run app.py
Visit http://localhost:5002/index 

## Introduction
This project is a web application built using Python, Flask, MySQL, HTML, CSS, and JavaScript. It allows users to buy milk and milk products from the Dairy Site. The user 
This document provides a step-by-step guide on how to set up the application on your local machine, including downloading the SQL dump and running the application.

## Installation and Setup

### 1. Clone the Repository

Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/theaadya/monster-dairy
cd monster-dairy
mysqldump -u root -p monster_dairy > <path to sqldump.sql>
flask run
