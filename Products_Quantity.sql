-- 제품명, 가격, 주문 개수 표시
SELECT Products.ProductName, Products.Price, OrderDetails.Quantity
FROM Products
INNER JOIN OrderDetails
ON Products.ProductID = OrderDetails.ProductID
;
-- 2155