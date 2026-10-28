-- JOIN PRACTICE
-- 1. Show every order with customer name and city.
-- 2. Show OrderID, OrderDate, customer name and status.
-- 3. Show every product with its category.
-- 4. Customers and Orders: Show all customers with their FirstName, City, and OrderID, including customers who have never placed an order.

--Display every employee and their total revenue from orders they handled, including employees with no orders.

SELECT
    emp.FirstName,
    SUM(oi.Quantity * oi.UnitPrice * (1 - oi.DiscountPercent /100)) as Total_Revenue
FROM Employees AS emp
LEFT JOIN Orders as o
ON emp.EmployeeID = o.EmployeeID
LEFT JOIN OrderItems as oi
ON o.OrderID = oi.OrderID
GROUP BY emp.FirstName


SELECT  TOP 1 * FROM Employees;
SELECT  TOP 1 * FROM Orders;
SELECT  TOP 1 * FROM OrderItems;
