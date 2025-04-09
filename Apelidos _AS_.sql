# Apelidos
# AS: Cria um alias (nome temporário) para facilitar a leitura do retorno da coluna.
# SELECT: Especifica as colunas que serão exibidas na consulta.

SELECT 
id, -- ID do cliente
first_name as primeiro_nome  -- Nome do cliente (alias para facilitar leitura)
from Teste.Customers; -- Define a tabela de origem da consulta


# O 'AS' reduziu os nomes para facilitar a busca
SELECT i.id, i.total_price 
from Teste.Items as i; 

# FROM: Define a tabela principal da consulta.
# JOIN: Relaciona a tabela principal com outra tabela.
# ON: Especifica as colunas relacionadas entre as tabelas.
SELECT
p.name as nome_produto, # Nome do produto (alias "AS" para facilitar leitura)
c.name as nome_categoria # Nome da categoria (alias "AS" para facilitar leitura)
from Teste.Products as p
join Teste.Categories as c on p.category_id = c.id; # Relaciona produtos à sua categoria

SELECT
products.name as nome_produto, 
categories.name as nome_categoria 
from Teste.Products
join Teste.Categories on Products.category_id = categories.id;



