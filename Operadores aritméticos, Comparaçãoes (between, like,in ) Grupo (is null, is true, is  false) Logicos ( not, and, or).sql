# Aritméticos
SELECT
 7 + 7 as soma,
 12 - 4 as subtracao,
 73 * 4 as multiplicacao,
 1 / 3 as divisao; 

# Operadores de comparação

SELECT
 5 = 5 as igual, # igual
 1 > 10 as maior, # Maior
 100 > 3 as maior_1, # Menor
 60 <= 60 as menor_ou_igual, # Menor ou igual
 17 != 17 as diferente, # Diferente
 17 <> 17 as diferente_1; # Diferente

# Between (entre)
SELECT
10 between 8 and 15,
-13 between 0 and 100;

select * from Teste.Products
where price between 30 and 80;

select
3 between 3 and 5,
5 between 3 and 5;

# Like
# % - whatever 
# where (onde) + coluna Like (como ou contem) a Letra 'J' no inicio do nome

select * from `dulcet-provider-454315-h0.Teste.Customers`
where first_name like 'J%';

# where (onde) + coluna Like (como ou contem) a Letra 'r' no final do nome

select * from `dulcet-provider-454315-h0.Teste.Customers`
where first_name like '%r';

# where (onde) + coluna Like (como ou contem) a Letra 'J' no inicio do nome e like (como ou contem) a letra 'r' no final do nome - Forma mais dificil

select * from `dulcet-provider-454315-h0.Teste.Customers`
where first_name like 'J%'and  first_name like '%r';

# where (onde) + coluna Like (como ou contem) a Letra 'J' no inicio do nome % ( whaterever ) e letra 'r' no final do nome - Forma mais facil

select * from `dulcet-provider-454315-h0.Teste.Customers`
where first_name like 'J%r';

# in (dentro)
# Selecionar os preços da pasta que contem 10 ,11 , 15
# Where (onde) price (preço) in (dentro) da pasta selecionada com o select

select * from Teste.Products
where price in (10, 11 ,15);

# Selecionar os estados acre e ceara
# Where (onde) state (estado) in (dentro) da pasta selecionada com o select

select * from `dulcet-provider-454315-h0.Teste.Customers`
where state in ("Acre", "Ceará");


# Is null e Is not null
# Selecionar os usuario que na coluna 'rua' não tem informação
# Where (onde) Street (rua) is null (é vazio, contem null)

select * from `dulcet-provider-454315-h0.Teste.Customers`
where street is null;

# Selecionar os usuario que na coluna 'rua' tem informação
# Where (onde) Street (rua) is not null (não contem null, não esta vazio)
select * from `dulcet-provider-454315-h0.Teste.Customers`
where street is not null;

# Is True e Is not True/ Is false
select * from `bigquery-public-data.chicago_crime.crime`
where domestic is true;

select * from `bigquery-public-data.chicago_crime.crime`
where domestic is not true;

select * from `bigquery-public-data.chicago_crime.crime`
where domestic is false;


