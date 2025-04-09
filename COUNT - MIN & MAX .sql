-- Função COUNT
SELECT
 COUNT(*) as qtde_usuarios, -- Função count + (*) para selecionar todos usuarios.
 COUNT(ID) as qtde_usuarios2, -- Função count para buscar somente o "ID".
 COUNT(DISTINCT ID) as qtde_usuarios3, -- Função COUNT + DISTINCT para trazer o total de numeros distintos
 FROM `bigquery-public-data.thelook_ecommerce.users`;


 SELECT
  COUNT(DISTINCT status) as qtde_status -- Função para buscar a quantidade de status 
  FROM `bigquery-public-data.thelook_ecommerce.orders`;

   SELECT DISTINCT
    status as qtde_status -- Função para buscar quais status nos temos 
  FROM `bigquery-public-data.thelook_ecommerce.orders`;

  SELECT
  COUNT(DISTINCT order_id) as qtde_pedidos,
  DATE(created_at) as dia
  FROM `bigquery-public-data.thelook_ecommerce.orders`
  GROUP BY dia
  ORDER BY dia;

   SELECT
  COUNT(DISTINCT order_id) as qtde_pedidos,
  EXTRACT(year from created_at) as ano -- Extrair o ano from (da) tabela criação 
  FROM `bigquery-public-data.thelook_ecommerce.orders`
  GROUP BY ano
  ORDER BY ano;


  -- MAX & MIN

  SELECT
    MAX(retail_price) as preco_maximo_produto,
  FROM `bigquery-public-data.thelook_ecommerce.products`;


   SELECT
    MIN(retail_price) as preco_minimo_produto,
  FROM `bigquery-public-data.thelook_ecommerce.products`;

    SELECT
    MIN(retail_price) as preco_minimo_produto,
    MAX(retail_price) as preco_maximo_produto
  FROM `bigquery-public-data.thelook_ecommerce.products`;


      SELECT
    ROUND(MIN(retail_price), 2) as preco_minimo_produto, -- ROUND é para colocar o numeros depois da virgula 
    ROUND(MAX(retail_price), 2) as preco_maximo_produto,
c.name
  FROM `bigquery-public-data.thelook_ecommerce.products` p
  join `bigquery-public-data.thelook_ecommerce.distribution_centers` c on p.distribution_center_id = c.id
  GROUP BY name 
  ORDER BY 2;


     SELECT
    MIN(created_at) as data_cadastro_antiga,
    MAX(created_at) as data_cadastro_recente
      FROM `bigquery-public-data.thelook_ecommerce.users`;


  














  





