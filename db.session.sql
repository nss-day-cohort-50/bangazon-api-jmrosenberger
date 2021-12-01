SELECT pt.merchant_name AS Credit_Company, u.first_name || " " || u.last_name AS Full_Name
FROM bangazon_api_paymenttype AS pt
JOIN auth_user AS u
    ON u.id = pt.customer_id;



SELECT u.first_name || " " || u.last_name AS Full_Name, 
pt.merchant_name AS Credit_Company,
pt.acct_number AS Account_Number
FROM auth_user AS u
JOIN bangazon_api_paymenttype AS pt
    ON u.id = pt.customer_id;


-- SELECT *
-- FROM bangazon_api_product;

SELECT COUNT(op.product_id) AS number_sold, p.name AS name_of_product
FROM bangazon_api_orderproduct op
JOIN bangazon_api_product p
    ON op.product_id = p.id
GROUP BY p.name
ORDER BY number_sold DESC;

SELECT AVG(r.score) AS Rating, p.name AS Product_Name
FROM bangazon_api_product p
LEFT JOIN bangazon_api_rating r
    ON r.product_id = p.id
GROUP BY p.name;


SELECT s.name AS Store_Name, u.last_name AS Customer
FROM bangazon_api_store s
LEFT JOIN bangazon_api_favorite f
    ON s.id = f.store_id
JOIN auth_user u
    ON u.id = f.customer_id