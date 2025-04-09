-- FULL JOIN

SELECT DISTINCT
  a.user_id  as user_id_a,
  c.user_id as user_id_c,
  a.name,
  c.name,
  c.revenue,
FROM `dulcet-provider-454315-h0.relacionamento.acessos` a 
FULL JOIN `dulcet-provider-454315-h0.relacionamento.compras` c on a.user_id = c.user_id

SELECT DISTINCT
  a.user_id  as user_id_a,
  c.user_id as user_id_c,
  a.name,
  c.name,
  c.revenue,
FROM `dulcet-provider-454315-h0.relacionamento.acessos` a 
FULL JOIN `dulcet-provider-454315-h0.relacionamento.compras` c on a.user_id = c.user_id
WHERE a.user_id is null or c.user_id is null;


-- FULL JOIN DUPLO

SELECT DISTINCT
  a.user_id  as user_id_a,
  c.user_id as user_id_c,
  a.name,
  c.name,
  c.revenue,
  u.id as user_id_u,
  u.name
FROM `dulcet-provider-454315-h0.relacionamento.acessos` a 
FULL JOIN `dulcet-provider-454315-h0.relacionamento.compras` c on a.user_id = c.user_id
FULL JOIN `dulcet-provider-454315-h0.relacionamento.usuarios` u on u.id = coalesce(a.user_id, c.user_id);


SELECT DISTINCT
  a.user_id  as user_id_a,
  c.user_id as user_id_c,
  a.name,
  c.name,
  c.revenue,
  u.id as user_id_u,
  u.name
FROM `dulcet-provider-454315-h0.relacionamento.acessos` a 
FULL JOIN `dulcet-provider-454315-h0.relacionamento.compras` c on a.user_id = c.user_id
FULL JOIN `dulcet-provider-454315-h0.relacionamento.usuarios` u on u.id = coalesce(a.user_id, c.user_id)
WHERE COALESCE(a.user_id, c.user_id) is null;



