-- SUM

SELECT
  ROUND(SUM(sale_price), 2) as receita  -- Soma da receita maximo de pedidos feitos 
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = "Complete"; -- where (quanto) o status estiver como "completo"


SELECT
  ROUND(SUM(sale_price), 2) as receita,  -- Soma da receita maximo de pedidos feitos
   FORMAT_DATE("%Y-%m", created_at) as mes,
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = "Complete"
GROUP BY mes
ORDER BY mes;

SELECT
  SUM(IF(country="Brasil", 1, 0)) as cadastrados_brasil,
  COUNT(case when country="brasil" then id end) as cadastrados_brasil2
FROM `bigquery-public-data.thelook_ecommerce.users`;

-- AVG- AVERAGE (MEDIA)

SELECT
  ROUND(AVG(sale_price), 2) as ticket_medio,  -- Soma da receita maximo de pedidos feitos
   FORMAT_DATE("%Y-%m", created_at) as mes,
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = "Complete"
GROUP BY mes
ORDER BY mes;

