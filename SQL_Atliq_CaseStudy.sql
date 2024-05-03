SELECT * FROM retail_events_db.fact_events;

SELECT * FROM retail_events_db.dim_products
WHERE product_code IN (SELECT distinct product_code FROM retail_events_db.fact_events
							WHERE base_price > 500 AND promo_type = 'BOGOF');
                            
SELECT city, COUNT(*) AS Total_stores FROM retail_events_db.dim_stores
GROUP BY city
ORDER BY Total_stores DESC;

SELECT campaign_id,
SUM(`quantity_sold(before_promo)`*base_price) As `total_revenue(before_campaign)`,
SUM(`quantity_sold(after_promo)`*base_price) As `total_revenue(after_campaign)`
FROM retail_events_db.fact_events
GROUP BY campaign_id;

SELECT B.category,B.product_name,A.product_code,A.`ICU%`,A.ICU_rank FROM (SELECT product_code,
ROUND(((SUM(`quantity_sold(after_promo)`-`quantity_sold(before_promo)`)/SUM(`quantity_sold(before_promo)`))* 100),2) AS `ICU%`,
DENSE_RANK() OVER(order by `ICU%` DESC) AS ICU_rank
FROM retail_events_db.fact_events
GROUP BY product_code) A
JOIN retail_events_db.dim_products B
ON A.product_code = B.product_code
ORDER BY ICU_rank ASC;

SELECT B.category,B.product_name,A.`Increase/Decrease_revenue` AS `IR%` FROM (SELECT product_code,
ROUND(((SUM(`quantity_sold(after_promo)`*base_price - `quantity_sold(before_promo)`*base_price)/SUM(`quantity_sold(before_promo)`*base_price))*100),2) AS `Increase/Decrease_revenue`
FROM retail_events_db.fact_events
GROUP BY product_code) A
JOIN retail_events_db.dim_products B
ON A.product_code = B.product_code
ORDER BY `IR%` DESC
                            


