CREATE SCHEMA Sales AUTHORIZATION dbo;
GO

CREATE TABLE Sales.Customers
(
	custid INT NOT NULL IDENTITY,
	CONSTRAINT PK_Customers PRIMARY KEY(custid)
);

CREATE TABLE Sales.Orders
(
	orderid INT NOT NULL IDENTITY,
	custdi	INT	NOT NULL,
	numorders	INT NOT NULL,
	CONSTRAINT Pk_Orders PRIMARY KEY (orderid),
	CONSTRAINT FK_Customers_Orders FOREIGN KEY (custid) REFERENCES Sales.Customers(custid)
);

CREATE TABLE Sales.OrderDetails
(
	orderid INT NOT NULL,
	qty SMALLINT NOT NULL
		CONSTRAINT FK_Orders_OrderDetails FOREIGN KEY (orderid) REFERENCES Sales.Customers(orderid),
		CONSTRAINT DFT_OrderDetails_discount DEFAULT (1),
);

SELECT Sales.Customers.custid,
	COUNT(Sales.Orders.orderid) AS numorders,
	SUM (Sales.OrderDetails.qts) AS totalqty

FROM Sales.Costomers
join Sales.Orders ON Sales.Customers.custid = Sales.Orders.custid
join Saled.OrdersDatails ON Sales.Orderid = Sales.OrderDatails.orderid
GROUP BY Sales.Customers.custid
GROUP BY Sales.Customers.custid;
