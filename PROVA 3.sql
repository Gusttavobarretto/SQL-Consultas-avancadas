-- PROVA 3
-- 1) Ache o dataset “thelook_ecommerce” nos dados públicos do BigQuery. Traga os usuários que não tem compra em dezembro de 2022.

SELECT DISTINCT
u.id
FROM `bigquery-public-data.thelook_ecommerce.users` u
LEFT JOIN `bigquery-public-data.thelook_ecommerce.orders` o on u.id = o.user_id and date(o.created_at) between "2022-12-01" and "2022-12-31"
WHERE o.user_id is null;
 

 -- 2) No mesmo dataset, traga informações resumidas sobre os usuários (de todos, tendo ou não compras). Id do usuário, quantidade de compras realizadas, quantidade de itens comprados, ticket médio, quantidade de produtos distintos comprados, centro de distribuições dos quais o usuário recebeu produtos, quantidade de criações de carrinho.


select distinct
  u.id,
  count(distinct o.order_id) as compras_realizadas,
  count(distinct oi.id) as itens_comprados,
  case 
    when count(distinct o.order_id) > 0 then sum(sale_price)/count(distinct o.order_id)
    else 0 
  end as ticket_medio,
  count(distinct p.id) as produtos_distintos,
  count(distinct d.id) as centros_distribuicao,
  count(distinct e.id) as eventos_carrinho
from bigquery-public-data.thelook_ecommerce.users u
left join bigquery-public-data.thelook_ecommerce.orders o on u.id = o.user_id
left join bigquery-public-data.thelook_ecommerce.order_items oi on o.order_id = oi.order_id
left join bigquery-public-data.thelook_ecommerce.products p on p.id = oi.product_id
left join bigquery-public-data.thelook_ecommerce.distribution_centers d on d.id = p.distribution_center_id
left join bigquery-public-data.thelook_ecommerce.events e on e.user_id = u.id and event_type = 'cart'
group by 1
order by id;
