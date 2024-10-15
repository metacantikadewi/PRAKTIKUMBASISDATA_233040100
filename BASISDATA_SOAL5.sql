SALECT Sales.Orders.orderid, Sales.Orders.orders.orderdate, Sales.Customers.custid, Sales.Orders.empid
From Sales.Orders
WHERE
	orderdate = (SELECT MAX(orderdate) From Sales.Orders);