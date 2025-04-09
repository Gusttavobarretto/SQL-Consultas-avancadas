-- Group By and Order By

SELECT DISTINCT -- DISTINCT tras os resultados das informações distintas igual o Group By
 status,
FROM `bigquery-public-data.thelook_ecommerce.orders`;

SELECT
  status,
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status;

SELECT
  status,
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY 1; -- Eu posso colocar o nome da coluna " status" or numero da linha que sera lida no select 

SELECT
    COUNT(DISTINCT order_id) as numero_pedido,
    DATE(created_at) as dia,
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY 2
ORDER BY numero_pedido;

SELECT
    COUNT(DISTINCT order_id) as numero_pedido,
    DATE(created_at) as dia,
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY dia
ORDER BY dia ASC;

SELECT
    COUNT(DISTINCT order_id) as numero_pedido,
    DATE(created_at) as dia,
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY dia
ORDER BY 2 DESC;
