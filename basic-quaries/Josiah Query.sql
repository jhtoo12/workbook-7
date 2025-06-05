use northwind;
-- 1. Add a new supplier.
insert into suppliers(SupplierID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, HomePage)
VALUES (100, "JAW", "Josiah", "sales manager", "101 Joestar St", "charlotte", "NC", "28278", "USA", "(919)727-3212", null, null);
-- 2. Add a new product provided by that supplier
insert into products(ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
values(100,"JO", 100,"1","1","500.00","105","20","20", 0);
-- 3. List all products and their suppliers.
SELECT products.ProductName, suppliers.CompanyName
From products
JOIN suppliers on products.ProductID = suppliers.SupplierID;
-- 4. Raise the price of your new product by 15%.
UPDATE products
SET unitPrice = unitPrice*1.5
WHERE productID = 100;
-- 5. List the products and prices of all products from that supplier.
SELECT CompanyName, ProductID, ProductName, UnitPrice
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE CompanyName = 'JAW';
-- 6. Delete the new product.
DELETE FROM products
WHERE ProductName = "JO";
-- 7. Delete the new supplier.
DELETE FROM suppliers
WHERE supplierID = 100;
-- 8. List all products.
SELECT * FROM products;
-- 9. List all suppliers.
SELECT * FROM suppliers;