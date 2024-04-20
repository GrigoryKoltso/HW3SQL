--(1) Вывести данные о товарах (проекция: названиетовара, цена, названиекатегории, названиекомпаниипоставщика)
SELECT Products.ProductName,
Products.Price, Categories.CategoryName, Suppliers.SupplierName
FROM Products
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
JOIN Categories On Products.CategoryID = Categories.CategoryID

--(2) Вывести список стран, которые поставляют морепродукты
SELECT DISTINCT Suppliers.Country FROM Categories
JOIN Products ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
WHERE 
Categories.CategoryName = 'Seafood'

--(3) Вывести два самых дорогих товара из категории Beverages из USA

SELECT Products.ProductName, Products.Price  FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
WHERE 
CategoryName = 'Beverages'
AND
Country = 'USA'
ORDER BY PRICE DESC
LIMIT 2

--(4) Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT Products.ProductName, Products.Price FROM Orders
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
ORDER BY PRICE DESC
LIMIT 1

--5 (5) Дайте короткий ответ на вопрос: в чем отличие БД от СУБД
БД - это хранилище данных. СУБД - это инструмент для работы с этими данными