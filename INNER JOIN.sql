-- INNER JOIN

SELECT DISTINCT -- Chamei o distinct para não repetir os nomes de usuarios
a.user_id as user_id_a,-- 
c.user_id as user_id_b,
a.name
FROM `dulcet-provider-454315-h0.relacionamento.acessos` a -- join chave primaria user id com chave estrageira user id 
INNER JOIN `dulcet-provider-454315-h0.relacionamento.compras` c on a.user_id = c.user_id

SELECT DISTINCT
a.user_id as user_id_a,
c.user_id as user_id_b,
a.name
FROM `dulcet-provider-454315-h0.relacionamento.acessos` a 
JOIN `dulcet-provider-454315-h0.relacionamento.compras` c on a.user_id = c.user_id