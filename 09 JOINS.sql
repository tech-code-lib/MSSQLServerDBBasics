select * from Categories
select * from Products

--- INNER JOIN
select t1.ProductName,t1.Price, t2.categoryName from Products t1
INNER JOIN Categories t2
on t1.[CategoryId] = t2.Id
--- LEFT OUTER JOIN
select t1.ProductName,t1.Price, t2.categoryName from Products t1
LEFT OUTER JOIN Categories t2
on t1.[CategoryId] = t2.Id
--- RIGHT OUTER JOIN
select t1.ProductName,t1.Price, t2.categoryName from Products t1
RIGHT OUTER JOIN Categories t2
on t1.[CategoryId] = t2.Id
--- FULL OUTER JOIN
select t1.ProductName,t1.Price, t2.categoryName from Products t1
FULL OUTER JOIN Categories t2
on t1.[CategoryId] = t2.Id


---
update Products
set CategoryId=1
where Id = 6