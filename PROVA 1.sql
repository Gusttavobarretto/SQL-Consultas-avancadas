-- QUESTIONS

-- 1) Utilize o dataset público "thelook_ecommerce", que esta presente no projeto "bigquery-public-data" para trazer o identificador único dos usuarios, o primeiro nome,email e idade, ordenados pela data de criação do cadastro?

SELECT
  id,
  first_name, -- identificador unico 
  email,      -- e-mail
  age,        -- idade
FROM `bigquery-public-data.thelook_ecommerce.users`
ORDER BY created_at ASC; -- Ordenei a consulta por data de criação


-- 2) No mesmo dataset do exercicio anterior, extraia os pedidos que tenham status "Shipped" ou "Processing"?

SELECT DISTINCT -- Localizei quais status eu tenho dentro da tabela
  status,
FROM `bigquery-public-data.thelook_ecommerce.orders`;


SELECT -- Localizei quais status eu tenho dentro da tabela
  order_id, -- Ordem de compra 
  status,
  IF(status = "Processing", "Sim, o pedido esta sendo processado", 
  IF(status = "Shipped", "Sim, o pedido foi enviado", "Não encontrei")) as Resposta_da_prova
FROM `bigquery-public-data.thelook_ecommerce.orders`;


SELECT -- Seleciona as colunas desejadas
  status, -- Exibe o status do pedido
  order_id -- Exibe o ID do pedido
FROM `bigquery-public-data.thelook_ecommerce.orders` -- Define a tabela de origem
WHERE status IN ("Shipped", "Processing"); -- Filtra os pedidos com status "Shipped" ou "Processing"

SELECT
order_id,
status,
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE status = "Shipped" or status = "Processsing";

-- 3) Considerando o mesmo exercício anterior, traga os pedidos que foram criados no dia “2022-04-05” e, ao mesmo tempo, tenham status “Cancelled”?


SELECT 
  order_id,
  status,
  created_at,
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE status IN ("Cancelled")
  AND DATE(created_at) = "2022-04-05"; -- Filtra pedidos criados no dia "2022-04-05"

  SELECT 
  order_id,
  status,
  created_at,
  DATE(created_at) as dia
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE status = "Cancelled" AND DATE(created_at) = "2022-04-05";


-- 4) O time de marketing deseja fazer uma campanha em um país específico, com o mesmo dataset dos itens anteriores. Para isso, eles te pedem os e-mails de todos os clientes que moram no Brasil?

SELECT
email,
country,
FROM `bigquery-public-data.thelook_ecommerce.users`
  WHERE country IN ("Brasil");

SELECT
email,
country,
FROM `bigquery-public-data.thelook_ecommerce.users`
  WHERE country = "Brasil";


--5) No mesmo dataset anterior, traga o nome dos usuários e o id de seus pedidos.


SELECT
  order_id, -- ID do pedido
  first_name -- Nome do usuário associado ao pedido
FROM `bigquery-public-data.thelook_ecommerce.users` u -- Tabela de usuários com alias "u"
JOIN `bigquery-public-data.thelook_ecommerce.orders` o -- Tabela de pedidos com alias "o"
  ON u.id = o.user_id; -- Relaciona usuários e pedidos através do ID do usuário (chave primária e estrangeira


SELECT
  order_id,
  first_name
FROM `bigquery-public-data.thelook_ecommerce.users` u 
JOIN `bigquery-public-data.thelook_ecommerce.orders` o ON u.id = o.user_id;

-- 6) Vá ao dataset público “baseball” e na tabela “schedules” traga os identificadores únicos, o nome do time da casa e o nome do time de fora de casa dos jogos em que a duração foi maior ou igual a 250 minutos e menos de 25 mil espectadores.


SELECT
  gameId,
  homeTeamName, -- Time da casa
  awayTeamName, -- Time visitante
  attendance,   -- Espectadores
  duration_minutes -- Duração do jogo em minutos
FROM `bigquery-public-data.baseball.schedules`
WHERE duration_minutes >= 250 AND attendance < 25000; -- Filtra jogos com duração de 250 minutos ou mais

 
-- 7) No mesmo dataset e tabela, retorne os jogos que começaram entre maio e junho de 2016

SELECT
  * -- Toda tabela
FROM `bigquery-public-data.baseball.schedules`
WHERE DATE(startTime) between "2016-05-01" and "2016-06-30"; -- Função DATE pra data ou periodo e BETWEEN para datas entre periodo.

SELECT
  * 
FROM `bigquery-public-data.baseball.schedules`
WHERE startTime between "2016-05-01 00:00:00" and "2016-06-30 23:59:59";

-- 8) DESAFIO: No mesmo dataset anterior, descubra o nome dos times que tenham somente 6 caracteres, usando o like. Retorne de forma única.
 

SELECT
homeTeamName, -- Coluna com os nomes dos times
FROM `bigquery-public-data.baseball.schedules`
WHERE homeTeamName LIKE "______"; -- O sinal "_" serve como 1 caracter no qual 6 responde a pergunta


SELECT DISTINCT -- Trará somente 1 de cada
homeTeamName,
FROM `bigquery-public-data.baseball.schedules`
WHERE homeTeamName LIKE "______";












