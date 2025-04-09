-- CASE: Avalia condições e retorna valores baseados nelas.
 SELECT
  id,    -- ID da categoria
  name,  -- Nome da categoria
  case   -- CASO

    when name = "Cosméticos e Perfumaria" then "Sim, é categoria Cosméticos e Perfumaria" -- WHEN(Quando) THEN(Então) END(Fim) -- Verifica a condição e retorna o valor correspondente
    end as case1
from Teste.Categories;



 SELECT
  id,
  name,
  CASE
        WHEN name = "Cosméticos e Perfumaria" THEN "Sim, é categoria Cosméticos e Perfumaria" -- Verifica se a categoria é "Cosméticos e Perfumaria"
        WHEN name = "Esporte e Lazer" THEN "Sim, é categoria Esporte e Lazer" -- Verifica se a categoria é "Esporte e Lazer"
        ELSE "Não encontrou as categorias acima" -- Retorno padrão caso não encontre as categorias especificadas - ELSE(Se,não)
    END AS case1
FROM Teste.Categories;


-- IF(SE) -> IF(condição, caso seja VDD, caso seja falso) -> IF(condição, caso seja VDD, IF(condição, caso seja VDD, caso seja falso))
SELECT
  id,
  name,
  IF (name = "Cosméticos e Perfumaria", "Sim, é categoria Cosméticos e Perfumaria", IF(name = "Esporte e Lazer","Sim, é categoria Esporte e Lazer", "Não encontrou as categorias acima")) as IF1
FROM Teste.Categories;

-- COALESCE -> coalesce(paramêtro1, pam2, pam3)
SELECT
  id,
  first_name,
  additionals,
  coalesce(additionals, "Ops, o complemento é nulo!") as complemento
  FROM Teste.Customers;


