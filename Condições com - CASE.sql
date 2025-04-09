-- Exemplo de 3 condições diferentes usando CASE
SELECT 
  id,
  name,
  case
   when id between 0 and 5 then 'Primeiro Verdadeiro' -- o CASE lê as linhas e regras por sequência, por isso o "segunda verdadeiro" foi descartado, logo quando o "primeiro Verdadeiro" já teve o resultado porque foi declarado antes.
   when id between 3 and 5 then "Segundo Verdadeiro"
   when id between 3 and 7 then "Terceiro Verdadeiro"
  end as case2
FROM `bigquery-public-data.thelook_ecommerce.distribution_centers`;