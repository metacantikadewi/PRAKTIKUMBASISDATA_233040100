SELECT HR.Employees.empid, HR.Employees.FirstName, HR.Employees.Lastname
FROM HR.Employees
LEFT JOIN Sales.Orders
ON HR.Employees.empid = Sales.Orders .empid
WHERE Sales.OrderDate < '2016-05-01'
OR Sales.OrderDate IS NULL;






SALECT Sales.Orders.orderid, Sales.Orders.orders.orderdate, Sales.Customers.custid, Sales.Orders.empid
From Sales.Orders
WHERE
	orderdate = (SELECT MAX(orderdate) From Sales.Orders);




	SELECT hitung mata kuliah pada hari senin

		-kewarnegaraan
		-bahasa indonesia
		-algoritma dan pemograman 
		-rekayasa perangkat lunak





SELECT tampilkan mahasiswa yang dari jurusan teknik informatika dan beralamat 






SELECT tampilkan nama mata kuliah yang dosen pengajarnya mengandung kata "ang" dan urutkan berdasarkan alfabetis

	


SELECT
	Sales.Customers.custid,
	Sales.Customers.companyname,
	Sales.Customers.orderid,
	Sales.Customers.orderdate,
FROM Sales.Customers AS
LEFT JOIN
ON Sales.Customers.custid = Saled.Orders.custid,
