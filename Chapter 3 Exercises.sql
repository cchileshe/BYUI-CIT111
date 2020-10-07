/* EXERCISE #6 */
SELECT vendor_name, vendor_contact_last_name, vendor_contact_first_name
FROM vendors
ORDER BY 
vendor_contact_last_name  ASC ,  
vendor_contact_first_name ASC
;

/* EXERCISE #7 */
SELECT CONCAT(vendor_contact_last_name,',',' ', vendor_contact_first_name) AS full_name
FROM vendors
WHERE vendor_contact_last_name REGEXP '^[A-E]' 
ORDER BY 
vendor_contact_last_name  ASC ,  
vendor_contact_first_name ASC
;


/* EXERCISE #8 */
SELECT invoice_due_date AS 'Due Date', invoice_total AS 'Invoice Total',
invoice_total * .1 AS '10%', invoice_total + (invoice_total * .1) AS 'Plus 10%'
FROM invoices
WHERE invoice_total >= 500 AND invoice_total <=1000
ORDER BY invoice_due_date DESC
;

/* EXERCISE #9 */
SELECT invoice_number, invoice_total, payment_total + credit_total AS 'payment_credit_total', 
invoice_total-(payment_total + credit_total) AS 'balance_due'
FROM invoices
WHERE invoice_total-(payment_total + credit_total)> 50
ORDER BY invoice_due_date DESC
LIMIT 5
;

/* EXERCISE #10 */
SELECT invoice_number, invoice_date, invoice_total - payment_total - credit_total AS 'balance_due',
payment_date
FROM invoices
WHERE payment_date IS NULL
;

/* EXERCISE #11 */
SELECT DATE_FORMAT(CURRENT_DATE,"%m-%d-%Y") AS 'current_date';  

/* EXERCISE #12 */
SELECT 50000 AS 'starting_principle',
50000 * .065 AS 'interest', 50000 + (50000 * .065) AS 'principle_plus_interest'
;  