-- LEFT JOIN

SELECT DISTINCT
  a.user_id as user_id_a,
  c.user_id as user_id_b,
  a.name,
  c.revenue
FROM `dulcet-provider-454315-h0.relacionamento.acessos` a     
LEFT JOIN `dulcet-provider-454315-h0.relacionamento.compras` c on a.user_id = c.user_id
WHERE c.user_id is null;


SELECT DISTINCT 
  a.user_id as user_id_a,                                                               -- Seleciona o ID do usuário da tabela 'acessos'
  c.user_id as user_id_b,                                                               -- Seleciona o ID do usuário da tabela 'compras' (poderá ser NULL caso não haja correspondência)
  a.name,                                                                               -- Seleciona o nome do usuário da tabela 'acessos'
  c.revenue,
FROM `dulcet-provider-454315-h0.relacionamento.acessos` a     
LEFT JOIN `dulcet-provider-454315-h0.relacionamento.compras` c ON a.user_id = c.user_id -- Realiza um LEFT JOIN unindo as tabelas 'acessos' e 'compras' com base no user_id.
                                                                                        -- Isso significa que todos os registros da tabela 'acessos' serão mantidos, 
                                                                                        -- e apenas os registros da tabela 'compras' que possuem correspondência serão trazidos.
                                                                                        -- Se um usuário da tabela 'acessos' não tiver um correspondente na tabela 'compras', 
                                                                                        -- os campos da tabela 'compras' retornarão NULL.

WHERE c.user_id IS NULL;                                                                -- Filtra apenas os usuários que não possuem compras associadas.
                                                                                        -- Como estamos usando um LEFT JOIN, isso significa que esses usuários existem na tabela 'acessos',
                                                                                        -- mas não possuem um user_id correspondente na tabela 'compras', ou seja, nunca realizaram compras.


SELECT DISTINCT
  a.user_id as user_id_a,
  c.user_id as user_id_b,
  a.name,
  c.revenue
FROM `dulcet-provider-454315-h0.relacionamento.acessos` a     
LEFT JOIN `dulcet-provider-454315-h0.relacionamento.compras` c on a.user_id = c.user_id
WHERE c.user_id is null;
















