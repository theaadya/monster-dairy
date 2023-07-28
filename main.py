from flask import Flask, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re
import datetime
from flask import flash

app = Flask(__name__)

app.secret_key = 'aadyaditi'

app.config['MYSQL_HOST'] = 'theaadya.mysql.pythonanywhere-services.com'
app.config['MYSQL_USER'] = 'theaadya'
app.config['MYSQL_PASSWORD'] = 'trialpassword'
app.config['MYSQL_DB'] = 'theaadya$monster_dairy_db'

mysql = MySQL(app)

@app.route('/')
@app.route('/index', methods =['GET', 'POST'])
def index():
	msg = ''
	return render_template('index.html', msg = msg)

@app.route('/customer', methods =['GET', 'POST'])
def customer():
	msg = ''
	if 'loggedin' in session:
		return render_template('customer.html', msg = msg)
	return render_template('login.html', msg = msg)

@app.route('/adminindex', methods =['GET', 'POST'])
def adminindex():
	msg = ''
	if request.method == 'POST' and 'query' in request.form:
		query = request.form['query']
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute(query)
		mysql.connection.commit()
		return render_template('adminindex.html', msg = msg)
	return render_template('adminindex.html', msg = msg)

@app.route('/login', methods =['GET', 'POST'])
def login():
	msg = ''
	if request.method == 'POST' and 'username' in request.form and 'password' in request.form:
		username = request.form['username']
		password = request.form['password']
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT * FROM customer WHERE username = % s AND password = % s', (username, password, ))
		account = cursor.fetchone()
		if account:
			session['loggedin'] = True
			session['id'] = account['CustomerID']
			session['username'] = account['username']
			msg = 'Logged in successfully !'
			return render_template('customer.html', msg = msg)
		else:
			msg = 'Incorrect username / password !'
	return render_template('login.html', msg = msg)

@app.route('/admin', methods =['GET', 'POST'])
def admin():
	msg = ''
	if request.method == 'POST' and 'username' in request.form and 'password' in request.form:
		username = request.form['username']
		password = request.form['password']
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT * FROM admin WHERE username = % s AND password = % s', (username, password, ))
		account = cursor.fetchone()
		if account:
			session['adminin'] = True
			session['aid'] = account['AdminID']
			session['username'] = account['username']
			msg = 'Admin Logged in successfully !'
			return render_template('adminindex.html', msg = msg)
		else:
			msg = 'Incorrect username / password !'
	return render_template('admin.html', msg = msg)

@app.route('/logout')
def logout():
    session.pop('loggedin', None)
    session.pop('id', None)
    session.pop('username', None)
    return redirect(url_for('index'))

@app.route('/adminlogout')
def adminlogout():
    session.pop('adminin', None)
    session.pop('aid', None)
    session.pop('username', None)
    return redirect(url_for('index'))

@app.route('/register', methods =['GET', 'POST'])
def register():
	msg = ''
	if request.method == 'POST' and 'username' in request.form and 'password' in request.form and 'email' in request.form and 'address' in request.form and 'city' in request.form and 'postalcode' in request.form and 'accountnum' in request.form and 'age' in request.form and 'state' in request.form:
		username = request.form['username']
		password = request.form['password']
		email = request.form['email']
		accountnum = request.form['accountnum']
		address = request.form['address']
		number = request.form['number']
		city = request.form['city']
		state = request.form['state']
		age = request.form['age']
		postalcode = request.form['postalcode']
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT * FROM customer WHERE username = %s', (username,))
		account = cursor.fetchone()
		if account:
			msg = 'Account already exists !'
		elif not re.match(r'[^@]+@[^@]+\.[^@]+', email):
			msg = 'Invalid email address !'
		elif not re.match(r'[A-Za-z0-9]+', username):
			msg = 'name must contain only characters and numbers !'
		else:
			addresslist = address.split()
			apt_num = addresslist[0]
			street_name = addresslist[1]
			street_number = addresslist[2]
			cursor.execute("SELECT COUNT(*) FROM customer")
			row_count = 300 + cursor.fetchone()['COUNT(*)']
			cursor.execute('INSERT INTO customer VALUES (%s, % s, % s, % s, % s, % s, % s, % s, % s, % s, % s, % s)', (row_count, username, accountnum, age, street_number, street_name, apt_num, city, state, postalcode, email, password))
			# cursor.execute('INSERT INTO customer_phone VALUES (NULL, % s)', (number))
			mysql.connection.commit()
			msg = 'You have successfully registered !'
	elif request.method == 'POST':
		msg = 'Please fill out the form !'
	return render_template('register.html', msg = msg)

@app.route("/shop", methods=['GET', 'POST'])
def shop():
    if 'loggedin' in session:
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM item WHERE ItemID >= 1 and ItemID <= 30')
        account = cursor.fetchall()
        if request.method == 'POST':
            item_id = request.form['item_id']
            item_price = request.form['item_price']
            try:
                cursor.execute('INSERT INTO cart_item (CustomerID, CartID, ItemID, TotalQuantity, Price) VALUES (%s, %s, %s, %s, %s) ON DUPLICATE KEY UPDATE TotalQuantity = TotalQuantity + %s, Price = Price + %s', (session['id'], session['id'], item_id, 1, item_price, 1, item_price))
                mysql.connection.commit()
                flash('Item added to cart successfully', 'success')
                return redirect(url_for('shop'))
            except MySQLdb.OperationalError as error:
                flash(str(error), 'error')
        return render_template("shop.html", account = account)
    return redirect(url_for('login'))

@app.route("/browse", methods=['GET', 'POST'])
def browse():
	cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
	cursor.execute('SELECT * FROM item WHERE ItemID >= 1 and ItemID <= 30')
	account = cursor.fetchall()
	return render_template("browse.html", account = account)

@app.route("/cart")
def cart():
	if 'loggedin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT SUM(TotalQuantity), SUM(price) FROM cart_item WHERE customerID = % s', (session['id'], ))
		account = cursor.fetchone()
		return render_template("cart.html", account = account)
	return redirect(url_for('login'))

@app.route('/payment', methods =['GET', 'POST'])
def payment():
	if 'loggedin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT SUM(TotalQuantity), SUM(price) FROM cart_item WHERE customerID = % s', (session['id'], ))
		account = cursor.fetchone()
		if request.method == 'POST':
			price = request.form['price']
			cursor.execute('INSERT INTO Orders VALUES (NULL, "Net Banking", "On the Way", %s)', (price,))
			orderID = cursor.lastrowid
			cursor.execute('INSERT INTO cart VALUES (%s, NULL, 1, %s)', (session['id'], price))
			today = datetime.datetime.now().strftime('%Y-%m-%d')
			cursor.execute('INSERT INTO customer_order VALUES (%s, %s, %s, %s)', (orderID, session['id'], session['id'], today))
			mysql.connection.commit()
			return redirect(url_for('profile'))
		return render_template("payment.html", account = account)
	return redirect(url_for('login'))

@app.route("/profile", methods=['GET', 'POST'])
def profile():
	if 'loggedin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute('SELECT customerID,  username, account_num, age, street_number, street_name, apt_number, city, state, zip, EmailID,  password FROM customer WHERE customerID = % s', (session['id'], ))
		account = cursor.fetchone()
		cursor.execute('SELECT phone_num FROM customer_phone WHERE customerID = % s', (session['id'], ))
		phone = cursor.fetchone()
		cursor.execute("""SELECT Subscription.*, get_sub.dateofsub 
						FROM Subscription 
						INNER JOIN get_sub ON Subscription.SubscriptionID = get_sub.SubscriptionID 
						WHERE get_sub.customerID = % s""", (session['id'], ))
		sub = cursor.fetchone()
		if not sub:
			sub = "nup"
		cursor.execute("""SELECT Membership.*, get_vip.dateofmem
						FROM Membership 
						INNER JOIN get_vip ON Membership.MembershipID = get_vip.MembershipID 
						WHERE get_vip.customerID = % s""", (session['id'], ))
		mem = cursor.fetchone()
		if not mem:
			mem = "nup"
		else:
			if mem['FreeDelivery'] == "Yes":
				mem['TypeOfMem'] = "Premium"
			elif mem['VIPOffer'] == "10":
				mem['TypeOfMem'] = "Standard"
			else:
				mem['TypeOfMem'] = "Basic"
		cursor.execute("""SELECT orders.*, customer_order.dateOfOrder
						FROM orders
						JOIN customer_order ON orders.orderID = customer_order.orderID
						WHERE customer_order.customerID = % s""", (session['id'], ))
		orders = cursor.fetchone()
		if not orders:
			orders = "nup"
		if request.method == 'POST':
			form_name = request.form['name']
			if form_name == 'subscription':
				exp_date = request.form['expiry_date']
				sub_type = request.form['subscription_type']
				cursor.execute('INSERT INTO Subscription VALUES (NULL, %s, %s)', (sub_type, exp_date))
				subID = cursor.lastrowid
				sub_date = datetime.datetime.now().strftime('%Y-%m-%d')
				cursor.execute('INSERT INTO get_sub VALUES (%s, %s, %s)', (session['id'], subID, sub_date))
				mysql.connection.commit()
				return redirect(url_for('profile'))
			elif form_name == 'membership':
				exp_date = request.form['expiry_date']
				mem_type = request.form['membership_type']
				if mem_type == "Basic":
					discount = 5
					coupons = 0
					delivery = "No"
					cursor.execute('INSERT INTO Membership VALUES (NULL, %s, %s, %s, %s)', (discount, coupons, delivery, exp_date))
				elif mem_type == "Standard":
					discount = 5
					coupons = 10
					delivery = "No"
					cursor.execute('INSERT INTO Membership VALUES (NULL, %s, %s, %s, %s)', (discount, coupons, delivery, exp_date))
				elif mem_type == "Premium":
					discount = 5
					coupons = 10
					delivery = "Yes"
					cursor.execute('INSERT INTO Membership VALUES (NULL, %s, %s, %s, %s)', (discount, coupons, delivery, exp_date))
				memID = cursor.lastrowid
				mem_date = datetime.datetime.now().strftime('%Y-%m-%d')
				cursor.execute('INSERT INTO get_vip VALUES (%s, %s, %s)', (session['id'], memID, mem_date))
				mysql.connection.commit()
				return redirect(url_for('profile'))
			elif form_name == 'cancel':
				cursor.execute("""SELECT orders.OrderID
									FROM orders
									JOIN customer_order ON orders.OrderID = customer_order.OrderID
									WHERE customer_order.customerID = %s
									ORDER BY customer_order.dateOfOrder""", (session['id'], ))
				myorders = cursor.fetchall()
				try:
					last_order = myorders[-1]
					orderID = last_order['OrderID']
					cursor.execute("""UPDATE orders
									SET DeliveryStatus = 'CANCELLED'
									WHERE OrderID = %s""", (orderID, ))
					cursor.execute("""DELETE from customer_order where OrderID = %s""", (orderID, ))
				except IndexError as error:
					flash(str(error), 'error')
				mysql.connection.commit()
				return redirect(url_for('profile'))
		return render_template("profile.html", account = account, phone = phone, sub = sub, mem = mem, orders = orders)
	return redirect(url_for('login'))

@app.route("/sales")
def sales():
	if 'adminin' in session:
		return render_template("sales.html")
	return redirect(url_for('admin'))

@app.route("/sq1")
def sq1():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""SELECT BranchID, 
							SUM(DailySales) AS TotalDailySales,
							SUM(MonthlySales) AS TotalMonthlySales,
							SUM(QuaterlySales) AS TotalQuarterlySales,
							SUM(AnnualSales) AS TotalAnnualSales,
							SUM(TotalSales) AS TotalSales
							FROM sales
							GROUP BY BranchID WITH ROLLUP;""")
		account = cursor.fetchall()
		return render_template("sq1.html", account = account)
	return redirect(url_for('admin'))

@app.route('/sq2')
def sq2():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""SELECT 
							customer_order.CustomerID AS CustomerID, 
							YEAR(customer_order.dateOfOrder) AS Year, 
							SUM(cart_item.TotalQuantity) AS TotalQuantity,
							AVG(cart_item.Price) AS AvgPrice,
							SUM(cart_item.TotalQuantity * cart_item.Price) AS TotalRevenue
						FROM 
							customer_order 
							JOIN cart_item ON customer_order.CustomerID = cart_item.CustomerID AND customer_order.CartID = cart_item.CartID
						WHERE 
							customer_order.dateOfOrder >= '2000-01-01' AND customer_order.dateOfOrder < '2023-01-01' -- slice by date range
						GROUP BY
							customer_order.CustomerID, 
							YEAR(customer_order.dateOfOrder);""")
		account = cursor.fetchall()
		return render_template("sq2.html", account = account)
	return redirect(url_for('admin'))

@app.route("/sq3")
def sq3():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""SELECT 
							branch.State AS State, 
							branch.City AS City, 
							SUM(branch.NumofEmployees) AS TotalEmployees, 
							SUM(sales.TotalSales) AS TotalSales 
						FROM 
							branch 
							JOIN sales ON branch.BranchID = sales.BranchID 
						GROUP BY 
							branch.State, 
							branch.City 
						WITH ROLLUP;
						""")
		account = cursor.fetchall()
		return render_template("sq3.html", account = account)
	return redirect(url_for('admin'))

@app.route("/sq4")
def sq4():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""select customer_order.customerid, customer_order.dateoforder
						from customer_order
						where customer_order.dateoforder = (
								select max(dateoforder)
								from customer_order);""")
		account = cursor.fetchall()
		return render_template("sq4.html", account = account)
	return redirect(url_for('admin'))


@app.route("/products")
def products():
	if 'adminin' in session:
		return render_template("products.html")
	return redirect(url_for('admin'))

@app.route("/pq1")
def pq1():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""SELECT 
						ItemID, 
						SUM(CASE WHEN YEAR(ManufacturingDate) = 2021 THEN QuantityLeft ELSE 0 END) AS QuantityLeft_2021,
						SUM(CASE WHEN YEAR(ManufacturingDate) = 2022 THEN QuantityLeft ELSE 0 END) AS QuantityLeft_2022,
						SUM(CASE WHEN YEAR(ManufacturingDate) = 2023 THEN QuantityLeft ELSE 0 END) AS QuantityLeft_2023,
						AVG(Price) AS AvgPrice 
						FROM 
							item 
						GROUP BY 
							ItemID;""")
		account = cursor.fetchall()
		return render_template("pq1.html", account = account)
	return redirect(url_for('admin'))

@app.route("/pq2")
def pq2():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""select itemid, quantityLeft from item
						where price < 100;""")
		account = cursor.fetchall()
		return render_template("pq2.html", account = account)
	return redirect(url_for('admin'))

@app.route("/pq3")
def pq3():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""select c.customerid, username
						from customer as c
						where not exists (
						select c.customerid 
						from get_vip as g 
						where c.customerid = g.customerid);""")
		account = cursor.fetchall()
		return render_template("pq3.html", account = account)
	return redirect(url_for('admin'))

@app.route("/inventory")
def inventory():
	if 'adminin' in session:
		return render_template("inventory.html")
	return redirect(url_for('admin'))

@app.route("/iq1")
def iq1():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""SELECT 
							warehouse.State AS State,
							farm.City AS City,
							admin.username AS AdminUserName,
							SUM(distributor.QuantitySupplied) AS TotalQuantitySupplied
						FROM 
							distributor 
							JOIN warehouse ON distributor.WarehouseID = warehouse.WarehouseID
							JOIN farm ON distributor.FarmID = farm.FarmID
							JOIN admin ON distributor.AdminID = admin.AdminID
						GROUP BY 
							warehouse.State, 
							farm.City, 
							admin.username WITH ROLLUP;""")
		account = cursor.fetchall()
		return render_template("iq1.html", account = account)
	return redirect(url_for('admin'))

@app.route("/iq2")
def iq2():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""select *
							from cow
							where fooditem = ' legumes';""")
		account = cursor.fetchall()
		return render_template("iq2.html", account = account)
	return redirect(url_for('admin'))

@app.route('/outlets')
def outlets():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""SELECT 
							customer_order.CustomerID AS CustomerID, 
							YEAR(customer_order.dateOfOrder) AS Year, 
							SUM(cart_item.TotalQuantity) AS TotalQuantity,
							AVG(cart_item.Price) AS AvgPrice,
							SUM(cart_item.TotalQuantity * cart_item.Price) AS TotalRevenue
						FROM 
							customer_order 
							JOIN cart_item ON customer_order.CustomerID = cart_item.CustomerID AND customer_order.CartID = cart_item.CartID
						WHERE 
							customer_order.dateOfOrder >= '2000-01-01' AND customer_order.dateOfOrder < '2023-01-01' -- slice by date range
						GROUP BY
							customer_order.CustomerID, 
							YEAR(customer_order.dateOfOrder);""")
		account = cursor.fetchall()
		return render_template("outlets.html", account = account)
	return redirect(url_for('admin'))

@app.route("/oq1")
def oq1():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""select deptname 
						from department
						group by deptname;""")
		account = cursor.fetchall()
		return render_template("oq1.html", account = account)
	return redirect(url_for('admin'))

@app.route("/oq2")
def oq2():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""select *
						from branch
						where state = 'Nevada' or state = 'NewYork';""")
		account = cursor.fetchall()
		return render_template("oq2.html", account = account)
	return redirect(url_for('admin'))

@app.route("/staff")
def staff():
	if 'adminin' in session:
		return render_template("staff.html")
	return redirect(url_for('admin'))

@app.route("/stq1")
def stq1():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""select first_name as name, E.employeeid 
						from employees as E, works_in as W 
						where W.employeeid = E.employeeid and W.deptid = 1;""")
		account = cursor.fetchall()
		return render_template("stq1.html", account = account)
	return redirect(url_for('admin'))

@app.route("/stq2")
def stq2():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""select first_name, employeeid
						from employees
						where first_name like 'A%';""")
		account = cursor.fetchall()
		return render_template("stq2.html", account = account)
	return redirect(url_for('admin'))

@app.route("/stq3")
def stq3():
	if 'adminin' in session:
		cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
		cursor.execute("""select first_name, employeeid
						from employees
						where age > 55 and salary > 30000;""")
		account = cursor.fetchall()
		return render_template("stq3.html", account = account)
	return redirect(url_for('admin'))

if __name__ == "__main__":
	app.debug = True
	app.run(host ="localhost", port = int("5002"))

app.static_folder = 'static'
