-- 제품명, 가격, 주문 개수 표시
SELECT Products.ProductName, Products.Price, COUNT(OrderDetails.Quantity)
FROM Products
INNER JOIN OrderDetails
ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductName, Products.Price
;
-- 77