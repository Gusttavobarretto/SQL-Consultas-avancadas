-- RIGHT JOIN

SELECT DISTINCT
  a.user_id  as user_id_a,                                        -- Seleciona o ID do usuário da tabela 'acessos' (pode ser NULL caso não haja correspondência)
  c.user_id as user_id_c,                                         -- Seleciona o ID do usuário da tabela 'compras' (sempre terá um valor, pois é a tabela base do RIGHT JOIN)
  c.name,                                                         -- Seleciona o nome do usuário da tabela 'compras'
  c.revenue                                                       -- Seleciona a receita (revenue) associada ao usuário da tabela 'compras'
FROM `dulcet-provider-454315-h0.relacionamento.acessos` a 
RIGHT JOIN `dulcet-provider-454315-h0.relacionamento.compras` c ON a.user_id = c.user_id                                        -- Realiza um RIGHT JOIN unindo as tabelas 'acessos' e 'compras' com base no user_id.
                                                                  -- Isso significa que todos os registros da tabela 'compras' serão mantidos, 
                                                                  -- e apenas os registros da tabela 'acessos' que possuem correspondência serão trazidos.
                                                                  -- Se um usuário da tabela 'compras' não tiver um correspondente na tabela 'acessos',
                                                                  -- os campos da tabela 'acessos' retornarão NULL.

SELECT DISTINCT
  a.user_id  as user_id_a,
  c.user_id as user_id_c,
  c.name,
  c.revenue,
FROM `dulcet-provider-454315-h0.relacionamento.acessos` a 
RIGHT JOIN `dulcet-provider-454315-h0.relacionamento.compras` c on a.user_id = c.user_id


SELECT DISTINCT
a.user_id  as user_id_a,
c.user_id as user_id_c,
c.name,
c.revenue
FROM `dulcet-provider-454315-h0.relacionamento.acessos` a 
RIGHT JOIN `dulcet-provider-454315-h0.relacionamento.compras` c on a.user_id = c.user_id
WHERE a.user_id is Null;