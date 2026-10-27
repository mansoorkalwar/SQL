-- SQL Server JOIN PRACTICE DATABASE
-- Real-world style e-commerce database
-- 50 rows in every main table; OrderItems intentionally has multiple rows per order.



CREATE TABLE Customers(
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    City VARCHAR(50),
    JoinDate DATE
);

CREATE TABLE Categories(
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL
);

CREATE TABLE Products(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    CategoryID INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY(CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Departments(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE Employees(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10,2),
    ManagerID INT NULL,
    FOREIGN KEY(DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY(ManagerID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    EmployeeID INT NOT NULL,
    OrderDate DATE NOT NULL,
    Status VARCHAR(30) NOT NULL,
    PaymentMethod VARCHAR(30) NOT NULL,
    FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE OrderItems(
    OrderItemID INT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    DiscountPercent DECIMAL(5,2) NOT NULL,
    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY(ProductID) REFERENCES Products(ProductID)
);
GO

INSERT INTO Categories (CategoryID,CategoryName) VALUES
(1,'Electronics'),
(2,'Laptops'),
(3,'Mobile Phones'),
(4,'Accessories'),
(5,'Home Appliances'),
(6,'Furniture'),
(7,'Clothing'),
(8,'Shoes'),
(9,'Books'),
(10,'Sports');
INSERT INTO Departments (DepartmentID,DepartmentName) VALUES
(1,'Sales'),
(2,'IT'),
(3,'HR'),
(4,'Finance'),
(5,'Marketing'),
(6,'Operations'),
(7,'Customer Support'),
(8,'Management'),
(9,'Logistics'),
(10,'Procurement');
INSERT INTO Customers (CustomerID,FirstName,LastName,Email,City,JoinDate) VALUES
(1,'Ali','Customer1','ali.1@outlook.com','Karachi','2024-10-16'),
(2,'Ahmed','Customer2','ahmed.2@yahoo.com','Lahore','2023-04-25'),
(3,'Ayesha','Customer3','ayesha.3@gmail.com','Islamabad','2023-01-26'),
(4,'Fatima','Customer4','fatima.4@outlook.com','Rawalpindi','2025-01-29'),
(5,'Usman','Customer5','usman.5@yahoo.com','Hyderabad','2023-10-09'),
(6,'Hassan','Customer6','hassan.6@gmail.com','Multan','2023-09-08'),
(7,'Hussain','Customer7','hussain.7@outlook.com','Peshawar','2023-08-17'),
(8,'Sara','Customer8','sara.8@yahoo.com','Quetta','2023-05-23'),
(9,'Zain','Customer9','zain.9@gmail.com','Sukkur','2025-01-24'),
(10,'Bilal','Customer10','bilal.10@outlook.com','Ghotki','2023-04-15'),
(11,'Hamza','Customer11','hamza.11@yahoo.com','Karachi','2024-11-23'),
(12,'Mariam','Customer12','mariam.12@gmail.com','Lahore','2025-01-28'),
(13,'Sana','Customer13','sana.13@outlook.com','Islamabad','2025-07-02'),
(14,'Omar','Customer14','omar.14@yahoo.com','Rawalpindi','2024-07-12'),
(15,'Saad','Customer15','saad.15@gmail.com','Hyderabad','2023-03-31'),
(16,'Noor','Customer16','noor.16@outlook.com','Multan','2024-08-27'),
(17,'Danish','Customer17','danish.17@yahoo.com','Peshawar','2024-03-08'),
(18,'Hira','Customer18','hira.18@gmail.com','Quetta','2023-02-02'),
(19,'Asad','Customer19','asad.19@outlook.com','Sukkur','2023-01-31'),
(20,'Iqra','Customer20','iqra.20@yahoo.com','Ghotki','2023-04-06'),
(21,'Talha','Customer21','talha.21@gmail.com','Karachi','2023-08-12'),
(22,'Laiba','Customer22','laiba.22@outlook.com','Lahore','2023-08-27'),
(23,'Raza','Customer23','raza.23@yahoo.com','Islamabad','2024-06-01'),
(24,'Mahnoor','Customer24','mahnoor.24@gmail.com','Rawalpindi','2024-09-08'),
(25,'Shahzaib','Customer25','shahzaib.25@outlook.com','Hyderabad','2023-01-28'),
(26,'Anum','Customer26','anum.26@yahoo.com','Multan','2024-07-28'),
(27,'Fahad','Customer27','fahad.27@gmail.com','Peshawar','2023-07-23'),
(28,'Kiran','Customer28','kiran.28@outlook.com','Quetta','2025-01-03'),
(29,'Waleed','Customer29','waleed.29@yahoo.com','Sukkur','2024-10-27'),
(30,'Komal','Customer30','komal.30@gmail.com','Ghotki','2024-12-19'),
(31,'Abdullah','Customer31','abdullah.31@outlook.com','Karachi','2024-07-12'),
(32,'Amna','Customer32','amna.32@yahoo.com','Lahore','2024-03-05'),
(33,'Salman','Customer33','salman.33@gmail.com','Islamabad','2023-08-14'),
(34,'Mehwish','Customer34','mehwish.34@outlook.com','Rawalpindi','2024-04-04'),
(35,'Arslan','Customer35','arslan.35@yahoo.com','Hyderabad','2024-08-26'),
(36,'Eman','Customer36','eman.36@gmail.com','Multan','2023-10-12'),
(37,'Farhan','Customer37','farhan.37@outlook.com','Peshawar','2025-04-08'),
(38,'Nimra','Customer38','nimra.38@yahoo.com','Quetta','2025-06-09'),
(39,'Yasir','Customer39','yasir.39@gmail.com','Sukkur','2023-01-07'),
(40,'Sadia','Customer40','sadia.40@outlook.com','Ghotki','2025-02-16'),
(41,'Taha','Customer41','taha.41@yahoo.com','Karachi','2025-04-05'),
(42,'Rabia','Customer42','rabia.42@gmail.com','Lahore','2023-06-13'),
(43,'Imran','Customer43','imran.43@outlook.com','Islamabad','2024-12-15'),
(44,'Maha','Customer44','maha.44@yahoo.com','Rawalpindi','2024-03-08'),
(45,'Junaid','Customer45','junaid.45@gmail.com','Hyderabad','2023-12-15'),
(46,'Alina','Customer46','alina.46@outlook.com','Multan','2023-10-12'),
(47,'Adeel','Customer47','adeel.47@yahoo.com','Peshawar','2023-06-09'),
(48,'Zoya','Customer48','zoya.48@gmail.com','Quetta','2023-08-09'),
(49,'Kamran','Customer49','kamran.49@outlook.com','Sukkur','2025-09-07'),
(50,'Areeba','Customer50','areeba.50@yahoo.com','Ghotki','2025-02-20');
INSERT INTO Products (ProductID,ProductName,CategoryID,Price) VALUES
(1,'Wireless Mouse',1,615.82),
(2,'Mechanical Keyboard',2,180.55),
(3,'USB-C Hub',3,187.64),
(4,'Bluetooth Speaker',4,1527.78),
(5,'Power Bank',5,1092.65),
(6,'Laptop Stand',6,1455.72),
(7,'Webcam',7,1317.57),
(8,'Gaming Headset',8,972.17),
(9,'External SSD',9,1752.01),
(10,'Wireless Charger',10,690.68),
(11,'Business Laptop',1,1000.39),
(12,'Gaming Laptop',2,1495.49),
(13,'Ultrabook',3,1119.06),
(14,'Student Laptop',4,1553.15),
(15,'Workstation Laptop',5,1045.57),
(16,'Android Phone',6,1272.66),
(17,'iPhone',7,96.8),
(18,'Budget Smartphone',8,421.8),
(19,'5G Smartphone',9,531.56),
(20,'Foldable Phone',10,157.43),
(21,'USB Cable',1,430.53),
(22,'HDMI Cable',2,195.29),
(23,'Laptop Bag',3,511.18),
(24,'Phone Case',4,1149.7),
(25,'Screen Protector',5,666.23),
(26,'Air Fryer',6,675.77),
(27,'Microwave Oven',7,388.97),
(28,'Electric Kettle',8,491.56),
(29,'Blender',9,1686.93),
(30,'Vacuum Cleaner',10,1171.74),
(31,'Office Chair',1,1102.3),
(32,'Study Desk',2,320.48),
(33,'Bookshelf',3,1316.49),
(34,'Coffee Table',4,306.67),
(35,'Sofa',5,692.33),
(36,'T-Shirt',6,1781.3),
(37,'Hoodie',7,1157.4),
(38,'Jeans',8,1009.16),
(39,'Formal Shirt',9,1237.04),
(40,'Jacket',10,1519.49),
(41,'Running Shoes',1,1400.16),
(42,'Casual Sneakers',2,423.85),
(43,'Football Boots',3,72.3),
(44,'Formal Shoes',4,578.08),
(45,'Sandals',5,492.92),
(46,'Python Book',6,391.6),
(47,'SQL Book',7,1698.09),
(48,'Data Science Book',8,1579.32),
(49,'Java Book',9,576.7),
(50,'Computer Networks Book',10,1184.96);
INSERT INTO Employees (EmployeeID,FirstName,LastName,DepartmentID,Salary,ManagerID) VALUES
(1,'Ayesha','Employee1',1,148712,NULL),
(2,'Hassan','Employee2',2,165285,NULL),
(3,'Zain','Employee3',3,82452,NULL),
(4,'Mariam','Employee4',4,114436,NULL),
(5,'Saad','Employee5',5,81603,NULL),
(6,'Hira','Employee6',6,109651,NULL),
(7,'Talha','Employee7',7,113876,NULL),
(8,'Mahnoor','Employee8',8,157311,NULL),
(9,'Fahad','Employee9',9,149700,NULL),
(10,'Komal','Employee10',10,139895,NULL),
(11,'Salman','Employee11',1,102493,3),
(12,'Eman','Employee12',2,178569,8),
(13,'Yasir','Employee13',3,68831,1),
(14,'Rabia','Employee14',4,73743,3),
(15,'Junaid','Employee15',5,86938,7),
(16,'Zoya','Employee16',6,61653,7),
(17,'Ali','Employee17',7,145039,10),
(18,'Fatima','Employee18',8,167696,9),
(19,'Hussain','Employee19',9,110906,9),
(20,'Bilal','Employee20',10,48009,2),
(21,'Sana','Employee21',1,114946,6),
(22,'Noor','Employee22',2,74242,5),
(23,'Asad','Employee23',3,158971,3),
(24,'Laiba','Employee24',4,163940,1),
(25,'Shahzaib','Employee25',5,114045,9),
(26,'Kiran','Employee26',6,91832,9),
(27,'Abdullah','Employee27',7,72894,5),
(28,'Mehwish','Employee28',8,178080,10),
(29,'Farhan','Employee29',9,97143,3),
(30,'Sadia','Employee30',10,143019,3),
(31,'Imran','Employee31',1,45149,10),
(32,'Alina','Employee32',2,129975,8),
(33,'Kamran','Employee33',3,50105,2),
(34,'Ahmed','Employee34',4,140153,5),
(35,'Usman','Employee35',5,107770,1),
(36,'Sara','Employee36',6,108143,10),
(37,'Hamza','Employee37',7,65645,2),
(38,'Omar','Employee38',8,172399,2),
(39,'Danish','Employee39',9,77967,3),
(40,'Iqra','Employee40',10,169592,9),
(41,'Raza','Employee41',1,88287,5),
(42,'Anum','Employee42',2,155923,4),
(43,'Waleed','Employee43',3,97730,5),
(44,'Amna','Employee44',4,149593,6),
(45,'Arslan','Employee45',5,159845,9),
(46,'Nimra','Employee46',6,163354,2),
(47,'Taha','Employee47',7,109986,4),
(48,'Maha','Employee48',8,61784,6),
(49,'Adeel','Employee49',9,50514,10),
(50,'Areeba','Employee50',10,105323,10);
INSERT INTO Orders (OrderID,CustomerID,EmployeeID,OrderDate,Status,PaymentMethod) VALUES
(1,15,1,'2025-02-06','Cancelled','Cash'),
(2,15,5,'2025-01-17','Completed','Cash'),
(3,33,16,'2025-05-23','Cancelled','JazzCash'),
(4,14,35,'2025-03-09','Cancelled','EasyPaisa'),
(5,37,31,'2025-05-05','Shipped','JazzCash'),
(6,13,7,'2025-02-19','Cancelled','JazzCash'),
(7,23,28,'2025-07-30','Shipped','Cash'),
(8,44,42,'2025-11-27','Completed','Cash'),
(9,26,47,'2025-06-23','Completed','Card'),
(10,13,13,'2025-10-02','Shipped','Card'),
(11,28,12,'2025-05-23','Shipped','Card'),
(12,5,29,'2025-10-09','Completed','Cash'),
(13,42,35,'2025-01-08','Completed','Card'),
(14,11,27,'2025-09-06','Shipped','Card'),
(15,26,4,'2025-03-26','Shipped','Cash'),
(16,25,17,'2025-08-21','Completed','JazzCash'),
(17,45,47,'2025-10-12','Cancelled','JazzCash'),
(18,10,13,'2025-06-01','Completed','Cash'),
(19,38,48,'2025-10-05','Completed','Bank Transfer'),
(20,4,4,'2025-10-27','Shipped','EasyPaisa'),
(21,34,11,'2025-01-30','Processing','Cash'),
(22,12,5,'2025-11-01','Completed','Card'),
(23,26,8,'2025-10-19','Completed','EasyPaisa'),
(24,39,3,'2025-11-14','Completed','JazzCash'),
(25,43,38,'2025-10-17','Processing','Bank Transfer'),
(26,17,14,'2025-12-09','Cancelled','Bank Transfer'),
(27,16,17,'2025-07-22','Completed','Bank Transfer'),
(28,30,21,'2025-02-07','Completed','JazzCash'),
(29,40,37,'2025-02-21','Completed','EasyPaisa'),
(30,14,33,'2025-05-16','Completed','Bank Transfer'),
(31,5,16,'2025-07-09','Completed','Card'),
(32,29,35,'2025-12-27','Completed','EasyPaisa'),
(33,42,34,'2025-01-05','Cancelled','EasyPaisa'),
(34,20,43,'2025-02-23','Completed','Bank Transfer'),
(35,8,7,'2025-10-11','Completed','Bank Transfer'),
(36,19,39,'2025-04-18','Cancelled','Bank Transfer'),
(37,14,44,'2025-11-21','Completed','EasyPaisa'),
(38,32,17,'2025-01-27','Completed','JazzCash'),
(39,18,3,'2025-01-02','Completed','Card'),
(40,41,17,'2025-03-24','Cancelled','JazzCash'),
(41,36,46,'2025-08-07','Processing','Cash'),
(42,8,5,'2025-12-20','Completed','EasyPaisa'),
(43,3,24,'2025-10-26','Processing','Card'),
(44,28,9,'2025-01-22','Completed','Bank Transfer'),
(45,3,23,'2025-04-18','Cancelled','Card'),
(46,43,7,'2025-07-01','Processing','JazzCash'),
(47,40,48,'2025-03-21','Completed','Card'),
(48,12,27,'2025-01-13','Completed','Bank Transfer'),
(49,27,43,'2025-05-08','Completed','Card'),
(50,45,7,'2025-07-15','Completed','JazzCash');
INSERT INTO OrderItems (OrderItemID,OrderID,ProductID,Quantity,UnitPrice,DiscountPercent) VALUES
(1,1,13,4,1119.06,0),
(2,2,15,2,1045.57,0),
(3,2,43,2,72.3,5),
(4,3,18,1,421.8,0),
(5,3,23,5,511.18,5),
(6,4,35,3,692.33,0),
(7,4,8,3,972.17,0),
(8,4,38,3,1009.16,0),
(9,5,39,4,1237.04,0),
(10,6,21,4,430.53,10),
(11,6,33,1,1316.49,5),
(12,6,37,2,1157.4,0),
(13,7,46,4,391.6,0),
(14,8,35,2,692.33,0),
(15,8,28,1,491.56,15),
(16,8,22,5,195.29,0),
(17,9,8,3,972.17,10),
(18,9,20,4,157.43,0),
(19,9,26,3,675.77,10),
(20,10,13,4,1119.06,15),
(21,11,44,2,578.08,10),
(22,11,37,3,1157.4,5),
(23,12,1,3,615.82,0),
(24,12,14,4,1553.15,10),
(25,12,39,3,1237.04,5),
(26,13,29,2,1686.93,10),
(27,13,31,2,1102.3,15),
(28,14,19,5,531.56,15),
(29,15,40,3,1519.49,0),
(30,15,49,2,576.7,15),
(31,15,20,2,157.43,0),
(32,16,2,1,180.55,0),
(33,17,40,1,1519.49,5),
(34,17,27,5,388.97,0),
(35,18,45,4,492.92,5),
(36,18,26,2,675.77,0),
(37,18,42,1,423.85,0),
(38,19,15,2,1045.57,15),
(39,19,34,4,306.67,0),
(40,20,16,1,1272.66,5),
(41,20,9,4,1752.01,15),
(42,20,34,5,306.67,10),
(43,21,49,4,576.7,10),
(44,21,47,5,1698.09,5),
(45,22,29,2,1686.93,15),
(46,22,31,4,1102.3,0),
(47,22,49,2,576.7,15),
(48,23,50,5,1184.96,5),
(49,23,41,2,1400.16,0),
(50,24,5,3,1092.65,0),
(51,24,18,3,421.8,0),
(52,25,6,2,1455.72,0),
(53,25,15,4,1045.57,15),
(54,25,10,2,690.68,0),
(55,26,27,3,388.97,10),
(56,26,30,4,1171.74,0),
(57,27,27,4,388.97,10),
(58,28,2,5,180.55,5),
(59,28,31,1,1102.3,0),
(60,28,20,4,157.43,5),
(61,29,48,5,1579.32,10),
(62,29,15,4,1045.57,0),
(63,29,18,4,421.8,5),
(64,30,25,3,666.23,15),
(65,31,26,2,675.77,5),
(66,31,9,5,1752.01,10),
(67,31,2,4,180.55,10),
(68,32,43,1,72.3,0),
(69,32,42,4,423.85,0),
(70,32,30,2,1171.74,0),
(71,33,25,3,666.23,0),
(72,33,30,3,1171.74,0),
(73,34,18,4,421.8,0),
(74,34,6,4,1455.72,0),
(75,35,35,1,692.33,0),
(76,35,15,1,1045.57,15),
(77,35,3,1,187.64,0),
(78,36,2,5,180.55,0),
(79,37,9,4,1752.01,15),
(80,38,37,2,1157.4,5),
(81,39,17,3,96.8,0),
(82,39,39,5,1237.04,15),
(83,39,46,1,391.6,0),
(84,40,7,5,1317.57,0),
(85,40,20,5,157.43,15),
(86,41,26,2,675.77,0),
(87,41,38,2,1009.16,0),
(88,42,50,3,1184.96,15),
(89,42,39,1,1237.04,10),
(90,42,3,3,187.64,10),
(91,43,43,3,72.3,0),
(92,43,33,3,1316.49,0),
(93,44,32,1,320.48,5),
(94,44,24,4,1149.7,15),
(95,45,28,2,491.56,15),
(96,46,42,3,423.85,10),
(97,46,35,4,692.33,5),
(98,46,28,5,491.56,0),
(99,47,16,1,1272.66,0),
(100,47,29,2,1686.93,5),
(101,48,40,4,1519.49,0),
(102,48,2,4,180.55,0),
(103,48,12,4,1495.49,0),
(104,49,17,3,96.8,0),
(105,49,39,3,1237.04,10),
(106,50,34,2,306.67,0);

-- RELATIONSHIPS
-- Customers 1 -> many Orders
-- Employees 1 -> many Orders
-- Departments 1 -> many Employees
-- Categories 1 -> many Products
-- Orders 1 -> many OrderItems
-- Products 1 -> many OrderItems
-- Employees also has a self-relationship through ManagerID.

-- JOIN PRACTICE
-- 1. Show every order with customer name and city.
-- 2. Show OrderID, OrderDate, customer name and status.
-- 3. Show every product with its category.
-- 4. Show every employee with department name.
-- 5. Show every order with the employee who handled it.
-- 6. Show order details with product name, quantity and unit price.
-- 7. Show customer, order, product and quantity in one result.
-- 8. Find customers who have placed an order.
-- 9. Find customers who have NEVER placed an order.
-- 10. Show ALL customers, including those without orders.
-- 11. Find products that have never been ordered.
-- 12. Count orders for each customer.
-- 13. Find the customer with the most orders.
-- 14. Find total quantity sold for each product.
-- 15. Find total sales amount for each product.
-- 16. Find top 10 products by sales.
-- 17. Find total sales for each category.
-- 18. Count employees in each department.
-- 19. Find average salary by department.
-- 20. Find departments with average salary > 100000.
-- 21. SELF JOIN: show each employee and their manager.
-- 22. Find employees who have no manager.
-- 23. Find total revenue generated by each employee.
-- 24. Find the employee who handled the most orders.
-- 25. Find total spending for each customer.
-- 26. Find customers whose spending is greater than 5000.
-- 27. Find the most expensive product in each category.
-- 28. Find the cheapest product in each category.
-- 29. Calculate total amount of every order.
-- 30. Find orders containing more than one product.
-- 31. Top 3 customers by total spending.
-- 32. Top-selling product in each category.
-- 33. Employee with the highest revenue.
-- 34. Customers who bought products from at least 3 categories.
-- 35. Month with the highest sales.
-- 36. First order date for each customer.
-- 37. Latest order date for each customer.
-- 38. Products with quantity sold above the average.
-- 39. Rank employees by revenue within department.
-- 40. Rank products by sales within category.
