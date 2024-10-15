SELECT
	Sales.Customers.custid,
	Sales.Customers.companyname,
	Sales.Customers.orderid,
	Sales.Customers.orderdate,
FROM Sales.Customers AS
LEFT JOIN
ON Sales.Customers.custid = Saled.Orders.custid,
