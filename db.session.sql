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